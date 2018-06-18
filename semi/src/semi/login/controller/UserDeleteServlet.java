package semi.login.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import semi.login.model.service.UserService;
import semi.login.model.vo.SeoulUser;

/**
 * Servlet implementation class UserDeleteServlet
 */
@WebServlet(name = "UserDelete", urlPatterns = { "/userDelete" })
public class UserDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserDeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		String userId = ((SeoulUser)session.getAttribute("user")).getUserId();
		String userPwd = ((SeoulUser)session.getAttribute("user")).getUserPwd();
		System.out.println(userPwd);
		System.out.println(userId);
		int result = new UserService().deleteUser(userId,userPwd);
		if(result>0) {
			session.invalidate();
			response.sendRedirect("/views/login/deleteSuccess.jsp");
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
