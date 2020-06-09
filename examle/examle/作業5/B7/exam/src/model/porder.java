package model;

public class porder {
	private String name;
	private int table_number;
	private int apple;
	private int bread;
	private int cake;
	private int sum;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getTable_number() {
		return table_number;
	}
	public void setTable_number(int table_number) {
		this.table_number = table_number;
	}
	public int getApple() {
		return apple;
	}
	public void setApple(int apple) {
		this.apple = apple;
	}
	public int getBread() {
		return bread;
	}
	public void setBread(int bread) {
		this.bread = bread;
	}
	public int getCake() {
		return cake;
	}
	public void setCake(int cake) {
		this.cake = cake;
	}
	public int getSum() {
		sum=apple*95+bread*65+cake*120;
		
		return sum;
	}
	
	
	
}
