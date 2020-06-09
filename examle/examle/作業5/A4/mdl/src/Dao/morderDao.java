package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import model.morder;

public class morderDao implements implDao{

	public static void main(String[] args) {
		/*新增訂單測試
		morder m=new morder();
		m.setName("aa");
		m.setRice(1);
		m.setNoodles(1);
		m.setHamburger(1);
		m.setTablenumber(1);
		new morderDao().add(m);*/
		
		/*查詢訂單測試
		System.out.println(new morderDao().query());
		System.out.println(new morderDao().query2(2));*/
		
		/*修改訂單測試
		morder m=new morder();
		m.setName("as");
		m.setRice(0);
		m.setNoodles(2);
		m.setHamburger(3);
		m.setTablenumber(1);
		new morderDao().update(1, m);*/
		
		/*刪除訂單測試
		new morderDao().delete(1);*/
	}

	@Override
	public void add(Object o) {
		morder m=(morder)o;
		Connection conn=DbConn.getConn();
		String sql="insert into morder2(name,rice,noodles,hamburger,sum,tablenumber)"
				+ " value(?,?,?,?,?,?)";
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, m.getName());
			ps.setInt(2, m.getRice());
			ps.setInt(3, m.getNoodles());
			ps.setInt(4, m.getHamburger());
			ps.setInt(5, m.getSum());
			ps.setInt(6, m.getTablenumber());
			ps.executeUpdate();
			
		} catch (SQLException e) {
			System.out.println("no PreparedStatement");
			e.printStackTrace();
		}
	}

	@Override
	public ResultSet query() {
		Connection conn=DbConn.getConn();
		String sql="select * from morder2";
		ResultSet rs=null;
		try {
			Statement st=conn.createStatement();
			rs=st.executeQuery(sql);
		} catch (SQLException e) {
			System.out.println("no Statement");
			e.printStackTrace();
		}
		return rs;
	}
	
	@Override
	public ResultSet query2(int id) {
		Connection conn=DbConn.getConn();
		String sql="select * from morder2 where id="+id;
		ResultSet rs=null;
		try {
			Statement st=conn.createStatement();
			rs=st.executeQuery(sql);
		} catch (SQLException e) {
			System.out.println("no Statement");
			e.printStackTrace();
		}
		return rs;
	}

	@Override
	public void update(int id, Object o) {
		morder m=(morder)o;
		Connection conn=DbConn.getConn();
		String sql="update morder2 set name='"+m.getName()+
				"',rice="+m.getRice()+
				",noodles="+m.getNoodles()+
				",hamburger="+m.getHamburger()+
				",sum="+m.getSum()+
				",tablenumber="+m.getTablenumber()+
				" where id="+id;
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.executeUpdate();
		} catch (SQLException e) {
			System.out.println("no PreparedStatement");
			e.printStackTrace();
		}
	}

	@Override
	public void delete(int id) {
		Connection conn=DbConn.getConn();
		String sql="delete from morder2 where id="+id;
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.executeUpdate();
		} catch (SQLException e) {
			System.out.println("no PreparedStatement");
			e.printStackTrace();
		}	
	}
}
