package MODEL;

public class menu {
	
	private int tableNumber;//桌號
	private int A;//A餐
	private int B;//B餐
	private int Ap;//A餐價格
	private int Bp;//B餐價格
	private int sum;//結帳金額
	
	public int getAp() {
		return Ap;
	}
	public void setAp(int ap) {
		Ap = ap;
	}
	public int getBp() {
		return Bp;
	}
	public void setBp(int bp) {
		Bp = bp;
	}
	
	public int getA() {
		return A;
	}
	public void setA(int a) {
		A = a;
	}
	public int getB() {
		return B;
	}
	public void setB(int b) {
		B = b;
	}
	public int getTableNumber() {
		return tableNumber;
	}
	public void setTableNumber(int tableNumber) {
		this.tableNumber = tableNumber;
	}
	
	public int getSum() {
		sum=A*Ap+B*Bp;
		return sum;
	}

	
}
