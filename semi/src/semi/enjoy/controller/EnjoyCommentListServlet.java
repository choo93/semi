/*package semi.enjoy.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import semi.enjoy.model.service.EnjoyService;
import semi.enjoy.model.vo.CommentData;

*//**
 * Servlet implementation class EnjoyCommentListServlet
 *//*
@WebServlet(name = "EnjoyCommentList", urlPatterns = { "/enjoyCommentList" })
public class EnjoyCommentListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    *//**
     * @see HttpServlet#HttpServlet()
     *//*
    public EnjoyCommentListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	*//**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 *//*
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
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
		// 인덱스 넘버 가져오기
		int SEQ_Index_TitleNo = 0;
		if(Integer.parseInt(request.getParameter("IndexNo"))!=0)
		{
			SEQ_Index_TitleNo = Integer.parseInt(request.getParameter("IndexNo"));
		}
		
			
		
		
		// 페이지값 셋팅
		
		// 비지니스 로직
		
		CommentData cd = new EnjoyService().getListCommentData(currentPage,search,SEQ_Index_TitleNo);
		
		
//		ArrayList<EnjoyListData> list  = new EnjoyService().getAllData();
		HttpSession session = request.getSession(false);
		// ★ 회원정보 섹션에대한 처리를 따로아직안했음.
		if(cd!=null) 
		{// 정보가 제대로 있을경우 처리
				RequestDispatcher view = request.getRequestDispatcher("/views/enjoy/border_List.jsp");
				
				request.setAttribute("CommentData", cd);
				view.forward(request, response);
			
		}
		else 
		{
			// 리스트가 없을경우도있나근데..? 우선 데이터를 넣긴해야지..음..
			
		}
		
	}


	*//**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 *//*
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
*/