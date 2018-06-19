package semi.place.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import semi.place.model.service.PlaceService;
import semi.place.model.vo.PlaceRank;
import semi.place.model.vo.PlaceRankComment;

/**
 * Servlet implementation class PlaceSelectServlet
 */
@WebServlet(name = "PlaceSelect", urlPatterns = { "/placeSelect" })
public class PlaceSelectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PlaceSelectServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		int titleNo = Integer.parseInt(request.getParameter("titleNo"));
		
		PlaceRank pr = new PlaceService().placeSelect(titleNo);
		ArrayList<PlaceRankComment> list = new PlaceService().selectComment(titleNo);
		HttpSession session = request.getSession(false);
		if(pr!=null)
		{
			RequestDispatcher view = request.getRequestDispatcher("/views/placerank/place_Info.jsp");
			request.setAttribute("place", pr);
			request.setAttribute("comment", list);
			view.forward(request, response);
		}else
		{
			
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
