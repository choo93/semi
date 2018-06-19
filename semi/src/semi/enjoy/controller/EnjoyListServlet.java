package semi.enjoy.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import semi.enjoy.model.service.EnjoyService;
import semi.enjoy.model.vo.PageData;
import semi.enjoy.model.vo.PageDataRefer;

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
		// 화면구성시 분류가져오기
		String type = "";
		if(request.getParameter("type")!=null)
		{
			type = request.getParameter("type");

		}
		else
		{
			type="";
		}
		
		
		// 정렬하기
		
		
		String option ="";
		if(request.getParameter("option")!=null)
		{
			option = request.getParameter("option");
		}
		else {
			option ="";
		}
		
		
		
		
		
		
		
		
		
		// 페이지값 셋팅
		
		// 비지니스 로직
		PageData pd = null;
		PageDataRefer pd2 = null;
		if(!type.equals("type1")) { // 추천코스가 아닌녀석들
		 pd = new EnjoyService().getListData(currentPage,search,type,option);
		}
		else { // 분류대상이 초기에 추천코스인녀석들 (type1)
		 pd2 = new EnjoyService().getListData2(currentPage,search,type,option);
		}
		
//		ArrayList<EnjoyListData> list  = new EnjoyService().getAllData();
		HttpSession session = request.getSession(false);
		// ★ 회원정보 섹션에대한 처리를 따로아직안했음.
		if(pd!=null) 
		{// 정보가 제대로 있을경우 처리
				RequestDispatcher view = request.getRequestDispatcher("/views/enjoy/border_List.jsp");
				
				request.setAttribute("pageData", pd);
				request.setAttribute("type", type);
				view.forward(request, response);
			
		}
		else if(pd==null&& pd2!=null)
		{
			RequestDispatcher view = request.getRequestDispatcher("/views/enjoy/border_List.jsp");
			
			request.setAttribute("pageData2", pd2);
			request.setAttribute("type", type);
			view.forward(request, response);
			
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
