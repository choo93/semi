package semi.login.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.login.model.service.UserService;

/**
 * Servlet implementation class UserActiveServlet
 */
@WebServlet(name = "UserActive", urlPatterns = { "/userActive" })
public class UserActiveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserActiveServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userActive = request.getParameter("userActive");
		String userId = request.getParameter("userId");
		if(userActive.toUpperCase().equals("Y")) {
			userActive = "N";
		}else {
			userActive = "Y";
		}
		int result = new UserService().activation(userActive,userId);
		if(result>0) {
			response.sendRedirect("/allUser");
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
