package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import model.TWorder;

public class TWorderDAO implements implDAO{

	public static void main(String[] args) {
		/*new TWorderDAO().delete(4);*/
		
		/*TWorder T=new TWorder();
		T.setPork(100);
		T.setFish(100);
		T.setBeer(100);
		T.setSpirit(100);*/
		
		/*new TWorderDAO().update(2, T);*/
		
		/*ResultSet rs=new TWorderDAO().read(3);*/
		
		TWorder T=new TWorder();
		T.setTableID(14);
		T.setPork(1);
		T.setFish(1);
		T.setBeer(1);
		T.setSpirit(1);
		
		new TWorderDAO().add(T);

	}

	@Override
	public void add(Object o) {
		TWorder T=(TWorder)o;
		String sql="insert into TWorder(TableID,Pork,Fish,Beer,Spirit,Sum) values(?,?,?,?,?,?)";
		Connection conn=DbConn.get();
		
		try 
		{
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, T.getTableID());
			ps.setInt(2, T.getPork());
			ps.setInt(3, T.getFish());
			ps.setInt(4, T.getBeer());
			ps.setInt(5, T.getSpirit());
			ps.setInt(6, T.getSum());
			
			ps.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public ResultSet read(int id) {
		String sql="select * from TWorder where TableID="+id;
		Connection conn=DbConn.get();
		ResultSet rs=null;
		
		try 
		{
			Statement st=conn.createStatement();
			rs=st.executeQuery(sql);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return rs;
	}
	
	public ResultSet query() {
		String sql="select * from TWorder";
		Connection conn=DbConn.get();
		ResultSet rs=null;
		
		try 
		{
			Statement st=conn.createStatement();
			rs=st.executeQuery(sql);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return rs;
	}

	@Override
	public void update(int TableID, Object o) {
		TWorder T=(TWorder) o;
		
		Connection conn=DbConn.get();
		String sql="update TWorder set Pork=?, Fish=?, Beer=?, Spirit=?, Sum=? where TableID=?";
		try 
		{
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, T.getPork());
			ps.setInt(2, T.getFish());
			ps.setInt(3, T.getBeer());
			ps.setInt(4, T.getSpirit());
			ps.setInt(5, T.getSum());
			ps.setInt(6, TableID);
			
			ps.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
	}

	@Override
	public void delete(int id) {
		Connection conn=DbConn.get();
		String sql="delete from TWorder where TableID="+id;
		
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	

}
