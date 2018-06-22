package semi.concert.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.concert.model.service.ConcertService;
import semi.concert.model.vo.ConcertInfo;
import semi.enjoy.model.service.EnjoyService;
import semi.enjoy.model.vo.CommentData;

@WebServlet(name = "ConcertInfo", urlPatterns = { "/concertInfo" })
public class ConcertInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ConcertInfoServlet() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int indexNo = Integer.parseInt(request.getParameter("indexNo"));
		
		ConcertInfo ci = new ConcertService().selectAllInfo(indexNo);
		
		
		
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
		CommentData cd = new ConcertService().getListCommentData(currentPage,indexNo);

		if(ci!=null) {
			RequestDispatcher view = request.getRequestDispatcher("/views/concert/concertInfoTemplate.jsp");
			request.setAttribute("concertInfo", ci);
			request.setAttribute("commentData", cd);
			view.forward(request, response);
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
