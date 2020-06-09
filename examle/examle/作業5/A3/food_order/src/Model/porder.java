package Model;

public class porder {
	private int a,b,c,price,table;
	public porder(int a,int b,int c,int table) {
		this.a = a;
		this.b = b;
		this.c = c;
		this.table =  table;
		
		
	}
	public porder() {};
	public int getA() {
		return a;
	}
	public void setA(int a) {
		this.a = a;
	}
	public int getB() {
		return b;
	}
	public void setB(int b) {
		this.b = b;
	}
	public int getC() {
		return c;
	}
	public void setC(int c) {
		this.c = c;
	}
	public int getTable() {
		return table;
	}
	public void setTable(int table) {
		this.table = table;
	}
	public int getPrice() {
		price = a * 80 + b*95 + c*75;
		return price;
	}
}
