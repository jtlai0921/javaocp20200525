package Model;

public class torder {
	
	private String name;
	private int tableNo;
	private int yeovil;
	private int kenilworth;
	private int farnham;
	private int sum;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getTableNo() {
		return tableNo;
	}
	public void setTableNo(int tableNo) {
		this.tableNo = tableNo;
	}
	public int getYeovil() {
		return yeovil;
	}
	public void setYeovil(int yeovil) {
		this.yeovil = yeovil;
	}
	public int getKenilworth() {
		return kenilworth;
	}
	public void setKenilworth(int kenilworth) {
		this.kenilworth = kenilworth;
	}
	public int getFarnham() {
		return farnham;
	}
	public void setFarnham(int farnham) {
		this.farnham = farnham;
	}
	public int getSum() {
		sum=yeovil*500+kenilworth*600+farnham*700;
		return sum;
	}

	
	

}
