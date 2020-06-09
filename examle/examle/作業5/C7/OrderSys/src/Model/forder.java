package Model;

public class forder {
	private String table;
	private int chicken;
	private int pork;
	private int beef;
	private int fish;
	private int total;
	
	/*forder(int tablenum,int chicken,int pork,int beef,int fish)
	{
		this.tablenum=tablenum;
		this.chicken=chicken;
		this.pork=pork;
		this.beef=beef;
		this.fish=fish;
	}*/

	public String getTable() {
		return table;
	}

	public void setTable(String table) {
		this.table = table;
	}

	public int getChicken() {
		return chicken;
	}

	public void setChicken(int chicken) {
		this.chicken = chicken;
	}

	public int getPork() {
		return pork;
	}

	public void setPork(int pork) {
		this.pork = pork;
	}

	public int getBeef() {
		return beef;
	}

	public void setBeef(int beef) {
		this.beef = beef;
	}

	public int getFish() {
		return fish;
	}

	public void setFish(int fish) {
		this.fish = fish;
	}

	public int getTotal() {
		total=chicken*65+pork*60+beef*80+fish*75;
		return total;
	}
	
	
}
