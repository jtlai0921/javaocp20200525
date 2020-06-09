package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class HWconn {

	public static void main(String[] args) 
	{
		System.out.println(HWconn.get());
	}
	public static Connection get()
	{
			Connection conn=null;
			String url="jdbc:mysql://localhost:3306/hworder";
			String user="root";
			String password="1234";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection(url,user,password);
		} catch (ClassNotFoundException e) {
			System.out.println("no Driver");
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("no Connection");
			e.printStackTrace();
		}
		return conn;
	}
}
