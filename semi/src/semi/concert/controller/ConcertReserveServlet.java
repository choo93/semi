package semi.concert.controller;

import java.io.IOException;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import semi.concert.model.service.ConcertService;
import semi.concert.model.vo.ConcertReserve;
import semi.login.model.vo.SeoulUser;

@WebServlet(name = "ConcertReserve", urlPatterns = { "/concertReserve" })
public class ConcertReserveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ConcertReserveServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession(false);

		if(session.getAttribute("user")!=null) {
			int people = Integer.parseInt(request.getParameter("people"));
			
			int result=0;
			
			for(int i=0;i<people;i++) {
				ConcertReserve cr = new ConcertReserve();
				cr.setConcertCode(request.getParameter("concertCode"));
				cr.setUserNo(((SeoulUser)session.getAttribute("user")).getUserNo());
				cr.setConcertPrice(Integer.parseInt(request.getParameter("price")));
				cr.setConcertReserveDate(request.getParameter("date"));
				cr.setConcertReserveTime(request.getParameter("time"));
				cr.setSeatNo(Integer.parseInt(request.getParameter("seatNo"+i)));
				
				result = new ConcertService().addReserve(cr);
			}
			

			RequestDispatcher view = request.getRequestDispatcher("/views/concert/reserve.jsp");
			if(result>0) {
				request.setAttribute("reserve", "success");
			}else {
				request.setAttribute("reserve", "fail");
			}
			view.forward(request, response);
		}else {
			response.sendRedirect("/wrongPath.html");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
