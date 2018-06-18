package semi.festival.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.festival.model.service.FestivalService;
import semi.festival.model.vo.FestivalComment;

/**
 * Servlet implementation class FestivalCommentServlet
 */
@WebServlet(name = "FestivalComment", urlPatterns = { "/festivalComment" })
public class FestivalCommentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FestivalCommentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		FestivalComment fc = new FestivalComment();
		
		fc.setUserId(request.getParameter("userId"));
		fc.setTitleNo(Integer.parseInt(request.getParameter("titleNo")));
		fc.setTitle(request.getParameter("title"));
		fc.setUserComment(request.getParameter("comment"));
		
		int result = new FestivalService().insertComment(fc);
		
		if(result>0)
		{
			response.sendRedirect("/festivalSelect?titleNo="+fc.getTitleNo());
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
