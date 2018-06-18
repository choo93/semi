package semi.travelready.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.travelready.model.service.SeoulImageService;
import semi.travelready.model.vo.SeoulImagePageData;

/**
 * Servlet implementation class SeoulImageBodyServlet
 */
@WebServlet(name = "SeoulImageBody", urlPatterns = { "/seoulImageBody" })
public class SeoulImageBodyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SeoulImageBodyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int currentPage;
		
		
		
		if(request.getParameter("id")==null)
		{
			currentPage=1;
		}
		else
		{
			currentPage=Integer.parseInt(request.getParameter("id"));
		}
		
		SeoulImagePageData sipd=new SeoulImageService().imageAll(currentPage); 

		if(sipd!=null)
		{
			RequestDispatcher view=request.getRequestDispatcher("/views/travelReady/SeoulImageBody.jsp");
			request.setAttribute("SeoulImagePageData", sipd);
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
