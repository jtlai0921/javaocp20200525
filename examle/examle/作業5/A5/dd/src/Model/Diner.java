package Model;

public class Diner {
	
	
	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public int getTable() {
		return table;
	}



	public void setTable(int table) {
		this.table = table;
	}



	public int getMac() {
		return mac;
	}



	public void setMac(int mac) {
		this.mac = mac;
	}



	public int getSteak() {
		return steak;
	}



	public void setSteak(int steak) {
		this.steak = steak;
	}



	public int getFries() {
		return fries;
	}



	public void setFries(int fries) {
		this.fries = fries;
	}



	public int getSum() {
		sum=mac*12+steak*20+fries*7;
		return sum;
	}



	private String name;
	private int table;
	private int mac;
	private int steak;
	private int fries;
	private int sum;
	


	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
