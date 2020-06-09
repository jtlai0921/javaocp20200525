package model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import Dao.DbConn;

public class morder {
	private int id;
	private String name;
	private int tablenumber;
	private int rice;
	private int noodles;
	private int hamburger;
	private int sum;

	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getRice() {
		return rice;
	}
	public void setRice(int rice) {
		this.rice = rice;
	}
	public int getNoodles() {
		return noodles;
	}
	public void setNoodles(int noodles) {
		this.noodles = noodles;
	}
	public int getHamburger() {
		return hamburger;
	}
	public void setHamburger(int hamburger) {
		this.hamburger = hamburger;
	}
	public int getTablenumber() {
		return tablenumber;
	}
	public void setTablenumber(int tablenumber) {
		this.tablenumber = tablenumber;
	}
	public int getSum() {
		sum=rice*100+noodles*110+hamburger*120;
		return sum;
	}	
}
