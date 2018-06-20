package semi.travelready.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.travelready.model.service.SeoulInformationService;
import semi.travelready.model.vo.CommentComment;
import semi.travelready.model.vo.SeoulInformationCommentPageData;

/**
 * Servlet implementation class SeoulImageCommentArrayServlet
 */
@WebServlet(name = "SeoulImageCommentArray", urlPatterns = { "/seoulImageCommentArray" })
public class SeoulImageCommentArrayServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SeoulImageCommentArrayServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String upDown=request.getParameter("upDown");
		System.out.println(upDown);
		int currentPage;
		
		if(request.getParameter("currentPage")==null)
		{
			currentPage=1;
		}
		else
		{
			currentPage=Integer.parseInt(request.getParameter("currentPage"));
		}
		
		
		SeoulInformationCommentPageData sicpd=new SeoulInformationService().commentArray(currentPage,upDown);
		ArrayList<CommentComment> list=new SeoulInformationService().commentCommentAll();
		if(sicpd!=null)
		{
			RequestDispatcher view=request.getRequestDispatcher("/views/travelReady/Seoulvisit.jsp");
			request.setAttribute("SeoulInformationCommentPageData", sicpd);
			request.setAttribute("CommentComment", list);
			view.forward(request, response);
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
