package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import model.eat;


public class eatDAO implements implDAO{

	public static void main(String[] args) {
		eat e=new eat("C",2,5,1);
		
		new eatDAO().add(e);
	}
	@Override
	public void add(Object o) {
		eat e=(eat)o;
		String sql="insert into eat(tnumber,rice,noodles,blacktea,sum) values(?,?,?,?,?)";
		try {
			PreparedStatement ps=(implDAO.implConn()).prepareStatement(sql);
			ps.setString(1, e.getTnumber());
			ps.setInt(2, e.getRice());
			ps.setInt(3, e.getNoodles());
			ps.setInt(4, e.getBlacktea());
			ps.setInt(5, e.getSum());
			ps.executeUpdate();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	}

	@Override
	public ResultSet query() {
		String sql="select * from eat";
		ResultSet rs=null;
		try {
			rs = ((implDAO.implConn()).createStatement()).executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}

	@Override
	public void update(int id, Object o) {
		eat e=(eat)o;
		String sql="update eat set tnumber=?,rice=?,noodles=?,blacktea=?,sum=? where id="+id;
		try {
			PreparedStatement ps=(implDAO.implConn()).prepareStatement(sql);
			ps.setString(1, e.getTnumber());
			ps.setInt(2, e.getRice());
			ps.setInt(3, e.getNoodles());
			ps.setInt(4, e.getBlacktea());
			ps.setInt(5, e.getSum());
			ps.executeUpdate();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
	}

	@Override
	public void delete(int id) {
		String sql="delete from eat where id="+id;
		try {
			PreparedStatement ps=(implDAO.implConn()).prepareStatement(sql);
			ps.executeUpdate();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
	}

}
