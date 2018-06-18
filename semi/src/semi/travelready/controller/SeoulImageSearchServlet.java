package semi.travelready.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.travelready.model.service.FaqService;
import semi.travelready.model.service.SeoulImageService;
import semi.travelready.model.vo.FaqPageData;
import semi.travelready.model.vo.SeoulImagePageData;

/**
 * Servlet implementation class SeoulImageSearchServlet
 */
@WebServlet(name = "SeoulImageSearch", urlPatterns = { "/seoulImageSearch" })
public class SeoulImageSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SeoulImageSearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	int currentPage;
		
		request.setCharacterEncoding("utf-8");
		String search=request.getParameter("search");
		
		
		if(request.getParameter("currentPage")==null)
		{
			currentPage=1;
		}
		else
		{
			currentPage=Integer.parseInt(request.getParameter("currentPage"));
		}
		
		SeoulImagePageData sipd=new	SeoulImageService().searchList(currentPage,search);
		
		
		if(sipd!=null)
		{
			RequestDispatcher view=request.getRequestDispatcher("/views/travelReady/SeoulImageSearch.jsp");
			request.setAttribute("SeoulImagePageData", sipd);
			request.setAttribute("search", search);
			view.forward(request, response);
		}
		else {
			RequestDispatcher view=request.getRequestDispatcher("/views/travelReady/SeoulImageSearchFail.jsp");
			request.setAttribute("search", search);
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
