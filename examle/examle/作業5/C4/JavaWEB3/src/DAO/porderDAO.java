package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import model.porder;

public class porderDAO implements implDao {

	public static void main(String[] args) {
		/*穝糤⑾⒁⒁ぇ代刚*/
		/*porder p=new porder();	
		p.setNew_desk("test");			
		p.setNew_dishes1(5);				
		p.setNew_dishes2(5);
		p.setNew_dishes3(5);
		new porderDAO().add(p);	*/
		/*----------и琌だ筳絬----------*/
		/*琩高⑦€⒂⑧㈢ぇ代刚*/
		//System.out.println(new porderDAO().query());
		/*ResultSet rs=new porderDAO().query();		
		try {										
			rs.next();								
			System.out.println(rs.getString("name"));
		} catch (SQLException e) {					
			// TODO Auto-generated catch block		
			e.printStackTrace();					
		}*/											
		/*----------и琌だ筳絬----------*/
		/*穝€⑥⒁⑾⑩⒂ぇ代刚*/
		/*porder p=new porder();
		p.setNew_desk("Test");			
		p.setNew_dishes1(5);				
		p.setNew_dishes2(5);
		p.setNew_dishes3(5);
		new porderDAO().update(1, p);*/
		/*----------и琌だ筳絬----------*/	
		/*porder p = new porder();
		p.setName("test");
		p.setRuler(5);
		p.setPen(5);		
		new porderDAO().update(11, p);*/
	}

	@Override
	public void add(Object o) {
		porder p = (porder) o;
		String sql = "insert into new_menu(new_desk,new_dishes1,new_dishes2,new_dishes3,new_sum) values(?,?,?,?,?)";
		Connection conn = DBconn.getConn();
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, p.getNew_desk());
			ps.setInt(2, p.getNew_dishes1());
			ps.setInt(3, p.getNew_dishes2());
			ps.setInt(4, p.getNew_dishes3());
			ps.setInt(5, p.getNew_sum());
			ps.executeUpdate();
		} catch (SQLException e) {

			e.printStackTrace();
		}
	}

	@Override
	public ResultSet query() {
		Connection conn = DBconn.getConn();
		String sql = "SELECT * FROM menu.new_menu";
		ResultSet rs = null;
		try {
			Statement st = conn.createStatement();
			rs = st.executeQuery(sql);
		} catch (SQLException e) {

			e.printStackTrace();
		}

		return rs;
	}

	@Override
	public void update(int id, Object o) {
		porder p=(porder)o;
		String sql="update new_menu set new_desk='"+p.getNew_desk()+
				"', new_dishes1="+p.getNew_dishes1()+
				", new_dishes2="+p.getNew_dishes2()+
				", new_dishes3="+p.getNew_dishes3()+
				" , new_sum="+p.getNew_sum()+
				" where id="+id;
		Connection conn=DBconn.getConn();
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void update2(int id, Object o) {
		porder p=(porder)o;
		
		String sql="update new_menu set new_desk=?,new_dishes1=?,new_dishes2=?,new_dishes3=?,new_sum=? where id=?";
		
		
		Connection conn=DBconn.getConn();
		
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, p.getNew_desk());
			ps.setInt(2, p.getNew_dishes1());
			ps.setInt(3, p.getNew_dishes2());
			ps.setInt(4, p.getNew_dishes3());
			ps.setInt(5, p.getNew_sum());
			ps.setInt(6, id);
			ps.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	@Override
	public void delete(int id) {
String sql="delete from new_menu where id="+id;		
		Connection conn=DBconn.getConn();		
		try {
			PreparedStatement ps=conn.prepareStatement(sql);			
			ps.executeUpdate();			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
