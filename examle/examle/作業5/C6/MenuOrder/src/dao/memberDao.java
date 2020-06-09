package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.member;

public class memberDao implements implDAO{

	public static void main(String[] args) {
		member m=new member();
		m.setName("Tom");
		m.setAddress("new taipei");
		new memberDao().add(m);
		//System.out.println(new memberDao().queryName("abc"));
		

	}

	@Override
	public void add(Object o) {
		member m=(member)o;
		String sql="insert into member(name,address) values(?,?)";
		Connection conn=DBconn.get();
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
	
			ps.setString(1, m.getName());
			ps.setString(2, m.getAddress());
			
			ps.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public static boolean queryName(String name)
	{
		Connection conn=DBconn.get();
		String sql="select * from member where name=?";
		
		boolean x=false;
		try {
			PreparedStatement ps= conn.prepareStatement(sql);
			ps.setString(1, name);
			
			ResultSet rs= ps.executeQuery();
			x=rs.next();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		
		return x;
	}

	@Override
	public ResultSet query(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ResultSet query() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(int id, Object o) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		
	}
	

}
