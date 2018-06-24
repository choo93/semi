package semi.dobo.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import semi.dobo.model.service.DoboService;
import semi.dobo.model.vo.DoboReserve;
import semi.dobo.model.vo.DoboReserveResult;
import semi.login.model.vo.SeoulUser;

@WebServlet(name = "DoboReserve", urlPatterns = { "/doboReserve" })
public class DoboReserveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DoboReserveServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getParameter("utf-8");
		DoboReserve dr = new DoboReserve();
		HttpSession session = request.getSession(false);
		
		dr.setDoboCode(request.getParameter("doboCode"));
		if(session.getAttribute("user")!=null) {
			dr.setUserNo(((SeoulUser)session.getAttribute("user")).getUserNo());
		}else {
			dr.setUserNo(-1);
		}
		
		dr.setDate(request.getParameter("date"));
		dr.setTime(request.getParameter("time"));
		dr.setReserveName(request.getParameter("name"));
		dr.setGender(request.getParameter("gender"));
		dr.setNation(request.getParameter("nation"));
		dr.setPhone(request.getParameter("phone"));
		dr.setComment(request.getParameter("comment"));
		
		DoboReserveResult rr = new DoboService().addReserve(dr);
		
		RequestDispatcher view = request.getRequestDispatcher("/views/dobo/reserve.jsp");
		if(rr.getResult()>0) {
			request.setAttribute("reserve", "success");
			
			if(dr.getUserNo()==-1) {
				request.setAttribute("noUserReserveNo", rr.getNoUserReserveNo());
			}
			
		}else {
			request.setAttribute("reserve", "fail");
		}
		view.forward(request, response);
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
