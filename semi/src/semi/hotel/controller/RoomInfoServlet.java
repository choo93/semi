package semi.hotel.controller;

import java.io.IOException;
import java.util.ArrayList;

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
		int indexNum = Integer.parseInt(request.getParameter("indexNum"));
		int roomCode = Integer.parseInt(request.getParameter("roomCode"));

		
		
		ArrayList<RoomInfo> list = new HotelService().hotelRoomInfo(roomCode);
		
		
		if(!list.isEmpty()) {
			RequestDispatcher view = request.getRequestDispatcher("/views/hotel/hotelReserve.jsp");
			request.setAttribute("roomInfo", list);
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
