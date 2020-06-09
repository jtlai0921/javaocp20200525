package model;

public class foods {
	private int desk;
	private int fish;
	private int pork;
	private int beef;
	private int sum;
	public int getFish() {
		return fish;
	}
	public void setFish(int fish) {
		this.fish = fish;
	}
	public int getPork() {
		return pork;
	}
	public void setPork(int pork) {
		this.pork = pork;
	}
	public int getBeef() {
		return beef;
	}
	public void setBeef(int beef) {
		this.beef = beef;
	}
	public int getSum() {
		sum=fish*100+pork*85+beef*150;
		return sum;
	}
	public int getDesk() {
		return desk;
	}
	public void setDesk(int desk) {
		this.desk = desk;
	}
	
}
