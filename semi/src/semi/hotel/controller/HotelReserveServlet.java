package semi.hotel.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import semi.hotel.model.service.HotelService;
import semi.hotel.model.vo.HotelReserve;


import semi.hotel.model.service.HotelService;
import semi.hotel.model.vo.HotelReserve;

@WebServlet(name = "HotelReserve", urlPatterns = { "/hotelReserve" })
public class HotelReserveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public HotelReserveServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HotelReserve hr = new HotelReserve();
		
		HttpSession session = request.getSession(false);
		
		hr.setHotelCode(request.getParameter("hotelCode"));
		//hr.setUserNo(((Member)session.getAttribute("user")).getUserNo());
		hr.setUserNo(1);
		hr.setRoomNo(Integer.parseInt(request.getParameter("roomNo")));
		hr.setRoomCode(request.getParameter("roomCode"));
		hr.setReserveDate(request.getParameter("date"));
		hr.setPrice(Integer.parseInt(request.getParameter("price")));
		
		int result = new HotelService().addReserve(hr);
		
		RequestDispatcher view = request.getRequestDispatcher("/views/hotel/reserve.jsp");
		if(result>0) {
			request.setAttribute("reserve", "success");
		}else {
			request.setAttribute("reserve", "success");
		}
		view.forward(request, response);

		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
