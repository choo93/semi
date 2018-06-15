package semi.festival.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import semi.festival.model.service.FestivalService;
import semi.festival.model.vo.FestivalDetail;

/**
 * Servlet implementation class FestivalSelectServlet
 */
@WebServlet(name = "FestivalSelect", urlPatterns = { "/festivalSelect" })
public class FestivalSelectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FestivalSelectServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		int titleNo = Integer.parseInt(request.getParameter("titleNo"));
		
		FestivalDetail fd = new FestivalService().festivalSelect(titleNo);
		
		HttpSession session = request.getSession(false);
		if(fd!=null)
		{
			RequestDispatcher view = request.getRequestDispatcher("/views/festival/festival_info.jsp");
			request.setAttribute("festival", fd);
			view.forward(request, response);
		}else
		{
			
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
