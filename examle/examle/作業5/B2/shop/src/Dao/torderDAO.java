package Dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import Model.torder;


public class torderDAO implements implDAO{

	public static void main(String[] args) {
		new torderDAO().delete(2);
		
	}
	@Override
	public void add(Object o) {
		torder t=(torder)o;
		String sql="insert into torder(TableNO,Yeovil,Kenilworth,Farnham,sum) values(?,?,?,?,?)";
		Connection conn=DbConn.get();
		
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1,t.getTableNo());
			ps.setInt(2,t.getYeovil());
			ps.setInt(3,t.getKenilworth());
			ps.setInt(4,t.getFarnham());
			ps.setInt(5,t.getSum());
			
			ps.executeUpdate();			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
	}

	@Override
	public ResultSet query() {
		Connection conn=DbConn.get();
		String sql="select * from torder";
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
	public void update(int id, Object o) {
		torder t=(torder)o;
		String sql="update torder set TableNo=?,Yeovil=?,Kenilworth=?,Farnham=?,sum=? where id=?";
		Connection conn=DbConn.get();
		
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1,t.getTableNo());
			ps.setInt(2,t.getYeovil());
			ps.setInt(3,t.getKenilworth());
			ps.setInt(4,t.getFarnham());
			ps.setInt(5,t.getSum());
			ps.setInt(6,id);
			ps.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	@Override
	public void delete(int id) {
		String sql="delete from torder where id="+id;
		
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
