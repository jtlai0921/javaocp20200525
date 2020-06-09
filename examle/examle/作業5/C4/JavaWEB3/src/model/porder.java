package model;

public class porder {
	private String new_desk;
	private int new_dishes1;
	private int new_dishes2;
	private int new_dishes3;
	private int new_sum;
	public String getNew_desk() {
		return new_desk;
	}
	public void setNew_desk(String new_desk) {
		this.new_desk = new_desk;
	}
	public int getNew_dishes1() {
		return new_dishes1;
	}
	public void setNew_dishes1(int new_dishes1) {
		this.new_dishes1 = new_dishes1;
	}
	public int getNew_dishes2() {
		return new_dishes2;
	}
	public void setNew_dishes2(int new_dishes2) {
		this.new_dishes2 = new_dishes2;
	}
	public int getNew_dishes3() {
		return new_dishes2;
	}
	public void setNew_dishes3(int new_dishes3) {
		this.new_dishes3 = new_dishes3;
	}
	public int getNew_sum() {
		new_sum=new_dishes1*100+new_dishes2*150+new_dishes3*200;
		return new_sum;
	}

}
