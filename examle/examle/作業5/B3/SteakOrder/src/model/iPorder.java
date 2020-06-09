package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;

import Other.Tools;

public interface iPorder {
	int add = 30;
	int $2 = 2;
	int $3 = 3;
	
	static Connection getConn() {
		String url = "jdbc:mysql://localhost:3306/gjun";
		String id = "root";
		String password = "1234";
		String driver = "com.mysql.jdbc.Driver";
		Connection conn = null;
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, id, password);
		} catch (ClassNotFoundException | SQLException e) {
			Tools.p(e);
		}
		return conn;
	}

	// 憓�
	public boolean edit(Porder po);

	// �
	public boolean del(Porder po);

	// 靽�
//	public boolean update(Porder po);

	// �
	public ArrayList<Porder> query(Porder po);

}
