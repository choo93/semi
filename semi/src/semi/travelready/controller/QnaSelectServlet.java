package semi.travelready.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.travelready.model.service.QnaService;
import semi.travelready.model.vo.Answer;
import semi.travelready.model.vo.Qna;

/**
 * Servlet implementation class QnaSelectServlet
 */
@WebServlet(name = "QnaSelect", urlPatterns = { "/qnaSelect" })
public class QnaSelectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QnaSelectServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int questionNo=Integer.parseInt(request.getParameter("questionNo"));
		int hits=Integer.parseInt(request.getParameter("hits"));
		
		
		
		Qna q=new QnaService().qnaSelect(questionNo);
		Answer an=new QnaService().qnaComment(questionNo);
		
		int result = new QnaService().hitsUpdate(questionNo,hits);
		
		
		if(q!=null) {
			RequestDispatcher view=request.getRequestDispatcher("/views/travelReady/QnAselect.jsp");
			request.setAttribute("answer",an);
			request.setAttribute("qna", q);
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
