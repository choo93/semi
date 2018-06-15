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
 * Servlet implementation class QnaCategoryServlet
 */
@WebServlet(name = "QnaCategory", urlPatterns = { "/qnaCategory" })
public class QnaCategoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QnaCategoryServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String search=request.getParameter("search");
		int currentPage;
		if(request.getParameter("currentPage")==null)
		{
			currentPage=1;
		}
		else
		{
			currentPage=Integer.parseInt(request.getParameter("currentPage"));
		}
		
		QnaPageData qpd=new QnaService().searchList(currentPage,search);
		
		
		if(qpd!=null)
		{
			RequestDispatcher view=request.getRequestDispatcher("/views/travelReady/QnACategory.jsp");
			request.setAttribute("qnaPageData", qpd);
			request.setAttribute("search", search);
			view.forward(request, response);
		}
		else
		{
			response.sendRedirect("/views/travelReady/QnaFail.jsp");
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
