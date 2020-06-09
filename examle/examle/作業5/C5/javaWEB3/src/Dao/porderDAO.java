package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import model.Porder;

public class porderDAO implements implDao{

	public static void main(String[] args) {
			Porder p=new Porder();
			p.setName("aaaa");
			p.setRuler(10);
			p.setPen(10);
			
			new porderDAO().update(2, p);
			
		/*System.out.println(new porderDAO().query());
		ResultSet rs=new porderDAO().query();
				
		try {
				rs.next();
				System.out.println(rs.getString("name"));
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}*/

	}

	@Override
	public void add(Object o) {
		Porder p=(Porder)o;
		String sql="insert into porder(name,ruler,pen,sum) values(?,?,?,?)";
		Connection conn=DbConn.get();
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, p.getName());
			ps.setInt(2, p.getRuler());
			ps.setInt(3, p.getPen());
			ps.setInt(4, p.getSum());
			
			ps.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

	@Override
	public ResultSet query() {
		Connection conn=DbConn.get();
		String sql="select * from gjun2.porder";
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
		Porder p=(Porder)o;
		
		String sql="update porder set name='"+p.getName()+
						"', ruler="+p.getRuler()+
						", pen="+p.getPen()+
						", sum="+p.getSum()+
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
	
	public void update2(int id, Object o) {
		Porder p=(Porder)o;
		
		String sql="update porder set name=?,ruler=?,pen=?,sum=? where id=?";
		
		
		Connection conn=DbConn.get();
		
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, p.getName());
			ps.setInt(2, p.getRuler());
			ps.setInt(3, p.getPen());
			ps.setInt(4, p.getSum());
			ps.setInt(5, id);
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
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}