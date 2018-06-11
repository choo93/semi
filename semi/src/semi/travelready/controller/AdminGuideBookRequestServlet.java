package semi.travelready.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.travelready.model.service.GuideBookRequestService;
import semi.travelready.model.vo.GuideBookRequest;

/**
 * Servlet implementation class AdminGuideBookRequestServlet
 */
@WebServlet(name = "AdminGuideBookRequest", urlPatterns = { "/adminGuideBookRequest" })
public class AdminGuideBookRequestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminGuideBookRequestServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ArrayList<GuideBookRequest> list=new GuideBookRequestService().RequestList();
		
		RequestDispatcher view=request.getRequestDispatcher("/views/travelReady/adminGuideBookRequest.jsp");
		request.setAttribute("guidebookRequest", list);
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
