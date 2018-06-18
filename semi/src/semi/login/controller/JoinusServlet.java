package semi.login.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.login.model.service.UserService;
import semi.login.model.vo.SeoulUser;

/**
 * Servlet implementation class JoinusServlet
 */
@WebServlet(name = "Joinus", urlPatterns = { "/joinus" })
public class JoinusServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JoinusServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		SeoulUser su = new SeoulUser();
		su.setUserId(request.getParameter("userId"));
		su.setUserPwd(request.getParameter("userPwd"));
		su.setUserName(request.getParameter("userName"));
		su.setUserAddr(request.getParameter("userAddr"));
		su.setUserEmail(request.getParameter("userEmail"));
		su.setUserPhone(request.getParameter("userPhone"));
		su.setUserActive("Y");
		int result = new UserService().insertUser(su);
		if(result>0) {
			response.sendRedirect("/views/login/joinusSuccess.jsp");
		}else {
			response.sendRedirect("/views/login/error.html");
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
