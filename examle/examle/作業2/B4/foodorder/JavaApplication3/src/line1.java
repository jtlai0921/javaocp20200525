/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author peter
 */
public class line1 extends order {
     private   final int asut4=30;
     private   final int asut5=40;
     private   final int asut6=50;
     private  int dqty;
     private  int eqty;
     private  int fqty;
     private  int sum1=0;
     private  int osum1=0;
     private  boolean dcheck;
     private  boolean echeck;
     private  boolean fcheck;
     private String emsg1;
    private String msg1;

    public line1(String name, String level, double discount,int dqty,int eqty,
      int fqty, boolean dcheck, boolean echeck, boolean fcheck)
    {
        super(name, level, discount);
        this.dcheck=dcheck;
        this.echeck=echeck;
        this.fcheck=fcheck;
        this.dqty=dqty;
        this.eqty=eqty;
        this.fqty=fqty;
    }

    public void setDqty(int dqty) {
        this.dqty = dqty;
    }

    public void setEqty(int eqty) {
        this.eqty = eqty;
    }

    public void setFqty(int fqty) {
        this.fqty = fqty;
    }



 
    public void setDcheck(boolean dcheck) {
        this.dcheck = dcheck;
    }

    public void setEcheck(boolean echeck) {
        this.echeck = echeck;
    }

    public void setFcheck(boolean fcheck) {
        this.fcheck = fcheck;
    }

    public int getAsut4() {
        return asut4;
    }

    public int getAsut5() {
        return asut5;
    }

    public int getAsut6() {
        return asut6;
    }

    public int getDqty() {
        return dqty;
    }

    public int getEqty() {
        return eqty;
    }

    public int getFqty() {
        return fqty;
    }


    public boolean isDcheck() {
        return dcheck;
    }

    public boolean isEcheck() {
        return echeck;
    }

    public boolean isFcheck() {
        return fcheck;
    }

    public void setEmsg1(String emsg1) {
        this.emsg1 = emsg1;
    }

    public void setMsg1(String msg1) {
        this.msg1 = msg1;
    }

    public String getEmsg1() {
        return emsg1;
    }

    public String getMsg1() {
        return msg1;
    }

    public void setSum1(int sum1) {
        this.sum1 = sum1;
    }

    public void setOsum1(int osum1) {
        this.osum1 = osum1;
    }

    public int getSum1() {
        return sum1;
    }

    public int getOsum1() {
        return osum1;
    }
    
    
    
    
    
     @Override
    String show()
    { 
     String msg="";
     int rsum=0;
     int osum=0; 
     if (isDcheck()== true&& getDqty()>=1)
      {
         msg="會員類別:"+super.getLevel()+"小菜1="+getDqty()+"個\t小計:"+(int)((getDqty()* getAsut4())*super.getDiscount());
         msg=msg+"\n原價:小菜1="+getDqty()+"個\t小計:"+(getDqty()* getAsut4());
         rsum=rsum+(int)((getDqty()* getAsut4())*super.getDiscount());
         osum=osum+(getDqty()*getAsut4());
         
       }
      else
      {
            msg=msg+"\n小菜1=0個小計0元";
      }
     if (isEcheck()== true&& getEqty()>=1)
      {
         msg=msg+"\n會員類別:"+super.getLevel()+"小菜2="+getEqty()+"個\t小計:"+(int)((getEqty()* getAsut5())*super.getDiscount());
         msg=msg+"\n原價:小菜2="+getEqty()+"個\t小計:"+(getEqty()* getAsut5());
         rsum=rsum+(int)((getEqty()* getAsut5())*super.getDiscount());
         osum=osum+(getEqty()*getAsut5());
        
       }
      else
      {
            msg=msg+"\n小菜2=0個小計0元";
       }
     System.out.println("isFcheck()"+isFcheck());
     System.out.println("getFqty()"+getFqty());
       if ( isFcheck()== true&& getFqty()>=1)
      {
         System.out.println("CCCCC");
         msg=msg+"\n會員類別:"+super.getLevel()+"小菜3="+getEqty()+"個\t小計:"+(int)((getFqty()* getAsut6())*super.getDiscount());
         msg=msg+"\n原價:小菜3="+getFqty()+"個\t小計:"+(getFqty()* getAsut6());
         rsum=rsum+(int)((getFqty()* getAsut6())*super.getDiscount());
         osum=osum+(getFqty()*getAsut6());
        
       }
      else
      {      System.out.println("ZZCCCC");
            msg=msg+"\n小菜3=0個小計0元";
       }
       this.sum1=rsum;
       this.osum1=osum;
       msg=msg+"\n會員類別:"+super.getLevel()+"合計"+ getSum1();
       msg=msg+"\n原價合計"+getOsum1();
     return msg;
    }
}
