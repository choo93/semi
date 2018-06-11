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
import semi.travelready.model.vo.GuideBookDown;

/**
 * Servlet implementation class GuideBookDownServlet
 */
@WebServlet(name = "GuideBookDown", urlPatterns = { "/guideBookDown" })
public class GuideBookDownServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GuideBookDownServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<GuideBookDown> list=new GuideBookRequestService().guideBookDown();
		if(!list.isEmpty())
		{
		RequestDispatcher view=request.getRequestDispatcher("/views/travelReady/GuideBookMap.jsp");
		request.setAttribute("image", list);
		view.forward(request, response);
		}
		else
		{
			System.out.println("없자나");
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
