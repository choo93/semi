package semi.enjoy.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.enjoy.model.service.EnjoyService;
import semi.enjoy.model.vo.CommentData;
import semi.enjoy.model.vo.EnjoyComment;
import semi.enjoy.model.vo.EnjoyDetailData1;
import semi.enjoy.model.vo.EnjoyElementData;
import semi.enjoy.model.vo.EnjoyListData;
import semi.enjoy.model.vo.PageData;


/**
 * Servlet implementation class EnjoySelectServlet
 */
@WebServlet(name = "EnjoySelect", urlPatterns = { "/enjoySelect" })
public class EnjoySelectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EnjoySelectServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("utf-8");
		int SEQ_Index_TitleNo = Integer.parseInt(request.getParameter("IndexNo"));
		
		
		//▼ 기본 내용을 가져오는 로직
		EnjoyListData ELD = new EnjoyService().getOneData(SEQ_Index_TitleNo);				
		// 세부사항을 가져오는 로직				
		EnjoyDetailData1 edd1 = new EnjoyService().getOneDetailData(SEQ_Index_TitleNo);
		
		
		// 댓글 을 가져오는 로직
//		ArrayList<EnjoyComment> list = new EnjoyService().noticeComment(SEQ_Index_TitleNo);
		
		// 댓글을 페이징처리해야하는것.
		
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

				//페이징처리한 대상가져오기
				CommentData cd = new EnjoyService().getListCommentData(currentPage,search,SEQ_Index_TitleNo);
				
				
//				System.out.println(cd.getPageNavi());
				
				
		
		////////////
		EnjoyElementData EED = new EnjoyElementData(ELD,edd1,cd);
		
		
		// 기본정보 ELD, 세부정보 edd1

		
		
		
		
		
		if(ELD!=null&&edd1!=null)
		{
		
			RequestDispatcher view =  request.getRequestDispatcher("/views/enjoy/border_Element.jsp");
				request.setAttribute("EED", EED);
//				request.setAttribute("comment", list);
				view.forward(request, response);
		}
		else 
		{
//			response.sendRedirect("/Views/Notice/Error.html");
			
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
