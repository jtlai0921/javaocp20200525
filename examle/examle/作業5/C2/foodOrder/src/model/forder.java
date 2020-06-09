package model;

public class forder {
	
	private int tableNb;
	private int steak;
	private int porkChops;
	private int chickenSteak;
	private int wine;
	private int soda;
	private int sum;
	
	
	public int getTableNb() {
		return tableNb;
	}
	public void setTableNb(int tableNb) {
		this.tableNb = tableNb;
	}
	public int getSteak() {
		return steak;
	}
	public void setSteak(int steak) {
		this.steak = steak;
	}
	public int getPorkChops() {
		return porkChops;
	}
	public void setPorkChops(int porkChops) {
		this.porkChops = porkChops;
	}
	public int getChickenSteak() {
		return chickenSteak;
	}
	public void setChickenSteak(int chickenSteak) {
		this.chickenSteak = chickenSteak;
	}
	public int getWine() {
		return wine;
	}
	public void setWine(int wine) {
		this.wine = wine;
	}
	public int getSoda() {
		return soda;
	}
	public void setSoda(int soda) {
		this.soda = soda;
	}
	public int getSum() {

		sum=(steak*500)+(porkChops*300)+(chickenSteak*200)+(wine*100)+(soda*80);
	
		return sum;
	}
	
	

}
