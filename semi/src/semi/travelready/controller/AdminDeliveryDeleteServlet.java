package semi.travelready.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.travelready.model.service.GuideBookRequestService;

/**
 * Servlet implementation class AdminDeliveryDeleteServlet
 */
@WebServlet(name = "AdminDeliveryDelete", urlPatterns = { "/adminDeliveryDelete" })
public class AdminDeliveryDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminDeliveryDeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			request.setCharacterEncoding("utf-8");
			
			String []arrayOrderNo=request.getParameterValues("orderNo");
			
		
			
			String []orderNo;
			orderNo=arrayOrderNo[0].split(",");
			
			int result=new GuideBookRequestService().requestDelete(orderNo);
			
			if(result>0) {
				response.sendRedirect("/adminGuideBookRequest");
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
