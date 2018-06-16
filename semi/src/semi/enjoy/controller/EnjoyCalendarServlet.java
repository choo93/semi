package semi.enjoy.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.enjoy.model.service.EnjoyService;
import semi.enjoy.model.vo.EnjoyFestival;

/**
 * Servlet implementation class EnjoyCalendarServlet
 */
@WebServlet(name = "EnjoyCalendar", urlPatterns = { "/enjoyCalendar" })
public class EnjoyCalendarServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EnjoyCalendarServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	//	response.getWriter().append("Served at: ").append(request.getContextPath());
		
		request.setCharacterEncoding("utf-8");
		
		ArrayList<EnjoyFestival> list = new EnjoyService().AllFestivalData();
		
		if(list.isEmpty()) {
			System.out.println("오류");
		}
		else {
			RequestDispatcher view =  request.getRequestDispatcher("/views/enjoy/enjoyCalendar.jsp");
			request.setAttribute("list", list);
//			request.setAttribute("comment", list);
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
