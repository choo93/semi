package semi.travelready.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.travelready.model.service.SeoulInformationService;

/**
 * Servlet implementation class SeoulInformationCommentDeleteServlet
 */
@WebServlet(name = "SeoulInformationCommentDelete", urlPatterns = { "/seoulInformationCommentDelete" })
public class SeoulInformationCommentDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SeoulInformationCommentDeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		int commentNo=Integer.parseInt(request.getParameter("commentNo"));
		
		int result=new SeoulInformationService().deleteComment(commentNo);
		
		if(result>0) {
			response.sendRedirect("/seoulInformationComment");
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
