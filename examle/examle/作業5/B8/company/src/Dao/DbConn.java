package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConn 
{
	public static void main(String[] args)
	{
		DbConn.getConn(); //���լO�_��Driver
		System.out.println(DbConn.getConn()); //���O�����}
	}
	
	
	public static Connection getConn()
	{
		Connection conn=null;
		String url="jdbc:mysql://localhost:3306/zion";
		String user="root";
		String password="1234";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException e) {
			System.out.println("no driver");
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("no connection");
			e.printStackTrace();
		}
		
		return conn;
	}
}
