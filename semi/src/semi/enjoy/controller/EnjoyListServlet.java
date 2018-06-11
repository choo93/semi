package semi.enjoy.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import semi.enjoy.model.service.EnjoyService;
import semi.enjoy.model.vo.EnjoyListData;
import semi.enjoy.model.vo.PageData;

/**
 * Servlet implementation class EnjoyListServlet
 */
@WebServlet(name = "EnjoyList", urlPatterns = { "/enjoyList" })
public class EnjoyListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EnjoyListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		request.setCharacterEncoding("utf-8");
		
		//▼페이징처리
		
		
		String search = "";
		if(request.getParameter("search")!=null)
		{
			search = request.getParameter("search");
		}
		else 
		{
			search = "";
		}
		
		int currentPage; 
		if(request.getParameter("currentPage")==null)
		{
			currentPage=1;
		}
		else 
		{
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		// 페이지값 셋팅
		
		// 비지니스 로직
		
		PageData pd = new EnjoyService().getListData(currentPage,search);
		
		
//		ArrayList<EnjoyListData> list  = new EnjoyService().getAllData();
		HttpSession session = request.getSession(false);
		// ★ 회원정보 섹션에대한 처리를 따로아직안했음.
		if(pd!=null) 
		{// 정보가 제대로 있을경우 처리
				RequestDispatcher view = request.getRequestDispatcher("/views/enjoy/border_List.jsp");
				request.setAttribute("pageData", pd);
				view.forward(request, response);
				
		}
		else 
		{
			// 리스트가 없을경우도있나근데..? 우선 데이터를 넣긴해야지..음..
			
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
