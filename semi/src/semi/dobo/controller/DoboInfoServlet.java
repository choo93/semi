package semi.dobo.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.concert.model.service.ConcertService;
import semi.dobo.model.service.DoboService;
import semi.dobo.model.vo.DoboInfo;
import semi.enjoy.model.vo.CommentData;

@WebServlet(name = "DoboInfo", urlPatterns = { "/doboInfo" })
public class DoboInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DoboInfoServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int indexNo = Integer.parseInt(request.getParameter("indexNo"));
		
		DoboInfo di = new DoboService().selectInfo(indexNo);
		
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
		CommentData cd = new DoboService().getListCommentData(currentPage,search,indexNo);
		
		if(di!=null) {
			RequestDispatcher view = request.getRequestDispatcher("/views/dobo/doboInfoTemplate.jsp");
			request.setAttribute("doboInfo", di);
			request.setAttribute("commentData", cd);
			view.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
