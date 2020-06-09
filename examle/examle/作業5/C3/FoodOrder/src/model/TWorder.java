package model;

public class TWorder {
	int TableID;
	int Pork;
	int Fish;
	int Beer;
	int Spirit;
	int sum;
	
	
	public int getTableID() {
		return TableID;
	}
	public void setTableID(int tableID) {
		TableID = tableID;
	}
	public int getPork() {
		return Pork;
	}
	public void setPork(int pork) {
		Pork = pork;
	}
	public int getFish() {
		return Fish;
	}
	public void setFish(int fish) {
		Fish = fish;
	}
	public int getBeer() {
		return Beer;
	}
	public void setBeer(int beer) {
		Beer = beer;
	}
	public int getSpirit() {
		return Spirit;
	}
	public void setSpirit(int spirit) {
		Spirit = spirit;
	}
	public int getSum() {
		sum=Pork*800+Fish*900+Beer*100+Spirit*500;
		return sum;
	}
	
	
	
	

}
