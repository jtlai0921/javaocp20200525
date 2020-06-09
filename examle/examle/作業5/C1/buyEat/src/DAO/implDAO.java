package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
public interface implDAO {
	
	/**
	* 連線資料庫
	*/
	static Connection implConn() {
		String url="jdbc:mysql://localhost:3306/eatsql";
		String user="root";
		String password="1234";
		Connection conn=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection(url, user, password);
			
		} catch (ClassNotFoundException e) {
			System.out.println("no driver");
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("no connecion");
			e.printStackTrace();
		}
	    return conn;		
	}
	
	/**
	 * 新增資料
	 */
	void add(Object o);
	
	/**
	 * 查詢資料
	 */
	ResultSet query();
	
	/**
	 * 修改資料
	 */
	void update(int id,Object o);
	
	/**
	 * 刪除資料
	 */
	void delete(int id);
}
