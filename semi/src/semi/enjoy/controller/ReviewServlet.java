package semi.enjoy.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import semi.enjoy.model.service.EnjoyService;

/**
 * Servlet implementation class ReviewServlet
 */
@WebServlet(name = "Review", urlPatterns = { "/review" })
public class ReviewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ReviewServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession(false);

		// System.out.println("리뷰 등록 하자하자");

		String reviewTitle = request.getParameter("Index_Title");
		String reviewContents = request.getParameter("User_Comment");
		int indexNo = Integer.parseInt(request.getParameter("index_titleNo"));
		String userID = "";
		if (request.getParameter("index_userID") != null) {
			userID = request.getParameter("index_userID");
		}
		;
		// String userId = ((Member)session.getAttribute("user")).getUserId(); 유저 아이디
		// 갖고오기

		// System.out.println(reviewTitle);
		// System.out.println(reviewContents);
		// if(session.getAttribute("user")!=null) {
		int result = new EnjoyService().insertReview(reviewTitle, reviewContents, indexNo,userID);

		if (result > 0) // 리뷰 작성 성공
		{
			response.sendRedirect("/enjoySelect?IndexNo=" + indexNo);

		} else { // 리뷰 작성 실패
			response.sendRedirect("/views/enjoy/sojung.jsp");
		}
	}
	// }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
