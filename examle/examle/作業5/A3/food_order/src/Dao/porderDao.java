package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Model.porder;

public class porderDao implements implDao{

	public static void main(String[] args) {
		/* 新增一筆資料測試
		porder p = new porder();
		p.setA(1);
		p.setB(1);
		p.setC(1);
		p.setTable(1);
		new porderDao().add(p);
		*/
		
		/* 查詢一筆特定id */
		ResultSet rs = new porderDao().query1();
		
		try {
			
			if(rs.next())
			{
			System.out.print(rs.getInt("tb")+"\t");
			System.out.print(rs.getInt("a")+"\t");
			System.out.print(rs.getInt("b")+"\t");
			System.out.print(rs.getInt("c")+"\t");
			System.out.print(rs.getInt("price"));
			
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();}
		
		 
		
		/* 指定id刪除一筆資料
		new porderDao().delete(1);
		*/
		
		/*指定ID修一筆資料
		porder p = new porder();
		p.setA(1);
		p.setB(1);
		p.setC(1);
		p.setTable(3);
				
		new porderDao().update(3, p);
		*/
		
	}


	@Override
	public void add(Object o) {
		porder p = (porder) o;
		String sql = "insert into forder(tb,a,b,c,price) values(?,?,?,?,?)";
		Connection conn = DbConn.getConn();
		
		PreparedStatement ps;
		
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, p.getTable());
			ps.setInt(2, p.getA());
			ps.setInt(3, p.getB());
			ps.setInt(4, p.getC());
			ps.setInt(5, p.getPrice());
			
			ps.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	public ResultSet queryName(String name) {
		Connection conn = DbConn.getConn();
		String sql = "SELECT  *  FROM forder WHERE name = ? ";
		ResultSet rs = null;
		boolean x = false;
		
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, name);
			rs = ps.executeQuery(sql);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}
	
	
	
	@Override
	public ResultSet query(int tb) {
		ResultSet rs = null;
		String sql = "SELECT  *  FROM forder WHERE  `id` = "+tb;
		Connection conn = DbConn.getConn();
		PreparedStatement ps;
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery(sql);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}
	public ResultSet query1() {
		ResultSet rs = null;
		String sql = "SELECT  *  FROM forder";
		Connection conn = DbConn.getConn();
		PreparedStatement ps;
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery(sql);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}
	@Override
	public void delete(int id ) {
		String sql = "Delete from forder where id ="+id;
		Connection conn = DbConn.getConn();
		PreparedStatement ps;
		try {
			ps = conn.prepareStatement(sql);
			ps.executeUpdate();
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}


	@Override
	public void update(int id, Object o) {
		porder p = (porder) o;
		String sql="update forder set tb =?,a=?, b=?, c=? , price=? where id=?";
		Connection conn = DbConn.getConn();
		
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, p.getTable());
			ps.setInt(2, p.getA());
			ps.setInt(3, p.getB());
			ps.setInt(4, p.getC());
			ps.setInt(5, p.getPrice());
			ps.setInt(6, id);
					
			ps.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	
	
}
