package semi.login.controller;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class SMTPAuthenticator extends Authenticator {
	public SMTPAuthenticator() {
        super();
    }
 
    public PasswordAuthentication getPasswordAuthentication() {
        String username = "seoulaim4@gmail.com";
        String password = "##seoulaim77";
        return new PasswordAuthentication(username, password);
    }
}