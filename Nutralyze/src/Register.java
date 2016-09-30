import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * This servlet class registers new users in the MYSQL database.
 * 
 * @author mkreid
 *
 */
public class Register extends HttpServlet {

	/*
	 * Initial version serialization.
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		resp.setContentType("text/html;charset=UTF-8");
		PrintWriter out = resp.getWriter();
		
		// Get values from POST passing
		String name = req.getParameter("user_given_name");
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		
		// load driver for mysql db
		
		// create a new user bean
		
		// TODO: check if account exists?
		
		// insert into DB
		out.println("name= "+name + "<BR>");
		out.println("user= "+ username + "<BR>");
		out.println("pass= "+ password + "<BR>");
		
		// pass back to login site
		out.println("You are successfully registered!");
		out.println("<a href=\"login.jsp\">Click here to login</a>");
		
		
		
	}
	
	
	

}
