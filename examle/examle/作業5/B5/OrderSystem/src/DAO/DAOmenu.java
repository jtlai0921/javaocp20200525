package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import MODEL.menu;
public class DAOmenu implements implDAO{

	public static void main(String[] args) {
		menu a=new menu();
		
		a.setA(500);
		a.setB(30);
		a.setAp(30);
		a.setBp(30);
		a.setTableNumber(15);
		/*new DAOmenu().add(a);
		new DAOmenu().query();*/
		//new DAOmenu().update(1, a);
		new DAOmenu().delete(2);

	}


	@Override
	public void add(Object o) {
		menu a=(menu) o;
		Connection conn=Dbconn.getConn();
		String sql="insert into orderdatabase.foodpan(tableNumber,A,Ap,B,Bp,sum) values"
				+ " (?,?,?,?,?,?)";
		try {
			PreparedStatement p=conn.prepareStatement(sql);
			p.setInt(1,a.getTableNumber() );
			p.setInt(2,a.getA());
			p.setInt(3,a.getAp());
			p.setInt(4,a.getB());
			p.setInt(5,a.getBp() );
			p.setInt(6, a.getSum());
			p.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("no add");
		}
		
		
	}
	@Override
	public ResultSet query() {
		Connection conn=Dbconn.getConn();
		String sql="select *from foodpan";
		ResultSet rs=null;
		try {
			Statement s=conn.createStatement();
			rs=s.executeQuery(sql);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("no read");
		}
		
		return rs;
	}
	@Override
	public void update(int id, Object o) {
		menu a=(menu)o;
		String sql="update foodpan set tableNumber="+a.getTableNumber()
		+",A="+a.getA()+",Ap="+a.getAp()+",B="+a.getB()+",Bp="+a.getBp()+
		",sum="+a.getSum()+" where id ="+id;
		Connection conn=Dbconn.getConn();
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("no update");
		}
		
				
		
		
		
	}

	@Override
	public void delete(int id) {
		String sql="delete from foodpan where id="+id;
		Connection conn=Dbconn.getConn();
		try {
			PreparedStatement ps= conn.prepareStatement(sql);
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("no delete");
		}
		
	}


	
}
