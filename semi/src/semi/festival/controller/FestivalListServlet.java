package semi.festival.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import semi.festival.model.service.FestivalService;
import semi.festival.model.vo.FestivalPageData;

/**
 * Servlet implementation class FestivalListServlet
 */
@WebServlet(name = "FestivalList", urlPatterns = { "/festivalList" })
public class FestivalListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FestivalListServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		System.out.println("시작");
		
		// ▼페이징처리

		String search = "";
		if (request.getParameter("search") != null) {
			search = request.getParameter("search");
		} else {
			search = "";
		}

		int currentPage;
		if (request.getParameter("currentPage") == null) {
			currentPage = 1;
		} else {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		// 화면구성시 분류가져오기
		String season = "";
		if (request.getParameter("season") != null) {
			season = request.getParameter("season");

		} else {
			season = "";
		}
		System.out.println("비즈니스시작");
		// 페이지값 셋팅
		FestivalPageData fpd = new FestivalService().getListData(currentPage, search, season);
		// 비지니스 로직
		
		System.out.println("세션시작");
		HttpSession session = request.getSession(false);
		// ★ 회원정보 섹션에대한 처리를 따로아직안했음.
		if(fpd!=null) 
		{// 정보가 제대로 있을경우 처리
			System.out.println("보내기시작");
				RequestDispatcher view = request.getRequestDispatcher("/views/festival/festival_List.jsp");
				
				request.setAttribute("pageData", fpd);
				view.forward(request, response);
			
		}
		else 
		{
			
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
