package model;

public class meal {
	
	private String number;
	private int mealA,mealB,mealC,mealD,sum;

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public int getMealA() {
		return mealA;
	}

	public void setMealA(int mealA) {
		this.mealA = mealA;
	}

	public int getMealB() {
		return mealB;
	}

	public void setMealB(int mealB) {
		this.mealB = mealB;
	}

	public int getMealC() {
		return mealC;
	}

	public void setMealC(int mealC) {
		this.mealC = mealC;
	}

	public int getMealD() {
		return mealD;
	}

	public void setMealD(int mealD) {
		this.mealD = mealD;
	}

	public int getSum() {
		sum=mealA*40+mealB*50+mealC*60+mealD*70;
		return sum;
	}
	
	
}
