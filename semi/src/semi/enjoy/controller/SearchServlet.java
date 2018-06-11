package semi.enjoy.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.enjoy.model.service.EnjoyService;
import semi.enjoy.model.vo.PageData;

/**
 * Servlet implementation class SearchServlet
 */
@WebServlet(name = "Search", urlPatterns = { "/search" })
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		request.setCharacterEncoding("utf-8");
		
		String search = request.getParameter("search"); // 검색어
		
		// 페이징 처리를 하기위한 로직 .
		int currentPage;
		if(request.getParameter("currentPage")==null) currentPage=1;
		else currentPage = Integer.parseInt(request.getParameter("currentPage"));
		
		// 비지니스로직처리하기.
		
//		PageData pd = new EnjoyService().searchList(search,currentPage);
		
		//  
		/*RequestDispatcher view = request.getRequestDispatcher("/Views/Notice/noticeSearch.jsp");
		request.setAttribute("search", search);
		request.setAttribute("pageData", pd);
		view.forward(request, response);*/
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
