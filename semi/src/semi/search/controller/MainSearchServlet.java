package semi.search.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.search.model.service.MainSearchService;
import semi.search.model.vo.SearchData;

/**
 * Servlet implementation class MainSearchServlet
 */
@WebServlet(name = "MainSearch", urlPatterns = { "/mainSearch" })
public class MainSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MainSearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int currentPage;
		if(request.getParameter("currentPage")==null)currentPage=1;
		else currentPage = Integer.parseInt(request.getParameter("currentPage"));
		SearchData sd = new MainSearchService().searchAll(currentPage);
		if(sd!=null) {
			RequestDispatcher view = request.getRequestDispatcher("/views/main/search.jsp");
			request.setAttribute("searchData", sd);
			view.forward(request, response);
		}else {
			response.sendRedirect("/views/login/error.html");
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
