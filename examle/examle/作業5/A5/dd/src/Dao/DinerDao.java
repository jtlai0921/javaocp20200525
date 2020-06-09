package Dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Model.Diner;

public class DinerDao implements implDao{
	
	public static void main(String[] args) {
		Diner d=new Diner();
		d.setName("allen");
		d.setMac(5);
		d.setSteak(5);
		d.setFries(5);
		d.setTable(5);
		new DinerDao().add(d);
		//new DinerDao().delete(6);
		//System.out.print(implDao.get());
		//new DinerDao().add("Alan", 1, 3, 2,5);
		/*Diner o=new Diner();
		o.setName("bob");
		o.setMac(3);
		o.setSteak(3);
		o.setTable(3);
		o.setFries(3);
		
		new DinerDao().update(1, o);*/
		//new DinerDao().delete(2);
		//new DinerDao().query();
		/*ResultSet rs=null;
		String id,c,n,m,s,f,sum;

		rs=new DinerDao().query();
		try {
			while(rs.next())System.out.println(
					rs.getString("id")
					+" "+rs.getString("customer")
					+" "+rs.getString("num")
					+" "+rs.getString("mac")
					+" "+rs.getString("steak")
					+" "+rs.getString("fries")
					+" "+rs.getString("sum"));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
		 /*id=rs.getString("id");
		 c=rs.getString("customer");
		 n=rs.getString("num");
		 m=rs.getString("mac");
		 s=rs.getString("steak");
		 f=rs.getString("fries");
		 sum=rs.getString("sum");
		
		 if(rs.next())
		 System.out.println(id+"  Customer="+c+"  Table="+n+"  Big Mac="
				   +m+"  Suos Vide Steak="+s+"  French Fries="+f+"  Sum="+sum);
		}catch(NullPointerException e) {
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		*/

	}

	@Override
	public void add(String customer,int table,int mac,int steak,int fries) {
		String sql="insert into uorder"
				+ "(customer,num,mac,steak,fries,sum) "
				+ "values (?,?,?,?,?,?)";
		Diner d=new Diner();
		d.setName(customer);
		d.setTable(table);
		d.setMac(mac);
		d.setSteak(steak);
		d.setFries(fries);
		
		try {
			PreparedStatement ps=(implDao.get()).prepareStatement(sql);
			ps.setString(1, d.getName());
			ps.setInt(2, d.getTable());
			ps.setInt(3, d.getMac());
			ps.setInt(4, d.getSteak());
			ps.setInt(5, d.getFries());
			ps.setInt(6, d.getSum());
			ps.executeUpdate();
			
		} catch (SQLException e) {
			System.out.print("no Connection");
			e.printStackTrace();
		}
		
	}
	public void add(Object o) {
		String sql="insert into uorder"
				+ "(customer,num,mac,steak,fries,sum) "
				+ "values (?,?,?,?,?,?)";
		
		Diner d=(Diner)o;
		/*d.setName(d.getName());
		d.setTable(d.getTable());
		d.setMac(d.getMac());
		d.setSteak(d.getSteak());
		d.setFries(d.getFries());*/
		
		try {
			PreparedStatement ps=(implDao.get()).prepareStatement(sql);
			ps.setString(1, d.getName());
			ps.setInt(2, d.getTable());
			ps.setInt(3, d.getMac());
			ps.setInt(4, d.getSteak());
			ps.setInt(5, d.getFries());
			ps.setInt(6, d.getSum());
			ps.executeUpdate();
			
		} catch (SQLException e) {
			System.out.print("no Connection");
			e.printStackTrace();
		}
		
	}

	@Override
	public ResultSet query() {
		String sql="select * from uorder";
		ResultSet rs=null;
		try {
			rs=((implDao.get())
							.createStatement())
							.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return rs;
	}

	@Override
	public void update(int id,Object o) {
		Diner d=(Diner)o;
		String sql="update uorder set customer=?,num=?"
				+ ",mac=?,steak=?,fries=?,sum=? where id=?";
		try {
			PreparedStatement ps=implDao.get()
								.prepareStatement(sql);
			ps.setString(1, d.getName());
			ps.setInt(2, d.getTable());
			ps.setInt(3, d.getMac());
			ps.setInt(4, d.getSteak());
			ps.setInt(5, d.getFries());
			ps.setInt(6, d.getSum());
			ps.setInt(7, id);
			ps.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

	@Override
	public void delete(int id) {
		String sql="delete from uorder where id ="+id;
		try {
			PreparedStatement ps=implDao.get()
									.prepareStatement(sql);
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
