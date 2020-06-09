package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

public interface intfDAO {
	void add(Object o);
	void update(int id,Object o);
	ResultSet query();
	ResultSet query(int id);
	void delete(int id);
	
	public static Connection getConn()
	{
		Connection conn=null;
		String url="jdbc:mysql://localhost:3305/resonline";
		String user="root";
		String password="1234";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection(url, user, password);
			
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


