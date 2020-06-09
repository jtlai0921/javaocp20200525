package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import model.cafe;

public class cafeDAO implements implDAO{

	
	public static void main(String[] args)
	{
		//new cafeDAO().delete(2);
		
	}
	
	
	
	@Override
	public void add(Object o) {
		cafe c=(cafe)o;
		String sql="insert into cafe(tableNum,setA,setB,setC,add1,add2,add3,sum) values(?,?,?,?,?,?,?,?)";
		Connection conn=DbConn.getConn();
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, c.getTableNum());
			ps.setInt(2, c.getSetA());
			ps.setInt(3, c.getSetB());
			ps.setInt(4, c.getSetC());
			ps.setInt(5, c.getAdd1());
			ps.setInt(6, c.getAdd2());
			ps.setInt(7, c.getAdd3());
			ps.setInt(8, c.getSum());
			ps.executeUpdate();
		} catch (SQLException e) {
			System.out.println("add fail");
			e.printStackTrace();
		}
		
	}
	
	@Override
	public ResultSet query() {
		Connection conn=DbConn.getConn();
		ResultSet rs=null;
		String sql="select * from cafe";
		Statement st;
		try {
			st = conn.createStatement();
			rs=st.executeQuery(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}
	
	@Override
	public ResultSet query(int id) 
	{
		Connection conn=DbConn.getConn();
		ResultSet rs=null;
		String sql="select * from cafe where id="+id;
		try {
			Statement st=conn.createStatement();
			rs=st.executeQuery(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}

	@Override
	public void update(int id, Object o) 
	{
		Connection conn=DbConn.getConn();
		cafe c=(cafe)o;
		String sql="update cafe set tableNum=?,setA=?,setB=?,setC=?,add1=?,add2=?,add3=?,sum=? where id="+id;
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, c.getTableNum());
			ps.setInt(2, c.getSetA());
			ps.setInt(3, c.getSetB());
			ps.setInt(4, c.getSetC());
			ps.setInt(5, c.getAdd1());
			ps.setInt(6, c.getAdd2());
			ps.setInt(7, c.getAdd3());
			ps.setInt(8, c.getSum());
			ps.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
	}

	@Override
	public void delete(int id) {
		String sql="delete from cafe where id="+id;
		Connection conn=DbConn.getConn();
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	
	
}
