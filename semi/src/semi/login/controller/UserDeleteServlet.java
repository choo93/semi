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
		String userId = request.getParameter("userId");
		
		int result = new UserService().deleteUser(userId);

		if(result>0) {
			HttpSession session = request.getSession(false);
			if(session.getAttribute("user")!=null) {
				session.invalidate();
				response.sendRedirect("/index.jsp");
			}else {
				response.sendRedirect("/views/main/error.html");
			}		
		}else {
			response.sendRedirect("/views/main/error.html");
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
