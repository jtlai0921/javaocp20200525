package model;

public class menu {
	private int tableNum;
	private int m1;	//A餐
	private int m2;	//B餐
	private int m3;	//C餐
	private int member;	//會員等級
	private int sum;	//總金額
	private String name;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getTableNum() {
		return tableNum;
	}
	public void setTableNum(int tableNum) {
		this.tableNum = tableNum;
	}
	public int getM1() {
		return m1;
	}
	public void setM1(int m1) {
		this.m1 = m1;
	}
	public int getM2() {
		return m2;
	}
	public void setM2(int m2) {
		this.m2 = m2;
	}
	public int getM3() {
		return m3;
	}
	public void setM3(int m3) {
		this.m3 = m3;
	}
	public int getMember() {
		return member;
	}
	public void setMember(int member) {
		this.member = member;
	}
	public int getSum() {
		sum=m1*550+m2*790+m3*990;
		if(member==2) sum=sum*95/100;
		if(member==3) sum=sum*90/100;
		if(member==4) sum=sum*85/100;
		
		return sum;
	}
	
}
