package model;

public class order 
{
	private int rice,pasta,hamburger,steak,sum,id;
	public int getRice() {
		return rice;
	}

	public void setRice(int rice) {
		this.rice = rice;
	}

	public int getPasta() {
		return pasta;
	}

	public void setPasta(int pasta) {
		this.pasta = pasta;
	}

	public int getHamburger() {
		return hamburger;
	}

	public void setHamburger(int hamburger) {
		this.hamburger = hamburger;
	}

	public int getSteak() {
		return steak;
	}

	public void setSteak(int steak) {
		this.steak = steak;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getSum() {
		sum=rice*100+pasta*120+hamburger*80+steak*150;
		return sum;
	}
	
}
