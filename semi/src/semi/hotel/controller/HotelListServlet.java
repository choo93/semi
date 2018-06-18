package semi.hotel.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.hotel.model.service.HotelService;
import semi.hotel.model.vo.HotelPageData;

/**
 * Servlet implementation class HotelListServlet
 */
@WebServlet(name = "HotelList", urlPatterns = { "/hotelList" })
public class HotelListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HotelListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int currentPage; // 현재 페이지 값을 저장하는 변수
		if(request.getParameter("currentPage")==null)currentPage=1;
		else currentPage = Integer.parseInt(request.getParameter("currentPage"));
		// 즉, 첫페이지만 1로 셋팅하고 그외 페이지라면 해당 페이지 값을 가져옴
		
		HotelPageData hpd = new HotelService().getHotelInfo(currentPage);
		if(hpd!=null)
		{
			RequestDispatcher view = request.getRequestDispatcher("/views/hotel/hotelList.jsp");
			request.setAttribute("HotelPageData", hpd);
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
