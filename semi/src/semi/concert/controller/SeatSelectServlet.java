package semi.concert.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import semi.concert.model.service.ConcertService;
import semi.concert.model.vo.ConcertReserve;

@WebServlet(name = "SeatSelect", urlPatterns = { "/seatSelect" })
public class SeatSelectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SeatSelectServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession(false);

		if(session.getAttribute("user")!=null) {
			int indexNo = Integer.parseInt(request.getParameter("indexNo"));
			ConcertReserve cr = new ConcertReserve();
			cr.setConcertCode(request.getParameter("concertCode"));
			cr.setConcertPrice(Integer.parseInt(request.getParameter("price")));
			cr.setConcertReserveDate(request.getParameter("date"));
			cr.setConcertReserveTime(request.getParameter("time"));
			int people = Integer.parseInt(request.getParameter("people"));

			ArrayList<String> list = new ConcertService().loadSeat(cr);

			RequestDispatcher view = request.getRequestDispatcher("/views/concert/concertSeat.jsp?people="+people);
			request.setAttribute("reserve", cr);
			request.setAttribute("seat", list);
			view.forward(request, response);
		}else {
			response.sendRedirect("/wrongPath.html");
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
