package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import DAO.Dbconn;
import model.foods;


public class orderDAO implements implDAO{

	public static void main(String[] args) {
		foods f=new foods();
		f.setDesk(5);
		f.setFish(5);
		f.setPork(5);
		f.setBeef(5);
		new orderDAO().update(1, f);
	}
	@Override
	public void add(Object o) {

foods f=(foods)o;
		
		String sql="insert into foods(desk,fish,pork,beef,sum) values(?,?,?,?,?)";
		Connection conn=Dbconn.get();
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1,f.getDesk());
			ps.setInt(2, f.getFish());
			ps.setInt(3, f.getPork());
			ps.setInt(4, f.getBeef());
			ps.setInt(5, f.getSum());
			
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	

	@Override
	public ResultSet query() {
		Connection conn=Dbconn.get();
		String sql="select * from foods";
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
		foods f=(foods)o;
		String sql="update foods set desk='"+f.getDesk()+
				"',fish='"+f.getFish()+
				"',pork="+f.getPork()+
				",beef="+f.getBeef()+
				",sum="+f.getSum()+
				" where id="+id;
		Connection conn=Dbconn.get();
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
		String sql="delete from foods where id="+id;
		Connection conn=Dbconn.get();
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
