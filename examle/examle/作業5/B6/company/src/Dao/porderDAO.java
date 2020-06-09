package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import model.porder;

public class porderDAO implements implDao{

	public static void main(String[] args) {
		
	}
	
	@Override
	public void add(Object o) {
		porder p=(porder)o;
		String sql="insert into porder(name,table_number,a,b,c,sum) value(?,?,?,?,?,?)";
		Connection conn=DbConn.get();
		
		try {
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setString(1, p.getName());
		ps.setString(2, p.getTable_number());
		ps.setInt(3, p.getFirePork());
		ps.setInt(4, p.getCookPork());
		ps.setInt(5, p.getChicken());
		ps.setInt(6, p.getSum());

		
		ps.executeUpdate();
		
		} catch(SQLException e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public ResultSet query() {
		Connection conn = DbConn.get();
		String sql = "select * from porder";
		ResultSet rs = null;
		
		try {
			Statement st = conn.createStatement();
			rs = st.executeQuery(sql);
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		
		return rs;
	}
	
	@Override
	public ResultSet query(int id) {
		Connection conn = DbConn.get();
		String sql = "select * from porder where id=" + id;
		ResultSet rs = null;
		
		try {
			Statement st = conn.createStatement();
			rs = st.executeQuery(sql);
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		
		return rs;
	}

	@Override
	public void update(int id, Object o) {
		porder p = (porder)o;
		
		String sql = "update porder set name='" + p.getName() +
				     "', table_number="+p.getTable_number() +
				     ", a=" + p.getFirePork() +
				     ", b=" + p.getCookPork() +
				     ", c=" + p.getChicken() +
				     ", sum=" + p.getSum() +
				     " where id=" + id;
		
		
		Connection conn=DbConn.get();
		
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	
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
