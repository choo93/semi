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

@WebServlet(name = "NoUserDobo", urlPatterns = { "/noUserDobo" })
public class NoUserDoboServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public NoUserDoboServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int reserveNo = Integer.parseInt(request.getParameter("reserveNo"));
		
		reserveNo = reserveNo*(-1);
		
		DoboReserve dr = new DoboService().selectNoUserReserve(reserveNo);
		RequestDispatcher view = request.getRequestDispatcher("/views/dobo/noUserReserve.jsp");
		request.setAttribute("reserveInfo", dr);
		view.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
