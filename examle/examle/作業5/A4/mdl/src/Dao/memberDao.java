package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import model.member;

public class memberDao implements implDao{

	public static void main(String[] args) {
		//帳號查詢測試，可用來判斷是否有重複的帳號名稱
		System.out.println(memberDao.queryUser("aa"));

	}

	@Override
	public void add(Object o) {
		member m=(member)o;
		Connection conn=DbConn.getConn();
		String sql="insert into member(name,address,cellphone)"
				+ " value(?,?,?)";
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, m.getName());
			ps.setString(2, m.getAddress());
			ps.setInt(3, m.getCellphone());
			ps.executeUpdate();
			
		} catch (SQLException e) {
			System.out.println("no PreparedStatement");
			e.printStackTrace();
		}
		
	}

	@Override
	public ResultSet query() {
		Connection conn=DbConn.getConn();
		String sql="select * from member";
		ResultSet rs=null;
		try {
			Statement st=conn.createStatement();
			rs=st.executeQuery(sql);
		} catch (SQLException e) {
			System.out.println("no Statement");
			e.printStackTrace();
		}
		return rs;
	}

	@Override
	public ResultSet query2(int id) {
		Connection conn=DbConn.getConn();
		String sql="select * from member where id="+id;
		ResultSet rs=null;
		try {
			Statement st=conn.createStatement();
			rs=st.executeQuery(sql);
		} catch (SQLException e) {
			System.out.println("no Statement");
			e.printStackTrace();
		}
		return rs;
	}
	
	//判斷帳號
	public static Boolean queryUser(String name)
	{
		Connection conn=DbConn.getConn();
		String sql="select * from member where name=?";
		ResultSet rs=null;
		boolean x=false;
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, name);
			rs=ps.executeQuery();
			x=rs.next();
		} catch (SQLException e) {
			System.out.println("no PreparedStatement");
			e.printStackTrace();
		}
		return x;
	}

	@Override
	public void update(int id, Object o) {
		member m=(member)o;
		Connection conn=DbConn.getConn();
		String sql="update member set name='"+m.getName()+
				"',address="+m.getAddress()+
				",cellphone="+m.getCellphone()+
				" where id="+id;
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.executeUpdate();
		} catch (SQLException e) {
			System.out.println("no PreparedStatement");
			e.printStackTrace();
		}
	}

	@Override
	public void delete(int id) {
		Connection conn=DbConn.getConn();
		String sql="delete from member where id="+id;
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.executeUpdate();
		} catch (SQLException e) {
			System.out.println("no PreparedStatement");
			e.printStackTrace();
		}	
		
	}

}
