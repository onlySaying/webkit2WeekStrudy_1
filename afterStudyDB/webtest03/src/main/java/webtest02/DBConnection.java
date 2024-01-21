package webtest02;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	public static Connection getConnection()
	{
		try {
			String url = "jdbc:mysql://localhost:3306/person";
			String id = "root";
			String pw = "1234";
			Class.forName("com.mysql.cj.jdbc.Driver");
			return DriverManager.getConnection(url, id, pw);
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return null;
	}
}
