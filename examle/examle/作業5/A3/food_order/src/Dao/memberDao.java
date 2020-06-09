package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Model.member;

public class memberDao {

	public static void main(String[] args) {
		/*新增會員
		member m = new member();
		m.setName("a");
		m.setPassword("33");
		new memberDao().add(m);
		*/
		member m = new member();
		m.setName("a");
		m.setPassword("33");
		System.out.println(new memberDao().query(m));
	}
	public void add(Object o) {
		member m = (member)o;
		String sql = "insert into member(name,password) values(?,?)";
		Connection conn = DbConn.getConn();
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, m.getName());
			ps.setString(2, m.getPassword());
			ps.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public static boolean query(Object o) {
		member m = (member)o;
		String sql = "SELECT `name` FROM `member` WHERE `name`= ? AND `password`= ? LIMIT 1;";
		Connection conn = DbConn.getConn();
		boolean np=false;
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1,m.getName());
			ps.setString(2,m.getPassword());
			ResultSet rs = ps.executeQuery();
			np=rs.next();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return np;
		
		
	}

}
