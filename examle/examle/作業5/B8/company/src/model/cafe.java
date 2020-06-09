package model;

public class cafe 
{
	private int id;
	private int setA; //150
	private int setB; //180
	private int setC; //200
	private int add1; //59
	private int add2; //79
	private int add3; //99
	private int sum;
	private int tableNum;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getSetA() {
		return setA;
	}
	public void setSetA(int setA) {
		this.setA = setA;
	}
	public int getSetB() {
		return setB;
	}
	public void setSetB(int setB) {
		this.setB = setB;
	}
	public int getSetC() {
		return setC;
	}
	public void setSetC(int setC) {
		this.setC = setC;
	}
	public int getAdd1() {
		return add1;
	}
	public void setAdd1(int add1) {
		this.add1 = add1;
	}
	public int getAdd2() {
		return add2;
	}
	public void setAdd2(int add2) {
		this.add2 = add2;
	}
	public int getAdd3() {
		return add3;
	}
	public void setAdd3(int add3) {
		this.add3 = add3;
	}
	public int getTableNum() {
		return tableNum;
	}
	public void setTableNum(int tableNum) {
		this.tableNum = tableNum;
	}
	public int getSum() {
		sum=setA*150+setB*180+setC*200+add1*59+add2*79+add3*99;
		return sum;
	}
	
	
}
