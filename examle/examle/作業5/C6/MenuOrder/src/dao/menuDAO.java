package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import model.menu;

public class menuDAO implements implDAO{

	public static void main(String[] args) {
	/*menu p=new menu();   //´ú¸Õadd
		p.setTableNum(5);
		p.setM1(1);
		p.setM2(2);
		p.setM3(3);
		p.setMember(2);
		new manuDAO().add(p);*/ 
	/*ResultSet rs=new menuDAO().query(2);  //´ú¸Õquery
		try {
			rs.next();
			System.out.println(rs.getInt("tableNum"));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
	/*menu p=new menu(); //update´ú¸Õ
		p.setTableNum(2);
		p.setM1(2);
		p.setM2(2);
		p.setM3(2);
		p.setMember(2);
		new menuDAO().update(2, p);*/
	 	new menuDAO().delete(2);
		
	}
	@Override
	public void add(Object o) {
		menu p=(menu)o;
		String sql="insert into menu(tableNum,m1,m2,m3,member,sum,name)"
				+ "values(?,?,?,?,?,?,?)";
		Connection conn=DBconn.get();
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1,p.getTableNum());
			ps.setInt(2, p.getM1());
			ps.setInt(3, p.getM2());
			ps.setInt(4, p.getM3());
			ps.setInt(5, p.getMember());
			ps.setInt(6, p.getSum());
			ps.setString(7, p.getName());
			ps.executeUpdate();
						
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public ResultSet query(int id) {
		Connection conn=DBconn.get();
		String sql="select * from menu where id="+id;
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

	public ResultSet query() {
		Connection conn=DBconn.get();
		String sql="select * from menu";
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
		menu p=(menu)o;
		String sql="update menu set tableNum=?,m1=?,m2=?,m3=?,member=?,sum=?,name=?"
				+ " where id=?";
		Connection conn=DBconn.get();
		
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, p.getTableNum());
			ps.setInt(2, p.getM1());
			ps.setInt(3, p.getM2());
			ps.setInt(4, p.getM3());
			ps.setInt(5, p.getMember());
			ps.setInt(6, p.getSum());
			ps.setString(7,p.getName());
			ps.setInt(8, id);
			ps.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

	@Override
	public void delete(int id) {
		String sql="delete from restaurst.menu where id="+id;
		Connection conn=DBconn.get();
		
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}
	
}
