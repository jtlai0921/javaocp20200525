package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import model.menu;

public class menuDAO implements implDao {
	
	public static void main(String[] args) {
	
	menu m=new menu();
	m.setDesk(1);
	m.setCoffee(1);
	m.setTea(3);
	m.setSalad(4);
	m.setPanini(0);
	m.setBagel(1);
	m.setPudding(2);
	m.setCake(1);
	
	new menuDAO().add(m);
	}

	@Override
	public void add(Object o) {
		
		menu m=(menu)o;
		String sql="insert into menu(desk,coffee,tea,salad,panini,bagel,pudding,cake,sum) values(?,?,?,?,?,?,?,?,?)";
		Connection conn=DbConn.get();
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			
			ps.setInt(1, m.getDesk());
			ps.setInt(2, m.getCoffee());
			ps.setInt(3, m.getTea());
			ps.setInt(4, m.getSalad());
			ps.setInt(5, m.getPanini());
			ps.setInt(6, m.getBagel());
			ps.setInt(7, m.getPudding());
			ps.setInt(8, m.getCake());
			ps.setInt(9, m.getSum());
			
			ps.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	@Override
	public ResultSet query() {
		Connection conn=DbConn.get();//先連線
		String sql="select * from menu";//查詢sql語法
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
        
        menu m=(menu)o;
				
		String sql="update menu set desk=?,coffee=?,tea=?,salad=?,panini=?,bagel=?,pudding=?,cake=?,sum=? where id=?";
					
		Connection conn=DbConn.get();
		
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
		
			ps.setInt(1, m.getDesk());
			ps.setInt(2, m.getCoffee());
			ps.setInt(3, m.getTea());
			ps.setInt(4, m.getSalad());
			ps.setInt(5, m.getPanini());
			ps.setInt(6, m.getBagel());
			ps.setInt(7, m.getPudding());
			ps.setInt(8, m.getCake());
			ps.setInt(9, m.getSum());
			ps.setInt(10, id);
			
			ps.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
		
	

	@Override
	public void delete(int id) {
	       
		String sql="delete from menu where id="+id;
				
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
