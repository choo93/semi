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

@WebServlet(name = "ConcertReserve", urlPatterns = { "/concertReserve" })
public class ConcertReserveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ConcertReserveServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		/*int indexNo = Integer.parseInt(request.getParameter("indexNo"));
		DateFormat formatter1 = new SimpleDateFormat("yyyy/MM/dd");
		DateFormat formatter2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
		System.out.println(request.getParameter("date"));
		System.out.println(request.getParameter("time"));
		Date date=null;
		Timestamp time=null;
		try {
			date = formatter1.parse(request.getParameter("date"));
			time = (Timestamp)formatter2.parse(request.getParameter("time"));
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		System.out.println(date);
		System.out.println(time);*/
		//int indexNo = Integer.parseInt(request.getParameter("indexNo"));
		ConcertReserve cr = new ConcertReserve();
		cr.setConcertCode(request.getParameter("concertCode"));
		HttpSession session = request.getSession(false);
		//cr.setUserNo(((Member)session.getAttribute("user")).getUserNo());
		cr.setUserNo("1");
		cr.setConcertPrice(Integer.parseInt(request.getParameter("price")));
		cr.setConcertReserveDate(request.getParameter("date"));
		cr.setConcertReserveTime(request.getParameter("time"));
		cr.setSeatNo(Integer.parseInt(request.getParameter("seatNo")));
		
		int result = new ConcertService().addReserve(cr);
		
		RequestDispatcher view = request.getRequestDispatcher("/views/concert/reserve.jsp");
		if(result>0) {
			request.setAttribute("reserve", "success");
		}else {
			request.setAttribute("reserve", "fail");
		}
		view.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
