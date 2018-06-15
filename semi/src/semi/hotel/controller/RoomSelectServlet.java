package semi.hotel.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import semi.hotel.model.service.HotelService;
import semi.hotel.model.vo.HotelReserve;

@WebServlet(name = "RoomSelect", urlPatterns = { "/roomSelect" })
public class RoomSelectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public RoomSelectServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getParameter("utf-8");
		HttpSession session = request.getSession(false);
		
		HotelReserve hr = new HotelReserve();
		
		hr.setHotelCode(request.getParameter("hotelCode"));
		hr.setRoomNo(Integer.parseInt(request.getParameter("roomNo")));
		hr.setRoomCode(request.getParameter("roomCode"));
		hr.setReserveDate(request.getParameter("date"));
		hr.setPrice(Integer.parseInt(request.getParameter("price")));
		
		ArrayList<String> list = new HotelService().loadRoom(hr);
		
		RequestDispatcher view = request.getRequestDispatcher("/views/hotel/roomSelect.jsp");
		request.setAttribute("reserve", hr);
		request.setAttribute("room", list);
		view.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
