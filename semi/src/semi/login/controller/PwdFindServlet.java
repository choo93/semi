package semi.login.controller;

import java.io.IOException;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.login.model.service.UserService;
import semi.login.model.vo.SeoulUser;

/**
 * Servlet implementation class PwdFindServlet
 */
@WebServlet(name = "PwdFind", urlPatterns = { "/pwdFind" })
public class PwdFindServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PwdFindServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String userId = request.getParameter("userId");
		String userName = request.getParameter("userName");
		String userEmail = request.getParameter("userEmail");
		
		SeoulUser su = new UserService().pwdFind(userId,userName,userEmail);
		
if(su!=null) {		
		String mail_from = "admin<seoulaim4@gmail.com>";
		String mail_to = su.getUserName() + "<" + su.getUserEmail() + ">";
		String title = "설레임 사이트에 문의하신 내용입니다.";
		String contents = su.getUserName()+"님이 문의하신 아이디 "+su.getUserId()+"의 비밀번호는 "+su.getUserPwd()+"입니다.";
		
		mail_from = new String(mail_from.getBytes("utf-8"),"utf-8");
		mail_to = new String(mail_to.getBytes("utf-8"),"utf-8");
		
		Properties props = new Properties();
		props.put("mail.transport.protocol", "smtp");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "465");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.socketFactory.port", "465");
        props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        props.put("mail.smtp.socketFactory.fallback", "false");
        props.put("mail.smtp.auth", "true");

        Authenticator auth = new SMTPAuthenticator();

        Session sess = Session.getDefaultInstance(props,auth);
        
        MimeMessage msg = new MimeMessage(sess);
        
        try {
			msg.setFrom(new InternetAddress(mail_from));
			msg.setRecipient(Message.RecipientType.TO, new InternetAddress(mail_to));
	        msg.setSubject(title, "UTF-8");
	        msg.setContent(contents, "text/html; charset=UTF-8");
	        msg.setHeader("Content-type", "text/html; charset=UTF-8");
	        Transport.send(msg);
		} catch (AddressException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
			RequestDispatcher view = request.getRequestDispatcher("/views/main/pwdFindResult.jsp");
			request.setAttribute("user", su);
			view.forward(request, response);
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
