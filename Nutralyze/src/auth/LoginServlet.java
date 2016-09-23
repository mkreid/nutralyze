package auth;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		UserBean user = new UserBean();
		
		user.setUsername(req.getParameter("username"));
		user.setPassword(req.getParameter("password"));
		user.setFirstName("TODO: Get First Name");
		user.setLastName("TODO: Get last Name");
		
		//TODO: 
		user = UserDAO.login(user);
		
		if (user.isValid()) {
			// set the session up!
			HttpSession session = req.getSession();
			session.setAttribute("currentSessionUser", user);
			resp.sendRedirect("userLogged.jsp"); // logged in page
		} else {
			resp.sendRedirect("invalidLogin.jsp"); // error page
		}
	}
	
	

}
