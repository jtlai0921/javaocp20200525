package model;

public enum eatPrice {
	rice(10),noodles(30),blacktea(15);
	
	private int x;
	private eatPrice(int x) {
		this.x=x;
	}
	public int getX() {
		return x;
	}
	
}


