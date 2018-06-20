package semi.travelready.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.travelready.model.service.SeoulInformationService;

/**
 * Servlet implementation class SeoulInformationCommentUpDownServlet
 */
@WebServlet(name = "SeoulInformationCommentUpDown", urlPatterns = { "/seoulInformationCommentUpDown" })
public class SeoulInformationCommentUpDownServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SeoulInformationCommentUpDownServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String upDown=request.getParameter("UpDown");
		int commentNo=Integer.parseInt(request.getParameter("commentNo"));
		
		
		if(upDown.equals("up")) {
			int up=Integer.parseInt(request.getParameter("Up"));
			int result=new SeoulInformationService().commentUp(commentNo,up);
			if(result>0) {
				response.sendRedirect("/seoulInformationComment");
			}
		}
		else
		{
			int down=Integer.parseInt(request.getParameter("Down"));
			int result=new SeoulInformationService().commentDown(commentNo,down);
			if(result>0) {
				response.sendRedirect("/seoulInformationComment");
			}
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
