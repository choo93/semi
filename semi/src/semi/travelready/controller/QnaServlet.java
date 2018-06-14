package semi.travelready.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.travelready.model.service.FaqService;
import semi.travelready.model.service.QnaService;
import semi.travelready.model.vo.FaqPageData;
import semi.travelready.model.vo.QnaPageData;

/**
 * Servlet implementation class QnaServlet
 */
@WebServlet(name = "Qna", urlPatterns = { "/qna" })
public class QnaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QnaServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
int currentPage;
		
		if(request.getParameter("currentPage")==null)
		{
			currentPage=1;
		}
		else
		{
			currentPage=Integer.parseInt(request.getParameter("currentPage"));
		}
		
		QnaPageData qpd=new QnaService().QnaAll(currentPage);
		
		
		if(qpd!=null)
		{
			RequestDispatcher view=request.getRequestDispatcher("/views/travelReady/QnA.jsp");
			request.setAttribute("qnaPageData", qpd);
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
