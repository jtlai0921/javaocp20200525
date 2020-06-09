package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConn {

	public static void main(String[] args) {
		System.out.println(DbConn.get());

	}
	
	public static Connection get()
	{
		Connection conn=null;
		String url="jdbc:mysql://localhost:3306/teashop";
		String user="root";
		String password="1234";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection(url, user, password);
		
		} catch (ClassNotFoundException e) {
			System.out.println("No Driver");
			e.printStackTrace();		
		} catch (SQLException e) {
		System.out.println("No Connection");
		e.printStackTrace();
		}
		 return conn;		
	}

}
