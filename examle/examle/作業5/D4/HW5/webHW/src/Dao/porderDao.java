package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.porder;

public class porderDao {

	public static void add(porder p) {

		try {
			String sql = "insert into test(tablenum , sirlon , filet , soup , bread , cola , juice , sum , date) values(? , ? , ? , ? , ? , ? , ? , ? , ? )";
			Connection conn = DB.getConn();
			PreparedStatement ps = conn.prepareStatement(sql);

			ps.setInt(1, p.getTablenum());
			ps.setInt(2, p.getSirlon());
			ps.setInt(3, p.getFilet());
			ps.setInt(4, p.getSoup());
			ps.setInt(5, p.getBread());
			ps.setInt(6, p.getCola());
			ps.setInt(7, p.getJuice());
			ps.setInt(8, p.getSum());
			ps.setString(9, p.getDate());
			ps.executeUpdate();
			System.out.println("新增成功");

		} catch (SQLException ex) {
			Logger.getLogger(porderDao.class.getName()).log(Level.SEVERE, null, ex);
		}
	}
	
	public static ResultSet searchID() {
		String sql = "select * from test where id";
		
		Connection conn = DB.getConn();
		ResultSet rs = null;
		try {
			Statement st = conn.createStatement();
			rs = st.executeQuery(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}
	
	public static ResultSet search(String id) {
		
		String sql = "select * from test where id="+id;
		
		Connection conn = DB.getConn();
		ResultSet rs = null;
		try {
			Statement st = conn.createStatement();
			rs = st.executeQuery(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}
	
	public static void update(String id , porder p) {
		
		String SQL = "select * from test where id="+id;
		Connection conn = DB.getConn();
		Statement st = null;
		ResultSet rs=null;
		
		try {
			st = conn.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		try {
			rs = st.executeQuery(SQL);
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		
		int ta = 0;
		int si =  0;
		int fi = 0;
		int so = 0;
		int br=0;
		int co = 0;
		int ju=0;
		try {
			if(rs.next()) {
				ta = rs.getInt("tablenum");
				si = rs.getInt("sirlon");
				fi = rs.getInt("filet");
				so = rs.getInt("soup");
				br = rs.getInt("bread");
				co = rs.getInt("cola");
				ju = rs.getInt("juice");
			}
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		try {
			
			PreparedStatement ps =null;
			
			if(p.getTablenum() != -1) {
				String sql = "update test set tablenum=? where id="+id;
				ps = conn.prepareStatement(sql);
				ps.setInt(1, p.getTablenum());
				ps.executeUpdate();
			}else {
				String sql = "update test set tablenum=? where id="+id;
				ps = conn.prepareStatement(sql);
				p.setTablenum(ta);
				ps.setInt(1, ta);
				ps.executeUpdate();
			}
			
			
			if(p.getSirlon() != -1) {
				String sql = "update test set sirlon=? where id="+id;
				ps = conn.prepareStatement(sql);
				ps.setInt(1, p.getSirlon());
				ps.executeUpdate();
			}else {
				String sql = "update test set sirlon=? where id="+id;
				ps = conn.prepareStatement(sql);
				p.setSirlon(si);
				ps.setInt(1, si);
				ps.executeUpdate();
			}
			
			
			if(p.getFilet() != -1) {
				String sql = "update test set filet=? where id="+id;
				ps = conn.prepareStatement(sql);
				ps.setInt(1, p.getFilet());
				ps.executeUpdate();
			}else {
				String sql = "update test set filet=? where id="+id;
				ps = conn.prepareStatement(sql);
				p.setFilet(fi);
				ps.setInt(1, fi);
				ps.executeUpdate();
			}
			
			
			if(p.getSoup() != -1) {
				String sql = "update test set soup=? where id="+id;
				ps = conn.prepareStatement(sql);
				ps.setInt(1, p.getSoup());
				ps.executeUpdate();
			}else {
				String sql = "update test set soup=? where id="+id;
				ps = conn.prepareStatement(sql);
				p.setSoup(so);
				ps.setInt(1, so);
				ps.executeUpdate();
			}
			
			
			if(p.getBread() != -1) {
				String sql = "update test set bread=? where id="+id;
				ps = conn.prepareStatement(sql);
				ps.setInt(1, p.getBread());
				ps.executeUpdate();
			}else {
				String sql = "update test set bread=? where id="+id;
				ps = conn.prepareStatement(sql);
				p.setBread(br);
				ps.setInt(1, br);
				ps.executeUpdate();
			}
			
			
			if(p.getCola() != -1) {
				String sql = "update test set cola=? where id="+id;
				ps = conn.prepareStatement(sql);
				ps.setInt(1, p.getCola());
				ps.executeUpdate();
			}else {
				String sql = "update test set cola=? where id="+id;
				ps = conn.prepareStatement(sql);
				p.setCola(co);
				ps.setInt(1, co);
				ps.executeUpdate();
			}
			
			
			if( p.getJuice() != -1) {
				String sql = "update test set juice=? where id="+id;
				ps = conn.prepareStatement(sql);
				ps.setInt(1, p.getJuice());
				ps.executeUpdate();
			}else {
				String sql = "update test set juice=? where id="+id;
				ps = conn.prepareStatement(sql);
				p.setJuice(ju);
				ps.setInt(1, ju);
				ps.executeUpdate();
			}
			
			String sql = "update test set sum=? , date=? where id="+id;
			ps = conn.prepareStatement(sql);
			System.out.println(p.getSum());
			ps.setInt(1, p.getSum());
			ps.setString(2, p.getDate());
			ps.executeUpdate();
			
			System.out.println("更新成功");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void delete(String id) {
		
		String sql = "delete from test where id="+id;
		
		Connection conn = DB.getConn();
		try {
			Statement st = conn.createStatement();
			st.executeUpdate(sql);
			System.out.println("刪除成功");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
