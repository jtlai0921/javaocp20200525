import java.util.Date;

public class os {
	private String name,classname;
	private Date date;
	
	
	public os(String  name){
        this.name =name;
        this.date=new Date();}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getDate() {
		return new Date();
	}
	public void setDate(Date date) {
		this.date = new Date();
	}
	
	
	public String getClassname() {
		return classname;
	}


	
	public String showA() {
		classname="3C";
	
		return "訂貨人:"+name+"\n訂貨日期"+ date+"\n訂貨類別"+classname;
	}
	public String showB() {
		classname="文具";
	
		return "訂貨人:"+name+"\n訂貨日期"+ date+"\n訂貨類別"+classname;
	}	
	
	}
========================================================
public class owrite extends os {
	private int ruler;
	private int pen;
	private int sum;
	
	public owrite(String name,int ruler,int pen ) {
		super(name);
                this.pen=pen;
                this.ruler=ruler;
                sum=pen*30+ruler*20;

	}

	public int getRuler() {
		return ruler;
	}

	public void setRuler(int ruler) {
		this.ruler = ruler;
	}

	public int getPen() {
		return pen;
	}

	public void setPen(int pen) {
		this.pen = pen;
	}



	public String show() {
		
		return super.showB() + "\nPEN:" +pen+"個"+ pen*30+"元"+ "\nRULER:" +ruler+"個"+ ruler*20+"元\n總計:"+sum+"元";
	}
	
   
		
       
		}
	

===================================================================




public class TYPE3C extends os{
	private int lcd;
	private int ram;
	private int sum;

	public TYPE3C(String name,int lcd,int ram) {
		super(name);
                this.lcd=lcd;
                this.ram=ram;
		sum=lcd*4999+ram*1280;
		
	}

	public int getLcd() {
		return lcd;
	}

	public void setLcd(int lcd) {
		this.lcd = lcd;
	}

	public int getRam() {
		return ram;
	}

	public void setRam(int ram) {
		
		this.ram = ram;
		
	}
	
	public int getSum() {
		return sum;
	}



	public String show() {
		
		return super.showA()+"\nLCD:"+lcd+"個"+lcd*4999+"元\nram:"+ram+"個"+ram*1280+"元\n總計:"+sum+"元";
	}
	
   

}
==================================================================
public class pay {
    private int paymode;
    private String msg;
   public pay(int paymode){
       this.paymode=paymode;
       System.out.println(paymode);
       switch(paymode){
          case 0 :
             msg= "信用卡支付";
             break;
          case 1:
              msg ="atm付款";
              break;
          case 2:
              msg="貨到付款";
              break;
      } 
    
    }

    public int getPaymode() {
        return paymode;
    }

    public void setPaymode(int paymode) {
        this.paymode = paymode;
    }


    
   public String show(){
       
   
        return msg;
   }
    
    
    
   
    

}
=================================================
  private void jButton1MouseClicked(java.awt.event.MouseEvent evt) {                                      
       String Name=name.getText();
       int RAM=ram.getSelectedIndex();
       int LCD=lcd.getSelectedIndex();
       int PEN=pen.getSelectedIndex();
       int RULER=ruler.getSelectedIndex();
       boolean type3c=TYpe3c.isSelected();
       boolean Owrite=owrite.isSelected();
        int PAYMODE=paymode.getSelectedIndex();
     
       owrite ow=new owrite(Name,RULER,PEN);
      
       TYPE3C T=new TYPE3C(Name,LCD ,RAM) ;
       pay p=new pay(PAYMODE);
       System.out.println(PAYMODE);
      if(type3c==true){
       ans.setText(T.show()+p.show());
      }
      else
       ans.setText(ow.show()+"\n"+p.show());
       