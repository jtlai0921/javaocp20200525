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
		new forderDAO().add(f);//�s�W�����դ�k*/
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
		}//�d�ߪ����դ�k*/
	//===========================================	
		/*forder f=new forder(); 
		f.setTableNb(5);
		f.setSteak(20);
		f.setPorkChops(60);
		f.setChickenSteak(60);
		f.setWine(60);
		f.setSoda(60);
		new forderDAO().update(1, f);//�bmain�̭����ҧ�s����k*/
	//===========================================	
		
		
}

	@Override
	public void add(Object o) { //�갵�s�W��k
		
		forder f=(forder)o;
		String sql="insert into forder(tableNb,steak,porkChops,chickenSteak,wine,soda,sum) value(?,?,?,?,?,?,?)";
		//sql�y�k ��ܿ�J
		Connection conn=DbConn.get(); //conn����DbConn.get()>>�s�u��
		
		try 
		{
			PreparedStatement ps=conn.prepareStatement(sql); //ps����conn.prepareStatement��k(�a�Jsql)
			ps.setInt(1, f.getTableNb());
			ps.setInt(2, f.getSteak());
			ps.setInt(3, f.getPorkChops());
			ps.setInt(4, f.getChickenSteak());
			ps.setInt(5, f.getWine());
			ps.setInt(6, f.getSoda());  //����g�J�s�W���ܼ�
			ps.setInt(7, f.getSum());
			
			ps.executeUpdate();
		} 
		
		catch (SQLException e) //PreparedStatement�|�ݭntry catch
		{
			e.printStackTrace();
		}	
	}

	@Override
	public ResultSet query() {  //�갵�d�ߤ�k
		
		Connection conn=DbConn.get(); //conn����DbConn.get()>>�s�u��
		String sql="select * from forder";  //sql�y�k *��ܬd�ߥ���
		ResultSet rs=null;  //����rs�@�Ӫŭ�
		
		try 
		{
			Statement st=conn.createStatement(); //conn.createStatement()����st(��Statement�ŧi)
			rs=st.executeQuery(sql);
		} 
		catch (SQLException e) 
		{	
			e.printStackTrace();
		}
		
		return rs; //�O�oreturn���Ors
	}

	@Override
	public void update(int id, Object o) {  //�갵�ק��k
		
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
	public void delete(int id) {  //�갵�R����k
		
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
