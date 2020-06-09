package model;

public class Porder {

	private String name;
	private int pc;
	private int windows;
	private int lcd;
	private int ram;
	private int mouse;
	private int keyboard;
	private int iosphone;
	private int androidphone;
	private int sum;
	private String pay = "尚未付款";
	private String date = "尚未有交易日期";
	
	
	public int getSum() {
		sum = (pc*40000)+(lcd*5000)+(ram*2000)+(mouse*500)
				+(keyboard*1000)+(iosphone*30000)+(androidphone*25000)+(windows*5000);
		setSum(sum);
		return sum;
	}
	public void setSum(int sum) {
		this.sum = sum;
	}
	
	public int getWindows() {
		return windows;
	}
	public void setWindows(String windows) {
		if(!windows.equals("")) {
			this.windows = Integer.parseInt(windows);
		}else {
			this.windows = 0;
		}
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPc() {
		return pc;
	}
	public void setPc(String pc) {
		if(!pc.equals("")) {
			this.pc = Integer.parseInt(pc);
		}else {
			this.pc = 0;
		}
	}
	public int getLcd() {
		return lcd;
	}
	public void setLcd(String lcd) {
		if(!lcd.equals("")) {
			this.lcd = Integer.parseInt(lcd);
		}else {
			this.lcd = 0;
		}
	}
	public int getRam() {
		return ram;
	}
	public void setRam(String ram) {
		if(!ram.equals("")) {
			this.ram = Integer.parseInt(ram);
		}else {
			this.ram = 0;
		}
	}
	public int getMouse() {
		return mouse;
	}
	public void setMouse(String mouse) {
		if(!mouse.equals("")) {
			this.mouse = Integer.parseInt(mouse);
		}else {
			this.mouse = 0;
		}
	}
	public int getKeyboard() {
		return keyboard;
	}
	public void setKeyboard(String keyboard) {
		if(!keyboard.equals("")) {
			this.keyboard = Integer.parseInt(keyboard);
		}else {
			this.keyboard = 0;
		}
	}
	public int getIosphone() {
		return iosphone;
	}
	public void setIosphone(String iosphone) {
		if(!iosphone.equals("")) {
			this.iosphone = Integer.parseInt(iosphone);
		}else {
			this.iosphone = 0;
		}
	}
	public int getAndroidphone() {
		return androidphone;
	}
	public void setAndroidphone(String androidphone) {
		if(!androidphone.equals("")) {
			this.androidphone = Integer.parseInt(androidphone);
		}else {
			this.androidphone = 0;
		}
	}
	public String getPay() {
		return pay;
	}
	public void setPay(String pay) {
		this.pay = pay;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
}
