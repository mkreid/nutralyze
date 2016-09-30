package auth;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;


public class UserDAO {

	
	public static UserBean login(UserBean user) {
		
		
		Context initContext;
		try {
			// set up DB connection
			initContext = new InitialContext();
			Context envContext  = (Context)initContext.lookup("java:/comp/env");
			DataSource ds = (DataSource)envContext.lookup("jdbc/myoracle");
			Connection conn = ds.getConnection();
			
			// prepare statement
			PreparedStatement s = conn.prepareStatement("select count(*) from users where username = ? and password = ?");
			s.setString(1, user.getUsername());
			s.setString(2, user.getPassword());
			
			// execute statement
			ResultSet r = s.executeQuery();
			
			// get results
			int count = 0;
			if (r != null) {
				while (r.next()) {
					count = r.getInt(1);
				}
			}
			
			if (count == 1) {
				// i.e. user exists, with correct password!
				
				// populate user bean with name
				PreparedStatement getUserName = conn.prepareStatement("select first_name, last_name from users where username = ?");
				getUserName.setString(1, user.getUsername());
				r = getUserName.executeQuery();
				String firstName = "";
				String lastName = "";
				if (r != null) {
					while (r.next()) {
						firstName = r.getString(1);
						lastName = r.getString(2);
					}
				}
				
				user.setFirstName(firstName);
				user.setLastName(lastName);
				
				// mark user as valid
				user.setValid(true);
			} else {
				user.setValid(false);
			}
			
			// close connection
			conn.close();
			
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
				
		System.out.println("Username= " + user.getUsername());
		System.out.println("Password= " + user.getPassword());
		
		
		
		return user;
	}
	
	

}
