package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import model.porder;

public class porderDAO implements implDao{

	public static void main(String[] args) {
		porder p=new porder();
		p.setName("test2");
		p.setTable_number(4);
		p.setApple(4);
		p.setBread(4);
		p.setCake(4);
		
		new porderDAO().add(p);
	}
	
	@Override
	public void add(Object o) {
		porder p=(porder)o;
		String sql="insert into porder(name,table_number,apple,bread,cake,sum) value(?,?,?,?,?,?)";
		Connection conn=DbConn.get();
		
		try {
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setString(1, p.getName());
		ps.setInt(2, p.getTable_number());
		ps.setInt(3, p.getApple());
		ps.setInt(4, p.getBread());
		ps.setInt(5, p.getCake());
		ps.setInt(6, p.getSum());

		
		ps.executeUpdate();
		
		} catch(SQLException e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public ResultSet query() {
		Connection conn=DbConn.get();
		String sql="select * from porder";
		ResultSet rs=null;
		
		try {
		Statement st=conn.createStatement();
		rs=st.executeQuery(sql);
		
		} catch(SQLException e) {
			e.printStackTrace();
		}
		
		return rs;
	}
	
	

	@Override
	public void update(int id, Object o) {
		porder p=(porder)o;
		
		String sql="update porder set name='"+p.getName()+
				"', table_number="+p.getTable_number()+
				", apple="+p.getApple()+
				", bread="+p.getBread()+
				", cake="+p.getCake()+
				" , sum="+p.getSum()+
				" where id="+id;
		
		
		Connection conn=DbConn.get();
		
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	/*
	@Override
	public void update2(int id, Object o) {
		porder p=(porder)o;
		
		String sql="update porder set name=?,table_number=?,apple=?,bread=?,cake=?,sum=?, where id=?";
		
		Connection conn=DbConn.get();
		
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, p.getName());
			ps.setInt(2, p.getTable_number());
			ps.setInt(3, p.getApple());
			ps.setInt(4, p.getBread());
			ps.setInt(5, p.getCake());
			ps.setInt(6, p.getSum());
			ps.setInt(7, id);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	*/
	@Override
	public void delete(int id) {
		String sql="delete from porder where id="+id;
		
		Connection conn=DbConn.get();
		
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
