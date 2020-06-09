package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
public interface implDAO {
	
	/**
	* �s�u��Ʈw
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
	 * �s�W���
	 */
	void add(Object o);
	
	/**
	 * �d�߸��
	 */
	ResultSet query();
	
	/**
	 * �ק���
	 */
	void update(int id,Object o);
	
	/**
	 * �R�����
	 */
	void delete(int id);
}
