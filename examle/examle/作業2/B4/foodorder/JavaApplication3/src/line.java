/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author peter
 */
public class line extends order {
  private   final int asut1=120;
  private   final int asut2=130;
  private   final int asut3=140;
  private  int aqty;
  private  int bqty;
  private  int cqty;
  private  int sum=0;
  private  int osum=0;
  private  boolean acheck;
  private  boolean bcheck;
  private  boolean ccheck;

    public line(String name, String level, double discount,int aqty,int bqty, int cqty, boolean acheck, boolean bcheck, boolean ccheck)
    {
        super(name, level, discount);
        this.aqty=aqty;
        this.bqty=bqty;
        this.cqty=cqty;
        this.acheck = acheck;
        this.bcheck = bcheck;
        this.ccheck = ccheck;   
    }

    public void setAqty(int aqty) {
        this.aqty = aqty;
    }

    public void setBqty(int bqty) {
        this.bqty = bqty;
    }

    public void setCqty(int cqty) {
        this.cqty = cqty;
    }

    public void setAcheck(boolean acheck) {
        this.acheck = acheck;
    }

    public void setBcheck(boolean bcheck) {
        this.bcheck = bcheck;
    }

    public void setCcheck(boolean ccheck) {
        this.ccheck = ccheck;
    }

    public int getAsut1() {
        
        return asut1;
    }

    public int getAsut2() {
        return asut2;
    }

    public int getAsut3() {
        return asut3;
    }

    public int getAqty() {
        return aqty;
    }

  

    public int getBqty() {
        return bqty;
    }

    public int getCqty() {
        return cqty;
    }

 
    public boolean isAcheck() {
        return acheck;
    }

    public boolean isBcheck() {
        return bcheck;
    }

    public boolean isCcheck() {
        return ccheck;
    }

    public void setSum(int sum) {
        this.sum = sum;
    }

    public void setOsum(int osum) {
        this.osum = osum;
    }

    public int getSum() {
        return sum;
    }

    public int getOsum() {
        return osum;
    }

  
  @Override
  String show()
  {  String msg="";
     int rsum=0;
     int osum=0;
      if (isAcheck()== true&& getAqty()>=1)
      {
         msg="會員類別:"+super.getLevel()+"A套餐:"+getAqty()+"個\t小計:"+(int)((getAqty()* getAsut1())*super.getDiscount());
         msg=msg+"\n原價:A套餐:"+getAqty()+"個\t小計:"+(getAqty()* getAsut1());
         rsum=rsum+(int)((getAqty()*getAsut1())*super.getDiscount());
         osum=osum+(getAqty()*getAsut1());
       }
      else
      {
         msg=msg+"\nA套餐0個小計0元";
      } 
      
       if (isBcheck()== true && getBqty()>=1)
       {
            msg=msg+"\n會員類別:"+super.getLevel()+"B套餐:"+getBqty()+"個\t小計:"+(int)((getBqty()* getAsut2())*super.getDiscount());
            msg=msg+"\n原價:B套餐:"+getAqty()+"個\t小計:"+(getBqty()* getAsut2());
            rsum=rsum+(int)((getBqty()*getAsut2())*super.getDiscount());
            osum=osum+(getBqty()*getAsut2());
       }
       else
       {
            msg=msg+"\nB套餐0個小計0元";
       }
       
        if (isCcheck()== true && getCqty()>=1)
       {
           msg=msg+"\n會員類別:"+super.getLevel()+"C套餐:"+getCqty()+"個\t小計:"+(int)((getCqty()* getAsut3())*super.getDiscount());
           msg=msg+"\n原價:c套餐:"+getAqty()+"個\t小計:"+(getCqty()* getAsut3());
            rsum=rsum+(int)((getCqty()*getAsut3())*super.getDiscount());
            osum=osum+(getCqty()*getAsut3());
       }
       else
       {
            msg=msg+"\nC套餐0個小計0元";
       }
       this.sum=rsum;
       this.osum=osum;
       msg=msg+"\n會員類別:"+super.getLevel()+"合計"+ getSum();
       msg=msg+"\n原價合計"+getOsum();
       return msg;
  }
  
    
}
