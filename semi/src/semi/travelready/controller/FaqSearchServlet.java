package semi.travelready.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.travelready.model.service.FaqService;
import semi.travelready.model.vo.FaqPageData;

/**
 * Servlet implementation class FaqSearchServlet
 */
@WebServlet(name = "FaqSearch", urlPatterns = { "/faqSearch" })
public class FaqSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FaqSearchServlet() {
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
		
		FaqPageData fpd=new FaqService().searchList(currentPage,search);
		
		
		if(fpd!=null)
		{
			RequestDispatcher view=request.getRequestDispatcher("/views/travelReady/FAQSearch.jsp");
			request.setAttribute("faqPageData", fpd);
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
