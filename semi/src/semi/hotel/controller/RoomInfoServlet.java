package semi.hotel.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.hotel.model.service.HotelService;
import semi.hotel.model.vo.RoomInfo;

/**
 * Servlet implementation class RoomInfoServlet
 */
@WebServlet(name = "RoomInfo", urlPatterns = { "/roomInfo" })
public class RoomInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RoomInfoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RoomInfo ri = new HotelService().hotelRoomInfo();
		
		if(ri!=null) {
			RequestDispatcher view = request.getRequestDispatcher("/views/hotel/hotelReserve.jsp");
			request.setAttribute("roomInfo", ri);
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
