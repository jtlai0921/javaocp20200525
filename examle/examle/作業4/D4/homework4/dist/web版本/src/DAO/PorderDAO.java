package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.sun.org.apache.bcel.internal.generic.Select;

import model.Porder;

public class PorderDAO {

	public static void PorderAdd(Porder p) {

		String Table = DB.getTable();

		try {
			String sql = "insert into " + Table
					+ "(name , pc , windows , lcd , ram , mouse , keyboard , iosphone , androidphone  , sum , pay , date ) values(? , ? , ? , ? , ? , ? , ? , ? , ? , ? , ? , ?)";
			Connection conn = DB.ConnectionDB();
			PreparedStatement ps = conn.prepareStatement(sql);

			ps.setNString(1, p.getName());
			ps.setInt(2, p.getPc());
			ps.setInt(3, p.getWindows());
			ps.setInt(4, p.getLcd());
			ps.setInt(5, p.getRam());
			ps.setInt(6, p.getMouse());
			ps.setInt(7, p.getKeyboard());
			ps.setInt(8, p.getIosphone());
			ps.setInt(9, p.getAndroidphone());
			ps.setInt(10, p.getSum());
			ps.setNString(11, p.getPay());
			ps.setNString(12, p.getDate());
			ps.executeUpdate();
			System.out.println("新增成功");

		} catch (SQLException ex) {
			Logger.getLogger(PorderDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
	}

	public static void PorderUpdate(String id , int pc , int windows , int lcd , int ram , int mouse , int keyboard , int iosphone , int androidphone ) {

		String Table = DB.getTable();
		int ID = Integer.parseInt(id);
		int Sum = (pc*40000)+(lcd*5000)+(ram*2000)+(mouse*500)
				+(keyboard*1000)+(iosphone*30000)+(androidphone*25000)+(windows*5000);;
		try {
			String sql = "update " + Table + " set pc=? ,windows=? , lcd=? , ram=? , mouse=? , keyboard=? , iosphone=? , androidphone=? , sum=? where id="+ID;
			Connection conn = DB.ConnectionDB();	
			PreparedStatement ps = conn.prepareStatement(sql);

			ps.setInt(1, pc);
			ps.setInt(2, windows);
			ps.setInt(3, lcd);
			ps.setInt(4, ram);
			ps.setInt(5, mouse);
			ps.setInt(6, keyboard);
			ps.setInt(7, iosphone);
			ps.setInt(8, androidphone);
			ps.setInt(9, Sum);
			ps.executeUpdate();
		} catch (SQLException ex) {
			Logger.getLogger(PorderDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
	}

	public static void PorderDelete(String id) {

		String Table = DB.getTable();

		try {
			String sql = "delete from " + Table + " where id=" + id;

			Connection conn = DB.ConnectionDB();

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.executeUpdate();

		} catch (SQLException ex) {
			Logger.getLogger(PorderDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
	}
}
