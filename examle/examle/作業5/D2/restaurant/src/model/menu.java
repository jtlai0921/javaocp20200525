package model;

public class menu {
	
	private int desk;
    private int coffee;
    private int tea;
    private int salad;
    private int panini;
    private int bagel;
    private int pudding;
    private int cake;
    private int sum;
    

    public int getDesk() {
		return desk;
	}





	public void setDesk(int desk) {
		this.desk = desk;
	}
	
	
	


	public int getCoffee() {
		return coffee;
	}


	


	public void setCoffee(int coffee) {
		this.coffee = coffee;
	}





	public int getTea() {
		return tea;
	}





	public void setTea(int tea) {
		this.tea = tea;
	}





	public int getSalad() {
		return salad;
	}





	public void setSalad(int salad) {
		this.salad = salad;
	}





	public int getPanini() {
		return panini;
	}





	public void setPanini(int panini) {
		this.panini = panini;
	}





	public int getBagel() {
		return bagel;
	}





	public void setBagel(int bagel) {
		this.bagel = bagel;
	}





	public int getPudding() {
		return pudding;
	}





	public void setPudding(int pudding) {
		this.pudding = pudding;
	}





	public int getCake() {
		return cake;
	}





	public void setCake(int cake) {
		this.cake = cake;
	}




	public int getSum() {
		sum=coffee*120+tea*100+salad*60+panini*80+bagel*60+pudding*50+cake*90;
		return sum;
	}

    
    

}
