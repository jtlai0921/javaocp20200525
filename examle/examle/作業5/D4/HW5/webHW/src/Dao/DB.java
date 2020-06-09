package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class DB {

	public static Connection getConn() {

		String url = "jdbc:mysql://localhost:3306";
		String user = "root";
		String password = "1234";
		String sql1 = "create database if not exists test default charset utf8 collate utf8_unicode_ci";
		String sql2 = " create table if not exists test(id int Not Null Auto_Increment, tablenum int , sirlon int , filet int , soup int , bread int , cola int , juice int , sum int , date varchar(255), Primary Key(id))";
		Connection conn2=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn =DriverManager.getConnection(url, user, password);
			Statement st = conn.createStatement();
			st.executeUpdate(sql1);
			
			url = "jdbc:mysql://localhost:3306/test";
			
			conn2 = DriverManager.getConnection(url, user, password);
			Statement st2 = conn2.createStatement();
			st2.executeUpdate(sql2);
			
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return conn2;
	}
}
