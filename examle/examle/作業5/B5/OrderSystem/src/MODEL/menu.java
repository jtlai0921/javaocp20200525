package MODEL;

public class menu {
	
	private int tableNumber;//�ู
	private int A;//A�\
	private int B;//B�\
	private int Ap;//A�\����
	private int Bp;//B�\����
	private int sum;//���b���B
	
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
