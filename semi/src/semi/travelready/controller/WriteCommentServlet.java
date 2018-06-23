package semi.travelready.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.travelready.model.service.SeoulInformationService;
import semi.travelready.model.vo.SeoulInformationCommentPageData;

/**
 * Servlet implementation class WriteCommentServlet
 */
@WebServlet(name = "WriteComment", urlPatterns = { "/writeComment" })
public class WriteCommentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public WriteCommentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String content=request.getParameter("content");
		String userName=request.getParameter("userName");
		String userId=request.getParameter("userId");
		
	int result=new SeoulInformationService().commentInsert(content,userName,userId);
	
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
