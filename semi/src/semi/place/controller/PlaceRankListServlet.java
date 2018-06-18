package semi.place.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import semi.place.model.service.PlaceService;
import semi.place.model.vo.PlacePageData;
import semi.place.model.vo.RankListData;

/**
 * Servlet implementation class PlaceRankListServlet
 */
@WebServlet(name = "PlaceRankList", urlPatterns = { "/placeRankList" })
public class PlaceRankListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public PlaceRankListServlet() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

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
		String type = "";
		if (request.getParameter("type") != null) {
			type = request.getParameter("type");

		} else {
			type = "";
		}

		// 페이지값 셋팅
		PlacePageData pd = new PlaceService().getListData(currentPage, search, type);
		// 비지니스 로직
		
		
		HttpSession session = request.getSession(false);
		// ★ 회원정보 섹션에대한 처리를 따로아직안했음.
		if(pd!=null) 
		{// 정보가 제대로 있을경우 처리
				RequestDispatcher view = request.getRequestDispatcher("/views/placerank/place_List.jsp");
				
				request.setAttribute("pageData", pd);
				view.forward(request, response);
			
		}
		else 
		{
			
		}
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
