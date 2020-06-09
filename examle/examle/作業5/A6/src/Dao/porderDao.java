package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import model.meal;

public class porderDao implements implDao{

	public static void main(String[] args) {
		//ResultSet rs=new porderDao().query();
		//System.out.println(rs);
		/*meal p=new meal();
		p.setNumber("PO");
		p.setMealA(1);
		p.setMealB(1);
		p.setMealC(1);
		p.setMealD(1);
		*/
		//new porderDao().add(p);
		//new porderDao().update(1, p);
		//new porderDao().delete(2);
		System.out.println(porderDao.queryUser("OOO"));
	}
	

	@Override
	public void add(Object o) {
		meal m=(meal)o;
		String sql="insert into meal(number,mealA,mealB,mealC,mealD,sum) value(?,?,?,?,?,?)";
		Connection conn=DbConn.get();
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, m.getNumber());
			ps.setInt(2, m.getMealA());
			ps.setInt(3, m.getMealB());
			ps.setInt(4, m.getMealC());
			ps.setInt(5, m.getMealD());
			ps.setInt(6, m.getSum());

			ps.executeUpdate();
		} catch (SQLException e) {
			System.out.println("no Connection");
			e.printStackTrace();
		}
	}

	@Override
	public ResultSet query() {
		Connection conn=DbConn.get();
		String sql="SELECT * FROM ooo.meal";
		ResultSet rs=null;
		try {
			Statement st=conn.createStatement();
			rs=st.executeQuery(sql);
		} catch (SQLException e) {
			System.out.println("no Connection");
			e.printStackTrace();
		}
		
		return rs;
	}

	@Override
	public void update(int id, Object o) {
		meal m=(meal)o;
		String sql="UPDATE ooo.meal SET number=?,mealA=?,mealB=?,mealC=?,mealD=?,sum=? where id=?";
		Connection conn=DbConn.get();
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, m.getNumber());
			ps.setInt(2, m.getMealA());
			ps.setInt(3, m.getMealB());
			ps.setInt(4, m.getMealC());
			ps.setInt(5, m.getMealD());
			ps.setInt(6, m.getSum());
			ps.setInt(7, id);
			ps.executeUpdate();
		} catch (SQLException e) {
			System.out.println("no Connection");
			e.printStackTrace();
		}
		
		
	}

	@Override
	public void delete(int id) {
		Connection conn=DbConn.get();
		String sql="DELETE FROM meal WHERE ID="+id;
		
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.executeUpdate();
		} catch (SQLException e) {
			System.out.println("no Connection");
			e.printStackTrace();
		}
		
	}
	
	public static Boolean queryUser(String name) {
		Connection conn=DbConn.get();
		String sql="select * from meal where name=?";
		ResultSet rs=null;
		boolean x=false;
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1,name);
			rs=ps.executeQuery();
			x=rs.next();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return x;
	}

}
