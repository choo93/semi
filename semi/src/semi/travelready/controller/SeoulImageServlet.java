package semi.travelready.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.travelready.model.service.QnaService;
import semi.travelready.model.service.SeoulImageService;
import semi.travelready.model.vo.QnaPageData;
import semi.travelready.model.vo.SeoulImagePageData;

/**
 * Servlet implementation class SeoulImageServlet
 */
@WebServlet(name = "SeoulImage", urlPatterns = { "/seoulImage" })
public class SeoulImageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SeoulImageServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int currentPage;
		
		if(request.getParameter("currentPage")==null)
		{
			currentPage=1;
		}
		else
		{
			currentPage=Integer.parseInt(request.getParameter("currentPage"));
		}
		
		
		SeoulImagePageData sipd=new SeoulImageService().imageAll(currentPage); 
		
		if(sipd!=null)
		{
			RequestDispatcher view=request.getRequestDispatcher("/views/travelReady/seoulImage.jsp");
			request.setAttribute("SeoulImagePageData", sipd);
			view.forward(request, response);
			
		}
		else {
			response.sendRedirect("/views/travelReady/SeoulImageFail.jsp");
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
