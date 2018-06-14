package semi.dobo.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.dobo.model.service.DoboService;
import semi.dobo.model.vo.DoboReserve;

@WebServlet(name = "DoboReserve", urlPatterns = { "/doboReserve" })
public class DoboReserveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DoboReserveServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getParameter("utf-8");
		DoboReserve dr = new DoboReserve();
		
		dr.setDoboCode(request.getParameter("doboCode"));
		dr.setDate(request.getParameter("date"));
		dr.setTime(request.getParameter("time"));
		dr.setReserveName(request.getParameter("name"));
		dr.setGender(request.getParameter("gender"));
		dr.setNation(request.getParameter("nation"));
		dr.setPhone(request.getParameter("phone"));
		dr.setComment(request.getParameter("comment"));
		
		int result = new DoboService().addReserve(dr);
		
		RequestDispatcher view = request.getRequestDispatcher("/views/dobo/reserve.jsp");
		if(result>0) {
			request.setAttribute("reserve", "success");
		}else {
			request.setAttribute("reserve", "fail");
		}
		view.forward(request, response);
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
