package model;

import java.util.List;

public class sushi {
	private String name;
	private int fooda1;
	private int foodb1;
	private int foodc1;
	private int foodd1;
	private int foode1;
	private int foodf1;
	private int foodg1;
	private int foodh1;
	private int sum;
	
	public sushi(Object... o)
	{
		this.name=o[0].toString();
		this.fooda1= Integer.parseInt(o[1].toString());
		this.foodb1= Integer.parseInt(o[2].toString());
		this.foodc1= Integer.parseInt(o[3].toString());
		this.foodd1= Integer.parseInt(o[4].toString());
		this.foode1= Integer.parseInt(o[5].toString());
		this.foodf1= Integer.parseInt(o[6].toString());
		this.foodg1= Integer.parseInt(o[7].toString());
		this.foodh1= Integer.parseInt(o[8].toString());
		getSum();
	}


	public int getFoode1() {
		return foode1;
	}

	public void setFoode1(int foode1) {
		this.foode1 = foode1;
	}

	public int getFoodf1() {
		return foodf1;
	}

	public void setFoodf1(int foodf1) {
		this.foodf1 = foodf1;
	}

	public int getFoodg1() {
		return foodg1;
	}

	public void setFoodg1(int foodg1) {
		this.foodg1 = foodg1;
	}

	public int getFoodh1() {
		return foodh1;
	}

	public void setFoodh1(int foodh1) {
		this.foodh1 = foodh1;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getFooda1() {
		return fooda1;
	}

	public void setFooda1(int fooda1) {
		this.fooda1 = fooda1;
	}

	public int getFoodb1() {
		return foodb1;
	}

	public void setFoodb1(int foodb1) {
		this.foodb1 = foodb1;
	}

	public int getFoodc1() {
		return foodc1;
	}

	public void setFoodc1(int foodc1) {
		this.foodc1 = foodc1;
	}

	public int getFoodd1() {
		return foodd1;
	}

	public void setFoodd1(int foodd1) {
		this.foodd1 = foodd1;
	}

	public int getSum() {
		sum=fooda1*30+foodb1*35+foodc1*40+foodd1*45+foode1*30+foodf1*35+foodg1*40+foodh1*45;
		return sum;
	}
	
}
