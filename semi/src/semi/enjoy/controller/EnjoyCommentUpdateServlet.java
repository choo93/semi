package semi.enjoy.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.enjoy.model.service.EnjoyService;

/**
 * Servlet implementation class EnjoyCommentUpdateServlet
 */
@WebServlet(name = "EnjoyCommentUpdate", urlPatterns = { "/enjoyCommentUpdate" })
public class EnjoyCommentUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EnjoyCommentUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		int indexTitleNo = Integer.parseInt(request.getParameter("index_titleNo"));
		int commentNo = Integer.parseInt(request.getParameter("SEQ_REVIEW"));
		String commentTitle = request.getParameter("Index_Title");
		String comment = request.getParameter("User_Comment");
		
		int result = new EnjoyService().updateReview(commentTitle, comment, commentNo);
		if(result>0) {
			response.sendRedirect("/enjoySelect?IndexNo="+indexTitleNo);
		}else {
			response.sendRedirect("/views/enjoy/sojung.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
