package model;

public class ooder {
    private String name;
    private int fast;
    private int noodle;
    private int rice;
    private int sum;

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getFast() {
		return fast;
	}
	public void setFast(int fast) {
		this.fast = fast;
	}
	public int getNoodle() {
		return noodle;
	}
	public void setNoodle(int noodle) {
		this.noodle = noodle;
	}
	public int getRice() {
		return rice;
	}
	public void setRice(int rice) {
		this.rice = rice;
	}

	public int getSum() {
		    
		sum=fast*100+noodle*200+rice*300;
			
		return sum;
	}
    
    
    
}
