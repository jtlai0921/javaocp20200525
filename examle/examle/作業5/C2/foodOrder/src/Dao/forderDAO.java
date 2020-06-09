package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import model.forder;

public class forderDAO implements implDao {

	public static void main(String[] args) {
		
		/*forder f=new forder();
		f.setTableNb("1");
		f.setSteak(2);
		f.setPorkChops(3);
		f.setChickenSteak(0);
		f.setWine(2);
		f.setSoda(2);
		new forderDAO().add(f);//新增的測試方法*/
	//===========================================
		/*ResultSet rs=new forderDAO().query();		
		try 
		{
			rs.next();
			System.out.println(rs.getString("tableNb")+rs.getString("steak"));
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}//查詢的測試方法*/
	//===========================================	
		/*forder f=new forder(); 
		f.setTableNb(5);
		f.setSteak(20);
		f.setPorkChops(60);
		f.setChickenSteak(60);
		f.setWine(60);
		f.setSoda(60);
		new forderDAO().update(1, f);//在main裡面驗證更新的方法*/
	//===========================================	
		
		
}

	@Override
	public void add(Object o) { //實做新增方法
		
		forder f=(forder)o;
		String sql="insert into forder(tableNb,steak,porkChops,chickenSteak,wine,soda,sum) value(?,?,?,?,?,?,?)";
		//sql語法 表示輸入
		Connection conn=DbConn.get(); //conn等於DbConn.get()>>連線頁
		
		try 
		{
			PreparedStatement ps=conn.prepareStatement(sql); //ps等於conn.prepareStatement方法(帶入sql)
			ps.setInt(1, f.getTableNb());
			ps.setInt(2, f.getSteak());
			ps.setInt(3, f.getPorkChops());
			ps.setInt(4, f.getChickenSteak());
			ps.setInt(5, f.getWine());
			ps.setInt(6, f.getSoda());  //等於寫入新增的變數
			ps.setInt(7, f.getSum());
			
			ps.executeUpdate();
		} 
		
		catch (SQLException e) //PreparedStatement會需要try catch
		{
			e.printStackTrace();
		}	
	}

	@Override
	public ResultSet query() {  //實做查詢方法
		
		Connection conn=DbConn.get(); //conn等於DbConn.get()>>連線頁
		String sql="select * from forder";  //sql語法 *表示查詢全部
		ResultSet rs=null;  //先給rs一個空值
		
		try 
		{
			Statement st=conn.createStatement(); //conn.createStatement()等於st(用Statement宣告)
			rs=st.executeQuery(sql);
		} 
		catch (SQLException e) 
		{	
			e.printStackTrace();
		}
		
		return rs; //記得return的是rs
	}

	@Override
	public void update(int id, Object o) {  //實做修改方法
		
		forder f=(forder)o;
		String sql="update forder set tableNb=?,steak=?,porkChops=?,chickenSteak=?,wine=?,soda=?,sum=? where id=?";
		Connection conn=DbConn.get();
		
		try 
		{
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, f.getTableNb());
			ps.setInt(2, f.getSteak());
			ps.setInt(3, f.getPorkChops());
			ps.setInt(4, f.getChickenSteak());
			ps.setInt(5, f.getWine());
			ps.setInt(6, f.getSoda());
			ps.setInt(7, f.getSum());
			ps.setInt(8, id);
			
			ps.executeUpdate();
			
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		
	}

	@Override
	public void delete(int id) {  //實做刪除方法
		
		String sql="delete from forder where id="+id;
		
		Connection conn=DbConn.get();
		
		try 
		{
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.executeUpdate();
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		
	}

}
