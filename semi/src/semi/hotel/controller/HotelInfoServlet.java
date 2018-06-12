package semi.hotel.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.concert.model.service.ConcertService;
import semi.concert.model.vo.ConcertInfo;
import semi.hotel.model.service.HotelService;
import semi.hotel.model.vo.HotelInfo;

/**
 * Servlet implementation class HotelInfoServlet
 */
@WebServlet(name = "HotelInfo", urlPatterns = { "/hotelInfo" })
public class HotelInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HotelInfoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int indexNum = Integer.parseInt(request.getParameter("indexNum"));
		
		HotelInfo hi = new HotelService().selectAllInfo(1);

		if(hi!=null) {
			RequestDispatcher view = request.getRequestDispatcher("/views/hotel/hotelInfo.jsp");
			request.setAttribute("hotelInfo", hi);
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
