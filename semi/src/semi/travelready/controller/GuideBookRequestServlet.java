package semi.travelready.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.travelready.model.service.GuideBookRequestService;
import semi.travelready.model.vo.GuideBookRequest;

/**
 * Servlet implementation class GuideBookRequestServlet
 */
@WebServlet(name = "GuideBookRequest", urlPatterns = { "/guideBookRequest" })
public class GuideBookRequestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GuideBookRequestServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String guideBookNum=request.getParameter("guidebooknum");
		String mapNum=request.getParameter("mapnum");
		System.out.println(guideBookNum);
		System.out.println(mapNum);
		if(guideBookNum.equals("선택")) {
			guideBookNum="0권";
		}
		
		if(mapNum.equals("선택")) {
			mapNum="0권";
		}
		
		guideBookNum=guideBookNum.charAt(0)+"";
		mapNum=mapNum.charAt(0)+"";
		
		GuideBookRequest gbr=new GuideBookRequest();
		
		gbr.setName(request.getParameter("name"));
		gbr.setEmail(request.getParameter("email"));
		gbr.setPhone("010-"+request.getParameter("phone")+"-"+request.getParameter("phone2"));
		gbr.setAddr(request.getParameter("addr")+request.getParameter("addr2"));
		gbr.setGuideBookNum(Integer.parseInt(guideBookNum));
		gbr.setMapNum(Integer.parseInt(mapNum));
		int result=new GuideBookRequestService().infoInsert(gbr);
		
		if(result>0)
		{
			RequestDispatcher view=request.getRequestDispatcher("/views/travelReady/GuideBookRequestComplete.jsp");
			request.setAttribute("GuideBookRequest", gbr);
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
