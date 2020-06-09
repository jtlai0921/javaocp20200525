
package model;



public class car {

	private String name;

	private int bmw;

	private int benz;

	private int audi;

	private int toyota;

	private int honda;

	private int mazada;

	private int sum;

	private int id;
	
	private int cal;

	

	

	public String getName() {

		return name;

	}

	public void setName(String name) {

		this.name = name;

	}

	public int getBmw() {

		return bmw;

	}

	public void setBmw(int bmw) {

		this.bmw = bmw;

	}

	public int getBenz() {

		return benz;

	}

	public void setBenz(int benz) {

		this.benz = benz;

	}

	public int getAudi() {

		return audi;

	}

	public void setAudi(int audi) {

		this.audi = audi;

	}

	public int getToyota() {

		return toyota;

	}

	public void setToyota(int toyota) {

		this.toyota = toyota;

	}

	public int getHonda() {

		return honda;

	}

	public void setHonda(int honda) {

		this.honda = honda;

	}

	public int getMazada() {

		return mazada;

	}

	public void setMazada(int mazada) {

		this.mazada = mazada;

	}

	public int getSum() {

		

	sum=benz*100000+bmw*100000+audi*100000+toyota*500000+honda*500000+mazada*700000;

		

		return sum;

	}

	public int getId() {

		return id;

	}

	public void setId(int id) {

		this.id = id;

	}
	
	public int getCal() {

		 cal=benz*100000+bmw*100000+audi*100000+toyota*500000+honda*500000+mazada*700000;
				return	cal;

	}

	public void setCal(int cal) {

		this.cal = cal;

	}
	
}

	

	

	/*public Date getDate()

	{

		return getDate();

	}

	public void setDate() {

		this.setDate();

	}*/

	

	/*

	public void setSum(int sum) {

		this.sum = sum;

	}

	*/

	





