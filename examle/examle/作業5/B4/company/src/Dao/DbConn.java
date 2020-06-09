package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConn {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println(DbConn.get());

	}
	public static  Connection get() {
		Connection conn=null;
		String url="jdbc:mysql://localhost:3306/company";
		String user="root";
		String password="1234";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			try {
				conn=DriverManager.getConnection(url, user, password);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				System.out.println("no Connection");
				e.printStackTrace();
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.println("no Driver");
			e.printStackTrace();
		}
		return conn;
      }
}