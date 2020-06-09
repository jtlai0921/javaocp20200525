package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import Model.forder;


public class forderDAO implements intfDAO{

	public static void main(String[] args) {
		forder f=new forder();
		f.setTable("A1");
		f.setChicken(0);
		f.setPork(2);
		f.setBeef(10);
		f.setFish(5);
		
		new forderDAO().add(f);
		//new forderDAO().update(1, f);

	}

	@Override
	public void add(Object o) {
		
		forder f=(forder)o;
		String sql="insert into forder(desk,chicken,pork,beef,fish,total) values(?,?,?,?,?,?)";
		Connection conn=intfDAO.getConn();
		
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, f.getTable());
			ps.setInt(2, f.getChicken());
			ps.setInt(3, f.getPork());
			ps.setInt(4, f.getBeef());
			ps.setInt(5, f.getFish());
			ps.setInt(6, f.getTotal());
			
			ps.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	@Override
	public void update(int id, Object o) {
		forder f=(forder)o;
		String sql="update forder set desk=?,chicken=?,pork=?,beef=?,fish=?,total=?  where id=?";
		Connection conn=intfDAO.getConn();
		
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, f.getTable());
			ps.setInt(2, f.getChicken());
			ps.setInt(3, f.getPork());
			ps.setInt(4, f.getBeef());
			ps.setInt(5, f.getFish());
			ps.setInt(6, f.getTotal());
			ps.setInt(7, id);
			
			ps.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	@Override
	public ResultSet query(int id) {
		Connection conn=intfDAO.getConn();
		String sql="select * from forder where id="+id;
		ResultSet rs=null;
		
		Statement st;
		try {
			st = conn.createStatement();
			rs=st.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return rs;
		
	}

	@Override
	public void delete(int id) {
		Connection conn=intfDAO.getConn();
		String sql="delete from forder where id="+id;
		
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	@Override
	public ResultSet query() {
		Connection conn=intfDAO.getConn();
		String sql="select * from forder";
		ResultSet rs=null;
		
		Statement st;
		try {
			st = conn.createStatement();
			rs=st.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return rs;
		
	}
			

}
