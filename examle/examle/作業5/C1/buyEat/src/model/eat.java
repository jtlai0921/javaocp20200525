package model;


public class eat {
	private String tnumber;
	private int rice;
	private int noodles;
	private int blacktea;
	private int sum;
	eatPrice[] ep=eatPrice.values();
	
	public static void main(String[] args) {
		/*eatPrice[] ep=eatPrice.values();
		System.out.println(ep[0].getX());*/
	}
	public eat(String tnumber,int rice,int noodles,int blacktea) {
		this.tnumber=tnumber;
		this.rice=rice;
		this.noodles=noodles;
		this.blacktea=blacktea;
		getSum();
	}

	public String getTnumber() {
		return tnumber;
	}

	public void setTnumber(String tnumber) {
		this.tnumber = tnumber;
	}

	public int getRice() {
		return rice;
	}

	public void setRice(int rice) {
		this.rice = rice;
	}

	public int getNoodles() {
		return noodles;
	}

	public void setNoodles(int noodles) {
		this.noodles = noodles;
	}

	public int getBlacktea() {
		return blacktea;
	}

	public void setBlacktea(int blacktea) {
		this.blacktea = blacktea;
	}

	public int getSum() {
		
		sum=ep[0].getX()*rice+
			ep[1].getX()*noodles+
			ep[2].getX()*blacktea;
		
		return sum;
	}
	
	
}
