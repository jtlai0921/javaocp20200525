package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import model.sushi;

public class sushiDao {

	public static void main(String[] args) {
		// System.out.println(new sushiDao().getConn());
		// new sushiDao().writeDB(new sushi("we", "2", "2", "3", "4"));
		new sushiDao().writeDB(1);

	}

	private Connection getConn() {
		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306", "root", "1234");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}

	public void writeDB(Object o) {
		String sql = "insert into food.sushi(name,a1,b1,c1,d1,e1,f1,g1,h1,sum) values('" + ((sushi) o).getName() + "',"
				+ ((sushi) o).getFooda1() + "," + ((sushi) o).getFoodb1() + "," + ((sushi) o).getFoodc1() + ","
				+ ((sushi) o).getFoodd1() + "," + ((sushi) o).getFoode1() + "," + ((sushi) o).getFoodf1() + ","
				+ ((sushi) o).getFoodg1() + "," + ((sushi) o).getFoodh1() + "," + ((sushi) o).getSum() + ")";
		send(sql);
	}

	public void writeDB(int id, Object o) {
		String sql = "update food.sushi set name='" + ((sushi) o).getName() + "',a1=" + ((sushi) o).getFooda1() + ",b1="
				+ ((sushi) o).getFoodb1() + ",c1=" + ((sushi) o).getFoodc1() + ",d1=" + ((sushi) o).getFoodd1() + ",e1="
				+ ((sushi) o).getFoode1() + ",f1=" + ((sushi) o).getFoodf1() + ",g1=" + ((sushi) o).getFoodg1() + ",h1="
				+ ((sushi) o).getFoodh1() + ",sum=" + ((sushi) o).getSum() + " where id=" + id;
		send(sql);
	}

	public void writeDB(int id) {
		String sql = "delete from food.sushi where id=" + id;
		send(sql);
	}

	/* Åª¥X¸ê®Æ®w */
	public ResultSet readDb() {
		String sql = "select * from food.sushi";
		return rec(sql);
	}

	public ResultSet readDb(int id) {
		String sql = "select * from food.sushi where id=" + id;
		return rec(sql);
	}

	private void send(String sql) {
		try {
			Statement st = getConn().createStatement();
			st.executeUpdate(sql);
			//st.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	private ResultSet rec(String sql) {
		ResultSet rs = null;
		try {
			Statement st = getConn().createStatement();
			rs = st.executeQuery(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}
}
