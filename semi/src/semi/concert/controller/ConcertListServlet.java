package semi.concert.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.concert.model.service.ConcertService;
import semi.concert.model.vo.ConcertPageData;

@WebServlet(name = "ConcertList", urlPatterns = { "/concertList" })
public class ConcertListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ConcertListServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int currentPage; // 현재 페이지 값을 저장하는 변수
		if(request.getParameter("currentPage")==null) {
			currentPage = 1;
		}else {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
			//	즉, 첫 페이만 1로 세팅하고 그외 페이지라면 해당 페이지 값을 가져옴
		}
		
		ConcertPageData cpd = new ConcertService().getConcertList(currentPage);
		
		if(cpd!=null) {
			RequestDispatcher view = request.getRequestDispatcher("/views/concert/concertListTemplate.jsp");
			request.setAttribute("concertPageData", cpd);
			view.forward(request, response);
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
