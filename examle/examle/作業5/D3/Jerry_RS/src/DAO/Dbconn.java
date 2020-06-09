package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Dbconn {
	
	public static void main(String[] args) {
		System.out.println(Dbconn.get());
	}
	public static Connection get() 
	{
	 String url="jdbc:mysql://localhost:3306/restaurrant";
	 String user="root";
	 String pass="1234";
	Connection conn=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			try {
				conn=DriverManager.getConnection(url,user,pass);
			}catch (SQLException e) {
				System.out.println("erro");
			e.printStackTrace();}
		} catch (ClassNotFoundException e) {
			System.out.println("no driver");
			e.printStackTrace();
		}return conn;
	}
}