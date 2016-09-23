package auth;

public class UserDAO {

	
	public static UserBean login(UserBean user) {
		// TODO Actually look up user info in DB and validate!!
		user.setValid(true);
		
		System.out.println("Username= " + user.getUsername());
		System.out.println("Password= " + user.getPassword());
		
		
		
		return user;
	}
	
	

}
