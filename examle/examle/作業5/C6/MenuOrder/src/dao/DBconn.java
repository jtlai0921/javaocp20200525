package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBconn {

	public static void main(String[] args) {
		Connection conn=DBconn.get();
		System.out.println(conn);

	}

	public static Connection get()
	{
		Connection conn=null;
		String url="jdbc:mysql://localhost:3306/restaurst";
		String user="root";
		String password="1234";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection(url, user, password);
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
				
		return conn;
	}
	
}
