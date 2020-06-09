package model;

import java.text.SimpleDateFormat;
import java.util.Date;

public class porder {

	private int tablenum = -1;
	private int sirlon = -1;
	private int filet = -1;
	private int soup = -1;
	private int bread = -1;
	private int cola = -1;
	private int juice = -1;
	private int sum;
	private String date;
	
	public int getTablenum() {
		return tablenum;
	}
	public void setTablenum(int tablenum) {
		this.tablenum = tablenum;
	}
	public int getSirlon() {
		return sirlon;
	}
	public void setSirlon(int sirlon) {
		this.sirlon = sirlon;
		sum = (this.sirlon*200)+(this.filet*220)+(this.soup*50)+(this.bread*40)+(this.cola*30)+(this.juice*25);
	}
	public int getFilet() {
		return filet;
	}
	public void setFilet(int filet) {
		this.filet = filet;
		sum = (this.sirlon*200)+(this.filet*220)+(this.soup*50)+(this.bread*40)+(this.cola*30)+(this.juice*25);
	}
	public int getSoup() {
		return soup;
	}
	public void setSoup(int soup) {
		this.soup = soup;
		sum = (this.sirlon*200)+(this.filet*220)+(this.soup*50)+(this.bread*40)+(this.cola*30)+(this.juice*25);
	}
	public int getBread() {
		return bread;
	}
	public void setBread(int bread) {
		this.bread = bread;
		sum = (this.sirlon*200)+(this.filet*220)+(this.soup*50)+(this.bread*40)+(this.cola*30)+(this.juice*25);
	}
	public int getCola() {
		return cola;
	}
	public void setCola(int cola) {
		this.cola = cola;
		sum = (this.sirlon*200)+(this.filet*220)+(this.soup*50)+(this.bread*40)+(this.cola*30)+(this.juice*25);
	}
	public int getJuice() {
		return juice;
	}
	public void setJuice(int juice) {
		this.juice = juice;
		sum = (this.sirlon*200)+(this.filet*220)+(this.soup*50)+(this.bread*40)+(this.cola*30)+(this.juice*25);
	}
	public int getSum() {
		return sum;
	}
	public String getDate() {
		return date;
	}
	public void setDate(Date date) {
		SimpleDateFormat format0 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String Date = format0.format(date.getTime());
		this.date = Date;
	}
}
