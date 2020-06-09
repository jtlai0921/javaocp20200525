package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import Other.Tools;

public class daoPorder implements iPorder {
	String sql;
	String tableName = "gjun.Porder";
	boolean b;

	@Override
	public boolean edit(Porder po) {

		if (po.getAction().equals("add")) {
			sql = "insert into " + tableName + "(name,ruler,pen,product1,product2,product3,product4,product5"
					+ ",add1,add2,add3,add4,add5,sum) " + "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		} else {
			sql = "update " + tableName + " set name = ? , ruler = ? , pen = ? "
					+ ", product1 = ? , product2 = ? , product3 = ? , product4 = ? , product5 = ? "
					+ ", add1 = ? , add2 = ? , add3 = ? , add4 = ? , add5 = ? , sum = ? " + "where id = ? ";
		}

		try {
			PreparedStatement ps = iPorder.getConn().prepareStatement(sql);
			int sum = po.getProduct1() * $2 + po.getProduct2() * $3 + po.getProduct3() * $2 + po.getProduct4() * $2
					+ po.getProduct5() * $3 + po.getAdd1() * add + po.getAdd2() * add + po.getAdd3() * add
					+ po.getAdd4() * add + po.getAdd5() * add;
			ps.setString(1, po.getName());
			ps.setInt(2, po.getRuler());
			ps.setInt(3, po.getPen());
			ps.setInt(4, po.getProduct1());
			ps.setInt(5, po.getProduct2());
			ps.setInt(6, po.getProduct3());
			ps.setInt(7, po.getProduct4());
			ps.setInt(8, po.getProduct5());
			ps.setInt(9, po.getAdd1());
			ps.setInt(10, po.getAdd2());
			ps.setInt(11, po.getAdd3());
			ps.setInt(12, po.getAdd4());
			ps.setInt(13, po.getAdd5());
			ps.setInt(14, sum);

			if (po.getAction().equals("update"))
				ps.setInt(15, po.getId());

			b = ps.executeUpdate() > 0;
		} catch (SQLException e) {
			Tools.p(e);
		}

		return b;
	}

	@Override
	public boolean del(Porder po) {
		sql = "delete from " + tableName + " where id = ? ";

		try {
			PreparedStatement ps = iPorder.getConn().prepareStatement(sql);
			ps.setInt(1, po.getId());
			b = ps.executeUpdate() > 0;
		} catch (SQLException e) {
			Tools.p(e);
		}

		return b;
	}

	@Override
	public ArrayList<Porder> query(Porder po) {
		sql = "select * from " + tableName;
		if (po != null) {
			sql += " where id = " + po.getId();
		}
		sql += " order by id desc";
		
		ArrayList<Porder> arr = new ArrayList();
		Porder rsPo;
		try {
			Statement st = iPorder.getConn().createStatement();
			ResultSet rs = st.executeQuery(sql);
			while (rs.next()) {
				rsPo = new Porder();
				rsPo.setId(rs.getInt("id"));
				rsPo.setName(rs.getString("name"));
				rsPo.setRuler(rs.getInt("ruler"));
				rsPo.setPen(rs.getInt("pen"));
				rsPo.setProduct1(rs.getInt("product1"));
				rsPo.setProduct2(rs.getInt("product2"));
				rsPo.setProduct3(rs.getInt("product3"));
				rsPo.setProduct4(rs.getInt("product4"));
				rsPo.setProduct5(rs.getInt("product5"));
				rsPo.setAdd1(rs.getInt("add1"));
				rsPo.setAdd2(rs.getInt("add2"));
				rsPo.setAdd3(rs.getInt("add3"));
				rsPo.setAdd4(rs.getInt("add4"));
				rsPo.setAdd5(rs.getInt("add5"));
				rsPo.setSum(rs.getInt("sum"));
				arr.add(rsPo);
			}
		} catch (SQLException e) {
			Tools.p(e);
		}

		return arr;
	}

	public static void main(String[] arg) {

		iPorder.getConn();
		ArrayList<Porder> arr = new daoPorder().query(null);
		Tools.p(arr.size());
	}

}
