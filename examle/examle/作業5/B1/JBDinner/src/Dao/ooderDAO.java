package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;

import java.sql.ResultSet;
import java.sql.SQLException;

import model.ooder;

public class ooderDAO implements implDao{

	public static void main(String[] args) {
		new ooderDAO().delete(4);	
		/*ooder o1=new ooder();
		o1.setName("hh");
		o1.setFast(1);
		o1.setNoodle(2);
		o1.setRice(3);
		new ooderDAO().update(3,o1);*/
		

	}

	@Override
	public void add(Object o) {
		ooder o1=(ooder)o;
		String sql="insert into oorder(name,fast,noodle,rice,sum) values(?,?,?,?,?)";
		Connection conn=DbConn.get();
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1,o1.getName());
			ps.setInt(2, o1.getFast());
			ps.setInt(3, o1.getNoodle());
			ps.setInt(4, o1.getRice());
			ps.setInt(5, o1.getSum());
			
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public ResultSet query() {
		Connection conn=DbConn.get();
		String sql="select * from oorder";
		ResultSet rs=null;
		
		try {
			Statement st=conn.createStatement();
			rs=st.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	
		return rs;
		
	
	}

	@Override
	public void update(int tab, Object o) {
		ooder o1=(ooder)o;		
		String sql="update oorder set name=?,fast=?,noodle=?,rice=?,sum=? where tab=?";
		Connection conn=DbConn.get();
		
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, o1.getName());
			ps.setInt(2, o1.getFast());
			ps.setInt(3, o1.getNoodle());
			ps.setInt(4, o1.getRice());
			ps.setInt(5, o1.getSum());
			ps.setInt(6,tab);			
		    ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public void delete(int tab) {
		String sql="delete from oorder where tab="+tab;
		Connection conn=DbConn.get();
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
}

	