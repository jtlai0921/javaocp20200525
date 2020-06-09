package Dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import model.food;
import model.orderhead;
import model.orderline;
import model.ordertable;

public class companyDao implements implDao {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/* insert ordertable
		ordertable ot= new ordertable();
		ot.setTablename("1table");
		new companyDao().add("ordertable", ot);
		
		*/
		/* insert food table
		food fo=new food();
		fo.setFoodname("one food");
		fo.setPrice(100);
		fo.setImg("1.img");
		new  companyDao().add("food", fo);
		*/
		//insert orderhead table
		//orderhead oh=new orderhead();
		//oh.setOrderno("20201712");
		//oh.setTableid(2);
		//new  companyDao().add("orderhead", oh);
		
		/*orderline ol=new orderline();
		ol.setQty(2);
		new  companyDao().addlin("20201712",1, ol);
		*/
		/*
		 ResultSet rs=new companyDao().query("selecttable","12003203929");
		 try {
			while(rs.next())
			 {
				  System.out.println(rs.getString("tablename"));
			 }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		};
		
		*/
		//System.out.println(1%3);
		
	/*	ResultSet rs =new companyDao().query("selectfood","12003203929");
		try {
			while ( rs.next())
			   {
				System.out.println(rs.getInt("orderid"));
				System.out.println(rs.getString("orderno"));
				System.out.println(rs.getInt("foodid"));
				System.out.println(rs.getInt("qty"));
				System.out.println(rs.getString("foodname"));
				System.out.println(rs.getString("img"));
				
				
				
			   }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		*/
		 //new companyDao().delete(4, "orderheadline");
		//new companyDao().delete(2,"ordertable");
		orderline oe=new orderline();
		oe.setQty(5);
		new  companyDao().update(20, oe, "orderlind");
		
	}

	@Override
	public void add(String table,Object o) {
		// TODO Auto-generated method stub
		String sql="";
		if(table=="ordertable")
		{
			ordertable ot=(ordertable)o;
			sql="insert into ordertable (tablename) values('"+ot.getTablename()+ "')";
			
		}
		if(table=="food")
		{
			food fo=(food)o;
			sql="insert into food (foodname,price,img) values('"+
			fo.getFoodname()+"',"+fo.getPrice()+",'"+fo.getImg()+"' )";
			
			//System.out.println(sql);
		}
			
		if(table=="orderhead")
		{
			orderhead oh=(orderhead)o;
			sql="insert into orderhead(orderno,tableid) values('"
					+ oh.getOrderno() +"',"+oh.getTableid()+")";
			System.out.println("orderhead=="+sql);
			
		}
		
		Connection conn=DbConn.get();
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	@Override
	public  void addlin(String orderno,Object o){
		// TODO Auto-generated method stub
	   int getid=0;
	   String sql1=" SELECT orderid FROM company.orderhead where orderno='"+orderno+"'";
	   
	  
	   Connection conn=DbConn.get();
	   ResultSet rs=null;
	   Statement st;
	   try {
		st = conn.createStatement();
		rs=st.executeQuery(sql1);
		while(rs.next())
		{
			getid=rs.getInt("orderid");
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	   
	   orderline ol=(orderline)o;
	  // System.out.println("orderno==>"+getno);
	   String sql="insert into orderline(orderid,foodid,qty)"+
	              "values('"+getid+ "',"+ol.getFoodid()+","+ol.getQty() +")";
	   System.out.println(sql);
	   try {
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.executeUpdate();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		
	}

	@Override
	public ResultSet query(String tables) {
		// TODO Auto-generated method stub
		Connection conn=DbConn.get();
		ResultSet rs=null;
		String sql="";
		if(tables=="ordertable")
		{
			sql="select * from company.ordertable";	
		}
		if(tables=="food")
		{
			sql="SELECT foodid,foodname,price,img FROM company.food";
			System.out.println(sql);
		}
		if(tables=="showtable")
		{
			sql="SELECT  TABLE_NAME  FROM information_schema.TABLES"+
					" where TABLE_SCHEMA='company'and "+
					" TABLE_NAME not in('orderhead','orderline')";
		}
		//query food subquery
		if(tables=="subfood")
		{
			sql="SELECT a.foodid,a.foodname,a.price,a.img" + 
					",if((select count(b.foodid) from company.orderline b where a.foodid=b.foodid)<=0,'true','false') as edit" + 
					" from company.food  a";
			System.out.println(sql);
		}
		//query tablename subquery
		if(tables=="subtablename")
		{
			sql="SELECT a.tableid,a.tablename," + 
					"if(" + 
					" (select count(b.orderno) from company.orderhead b where b.tableid=a.tableid)" + 
					"   <=0,'true','false') as edit" + 
					" FROM " + 
					" company.ordertable a";
		}
		if(tables=="orderv_sums")
		{
			sql="select a.orderid, a.orderno,b.tablename,sum(c.qty*d.price) as sum " + 
					"from " + 
					" company.orderhead a, " + 
					" company.ordertable b, " + 
					" company.orderline c, " + 
					" company.food d " + 
					" where " + 
					" a.tableid=b.tableid " + 
					" and " + 
					" a.orderid=c.orderid " + 
					" and " + 
					" c.foodid=d.foodid " + 
					" group by  a.orderno,b.tablename ";
			System.out.println(sql);
					
		}
		Statement st;
		try {
			st = conn.createStatement();
			rs=st.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}

	@Override
	public void update(int id, Object o,String tables) {
		// TODO Auto-generated method stub
		String sql="";
		if(tables=="food")
		{
		    food fo=(food)o;
			sql="update company.food set foodname='"+fo.getFoodname()+
				"' ,price="+fo.getPrice()+", img='"+fo.getImg()+"' where foodid="+id;
		}
			
		if(tables=="ordertable")
		{
			ordertable or=(ordertable)o;
			sql="update company.ordertable set tablename='"+or.getTablename()+"' "
			  +" where tableid="+id;
			
		}
		if(tables=="orderhead")
		{
			orderhead oh=(orderhead)o;
			sql="update company.orderhead set tableid='"+oh.getTableid()+"' "
				+"where orderid="+id;
		}
		if(tables=="orderline")
		{
			orderline oe=(orderline)o;
			sql="update company.orderline set qty='"+oe.getQty()+"' "
					+"where orderlineid="+id;
			System.out.print(sql);
		}
	
		Connection conn=DbConn.get();
			try {
				PreparedStatement ps=conn.prepareStatement(sql);
				ps.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		
	}

	@Override
	public void delete(int id,String tables) {
		// TODO Auto-generated method stub
		String sql="";
		if(tables=="ordertable")
		{
			sql="delete from ordertable where  tableid="+id;
			System.out.println("sql");
		}
		if(tables=="food")
		{
			sql="delete from company.food where  foodid="+id;
		}
		if(tables=="orderhead")
		{
			sql="delete from company.orderhead where orderid="+id;
		}
		if(tables=="orderheadline")
		{
			sql="delete from company.orderline where orderid="+id;
			System.out.print(sql);
		}
		if(tables=="orderline")
		{
			sql="delete fomr orderline where orderline="+id;
		}
		Connection conn=DbConn.get();
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public ResultSet query(String tables, String cfield) {
		// TODO Auto-generated method stub
		Connection conn=DbConn.get();
		ResultSet rs=null;
		String sql="";
		if(tables=="orderhead")
		{
			sql="SELECT orderid,orderno FROM company.orderhead where orderno='"
					+ cfield+"'";
			
		}
		if(tables=="orderv_sum")
		{
			sql="SELECT orderno,tablename,sum FROM company.orderv_sum where orderno='"+cfield+"'";
		}
		
		if(tables=="orderv_d")
		{
			sql="SELECT orderno,tablename,foodname,price,qty,l_sum FROM company.orderv_d where orderno='"
					+ cfield+"'";
			;
		}
		if(tables=="food")
		{
			sql="select foodid,foodname,price,img from food where foodname like'%"+cfield+"%'";
			
		}
		if(tables=="ordertable")
		{
			sql="select tableid,tablename from ordertable where tablename like '%"+
					cfield+"%'";
		}
		if(tables=="orderv_ds")
		{
			sql="SELECT orderno,tablename,foodname,price,qty,l_sum FROM company.orderv_d where orderno like '%"
					+ cfield+"%'";
			//System.out.println("orderv_d sql==>"+sql);
		}
		if(tables=="orderv_sums")
		{
			sql="SELECT orderno,tablename,sum FROM company.orderv_sum where  orderno like '%"
					+cfield+"%'";
		}
		if(tables=="selecttable")
		{
			sql="SELECT a.orderid,a.orderno,b.tableid,b.tablename FROM company.orderhead as a, company.ordertable as b "+
		     " where orderno='"+ cfield+"' and a.tableid=b.tableid";
			
			//System.out.println(sql);
		}
		if(tables=="selectfood")
		{
			sql="SELECT a.orderid,a.orderno,b.foodid,b.qty,b.orderlineid ,c.img"+ 
	    	" ,c.price ,c.foodname FROM company.orderhead as a, company.orderline as b, "+
			" company.food as c where orderno='"+ cfield+"' and a.orderid=b.orderid and b.foodid=c.foodid";
			//System.out.println(sql);
		}
		Statement st;
		try {
			st = conn.createStatement();
			rs=st.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return rs;
	}

	@Override
	public ResultSet query(String tables,String id,String inid) {
		// TODO Auto-generated method stub
		Connection conn=DbConn.get();
		ResultSet rs=null;
		String sql="";
		if(tables=="orderhead")
		{
			sql="SELECT orderid,orderno FROM company.orderhead where orderid='"
					+ id+"'";
			
		}

		if(tables=="food")
		{
			sql="select foodid,foodname,price,img from company.food where foodid='"+id+"'";
			System.out.println(sql);
			
		}
		if(tables=="ordertable")
		{
			sql="select tableid,tablename from company.ordertable where tableid='"+id+"'";
					
		}
		if(tables=="orderheadline")
		{
			sql="select orderlineid,qty,foodid from company.orderline where orderid='"+id+"'";
		}
		Statement st;
		try {
			st = conn.createStatement();
			rs=st.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return rs;
	}

}