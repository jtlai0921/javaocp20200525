package model;

public class porder {
	private String name;
	private String table_number;
	private int firepork;
	private int cookpork;
	private int chicken;
	private int sum;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTable_number() {
		return table_number;
	}
	public void setTable_number(String table_number) {
		this.table_number = table_number;
	}
	public int getFirePork() {
		return firepork;
	}
	public void setFirePork(int apple) {
		this.firepork = apple;
	}
	public int getCookPork() {
		return cookpork;
	}
	public void setCookPork(int bread) {
		this.cookpork = bread;
	}
	public int getChicken() {
		return chicken;
	}
	public void setChicken(int cake) {
		this.chicken = cake;
	}
	public int getSum() {
		sum = firepork * 90 + cookpork * 100 + chicken * 110;
		
		return sum;
	}
	
	
	
}
