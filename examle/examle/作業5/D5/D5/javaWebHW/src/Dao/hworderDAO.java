package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import model.order;
public class hworderDAO implements implDao 
{

	public static void main(String[] args) 
	{
		/*order p=new order();
		p.setRice(1);
		p.setPasta(3);
		p.setHamburger(4);
		p.setSteak(1);
		new hworderDAO().add(p);*/
		/*ResultSet rs=new hworderDAO().query(1);
		//System.out.println(rs);//有抓到記憶體
		try {
			rs.next();
			System.out.println(rs.getInt(6));
		} catch (SQLException e) {
			
			e.printStackTrace();}*/
		/*order p=new order();
		//p.setRice(10);
		p.setPasta(10);
		
		new hworderDAO().update(1,p);*/

	}
	@Override
	public void add(Object o) {
		order o1=(order)o;
		String sql="insert into hworder(rice,pasta,hamburger,steak,sum) values(?,?,?,?,?)";
		Connection conn=HWconn.get();
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1,o1.getRice());
			ps.setInt(2,o1.getPasta());
			ps.setInt(3,o1.getHamburger());
			ps.setInt(4,o1.getSteak());
			ps.setInt(5,o1.getSum());
			
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public ResultSet query(int id) {
		Connection conn=HWconn.get();
		String sql="select * from hworder where id="+id;
		ResultSet rs=null;
		try {
			Statement st=conn.createStatement();
			rs=st.executeQuery(sql);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return rs;
	}
	@Override
	public void update(int id, Object o) {
			order o1=(order)o;
		String sql="update hworder set rice=?,pasta=?,hamburger=?,steak=?,sum=? where id=?";
		Connection conn=HWconn.get();
		
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1,o1.getRice());
			ps.setInt(2,o1.getPasta());
			ps.setInt(3,o1.getHamburger());
			ps.setInt(4,o1.getSteak());
			ps.setInt(5,o1.getSum());
			ps.setInt(6, id);
			ps.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public void delete(int id) {
		String sql="delete from hworder where id="+id;
		
		
		Connection conn=HWconn.get();
		
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			
			ps.executeUpdate();
			
		} catch (SQLException e) {
				e.printStackTrace();
		}
		
	}
	@Override
	public ResultSet query() {
		Connection conn=HWconn.get();
		String sql="select * from hworder";
		ResultSet rs=null;
		try {
			Statement st=conn.createStatement();
			rs=st.executeQuery(sql);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return rs;
	}

}
