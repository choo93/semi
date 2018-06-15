package semi.travelready.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.travelready.model.service.QnaService;

/**
 * Servlet implementation class AnswerWriteServlet
 */
@WebServlet(name = "AnswerWrite", urlPatterns = { "/answerWrite" })
public class AnswerWriteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AnswerWriteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String answer=request.getParameter("answer");
		int questionNo=Integer.parseInt(request.getParameter("questionNo"));
		
		
		int result=new QnaService().answerWrite(answer,questionNo);
		
	
			int result2=new QnaService().qnaChkUpdate(questionNo);
			
		
		
		if(result>0 && result2>0) {
			response.sendRedirect("/qna");
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
