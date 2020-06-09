package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Dbconn {

	public static void main(String[] args) {
		Dbconn.getConn();

	}
	public static Connection getConn() {
		Connection conn=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("no Driver");
		}
		
		
		try {
			String url="jdbc:mysql://localhost:3306/orderdatabase";
			String user="root";
			String password="1234";
			conn=DriverManager.getConnection(url, user, password);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("no connection");
		}
		return conn;
	}
	


}
