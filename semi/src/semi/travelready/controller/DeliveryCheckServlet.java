package semi.travelready.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.travelready.model.service.GuideBookRequestService;

/**
 * Servlet implementation class DeliveryCheckServlet
 */
@WebServlet(name = "DeliveryCheck", urlPatterns = { "/deliveryCheck" })
public class DeliveryCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeliveryCheckServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String deliveryCheck=request.getParameter("deliveryCheck");
		int orderNo=Integer.parseInt(request.getParameter("orderNo"));
		
		
		if(deliveryCheck.equals("배송전")) {
			deliveryCheck="배송완료";
		}
		else {
			deliveryCheck="배송전";
		}
		
		int result=new GuideBookRequestService().deliveryCheck(deliveryCheck,orderNo);
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
