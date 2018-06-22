package semi.concert.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import semi.enjoy.model.service.EnjoyService;
import semi.login.model.vo.SeoulUser;

@WebServlet(name = "CommentAdd", urlPatterns = { "/commentAdd" })
public class CommentAddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public CommentAddServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession(false);

		if(session.getAttribute("user")!=null) {
			String reviewTitle = request.getParameter("Index_Title");
			String reviewContents = request.getParameter("User_Comment");
			int indexNo = Integer.parseInt(request.getParameter("index_titleNo"));
			String userId = ((SeoulUser)session.getAttribute("user")).getUserId();
			
			int result = new EnjoyService().insertReview(reviewTitle, reviewContents,indexNo,userId);
			String type = request.getParameter("type");

			if(result>0) //리뷰 작성 성공
			{
				if(type.equals("concert")) {
					response.sendRedirect("/concertInfo?indexNo="+indexNo);
				}else if(type.equals("dobo")) {
					response.sendRedirect("/doboInfo?indexNo="+indexNo);
				}

			}else { //리뷰 작성 실패
				response.sendRedirect("/concertList");
			}
		}else {		// 권한이 없을 때
			response.sendRedirect("/error/wrongPath.html");
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
