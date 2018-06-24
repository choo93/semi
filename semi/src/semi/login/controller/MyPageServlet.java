package semi.login.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import semi.concert.model.vo.ConcertReserve;
import semi.dobo.model.vo.DoboReserve;
import semi.hotel.model.vo.HotelReserve;
import semi.login.model.service.UserService;
import semi.login.model.vo.SeoulUser;

/**
 * Servlet implementation class MyPageServlet
 */
@WebServlet(name = "MyPage", urlPatterns = { "/myPage" })
public class MyPageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyPageServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession(false);
		SeoulUser su = new UserService().myPage();
		
		int userNo = ((SeoulUser)session.getAttribute("user")).getUserNo();
		
		ArrayList<ConcertReserve> concertList = new UserService().loadConcertReserve(userNo);
		ArrayList<DoboReserve> doboList = new UserService().loadDoboReserve(userNo);
		ArrayList<HotelReserve> hotelList = new UserService().loadHotelReserve(userNo);
		
		if(su!=null) {
			RequestDispatcher view = request.getRequestDispatcher("/views/main/myPage.jsp");
			request.setAttribute("user", su);
			request.setAttribute("concert", concertList);
			request.setAttribute("dobo", doboList);
			request.setAttribute("hotel", hotelList);
			view.forward(request, response);
		}else {
			response.sendRedirect("/views/main/error.html");
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
