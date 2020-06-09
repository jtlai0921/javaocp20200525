/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ja1;

import java.util.Date;

/**
 *
 * @author Administrator
 */
public class Ja1 {
        private String name;
        private int lcd;
        private int ram;
        private int mouse;
	private Date date;
	private int sum;
        private int total;
        private int coin;
        private boolean member;
        private int pay;
        private int disc;

    public int getTotal() {
        return total;
    }

    public int getDisc() {
        return disc;
    }
       
     
        public void setMember(boolean member) {
        this.member = member;
    }

    public boolean isMember() {
        return member;
    }

   
        private String msg="";

    public String getName() {
        return name;
    }

    public int getLcd() {
        return lcd;
    }
    
      public int getRam() {
        return mouse;
    }

    public int getMouse() {
        return mouse;
    }

    public Date getDate() {
        return date;
    }

    public int getSum() {
        return sum;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setLcd(int lcd) {
        this.lcd = lcd;
    }
    
    public void setMouse(int mouse) {
        this.mouse = mouse;
    }

    public void setRam(int ram) {
        this.ram = ram;
    }
          

    Ja1(String name,int lcd,int ram,int mouse,boolean member)
    {
       if(lcd>=0 && ram>=0 && mouse>=0)
       {
        this.name=name;
        this.lcd=lcd;
        this.ram=ram;
        this.mouse=mouse;
        this.date=new Date();
        this.msg= msg;
        this.member=member;
        
        
        
        
        
        sum=lcd*4999+ram*1280+mouse*680;
        total=sum;
        msg="Original price";
            if(member==true)
            {
                sum=(int)(sum*0.95);
                if(sum>=10000)
                {
                     sum=(int)(sum*0.95);
                     msg="member discount and 10000+ extra discount";
                } 
                else
                {
                  sum=sum*1;
                  msg="member discount";
                }
                
            }
            else
            {
                sum=sum;
                if(sum>=10000)
                {
                     sum=(int)(sum*0.95);
                     msg="10000+ extra discount";
                } 
                else
                {
                  sum=sum;
                }
                
                
            
            
            }
       
       disc=total-sum;
       
       
        }
       
       
       
       else  
       {
           msg="Error";
       }
       
   
    
    
    
    
    }
 
    
     
    
    String show()
      {
      
      
      return "Name:"+getName()+
              "\nLCD:"+getLcd()+
              "\nRAM:"+getRam()+
              "\nMouse:"+getMouse()+
              "\nSum："+getSum()+
              "\n Discount："+disc+
              "\n 訂單日期："+getDate()+
              "\n message:"+msg;
      
      }
 
    
     public int getPay() {
        return pay;
    }

  
    public int getCoin() {
        return coin;
    }

    public void setPay(int pay) {
        this.pay = pay;
    }
   

    

    
    
     Ja1(String name,int lcd,int ram,int mouse,boolean member, int pay)
    {
       if(lcd>=0 && ram>=0 && mouse>=0)
       {
        this.name=name;
        this.lcd=lcd;
        this.ram=ram;
        this.mouse=mouse;
        this.date=new Date();
        this.msg= msg;
        this.member=member;
        
        
        
        
        
        sum=lcd*4999+ram*1280+mouse*680;
        total=sum;
        msg="Original price";
            if(member==true)
            {
                sum=(int)(sum*0.95);
                if(sum>=10000)
                {
                     sum=(int)(sum*0.95);
                     msg="member discount and 10000+ extra discount";
                } 
                else
                {
                  sum=sum*1;
                  msg="member discount";
                }
                
            }
            else
            {
                sum=sum;
                if(sum>=10000)
                {
                     sum=(int)(sum*0.95);
                     msg="10000+ extra discount";
                } 
                else
                {
                  sum=sum;
                }
                
                
            
            
            }
       
       disc=total-sum;
       coin=pay-sum;
       
        }
       
       
       
       else   msg="Error";
    }   
          
       
       
   
    
    
    
    
    
   
      String show2()
    {
        
     if (coin>=0) 
     {
         return "Change="+coin;
     }
     
     else
     {    
         
     return coin+"Not enough!";
     }
    }
    
    String show3()
      {
         
    
      if (coin>=0) 
     {
         
     
      
      return "Name:"+getName()+
              "\nLCD:"+getLcd()+
              "\nRAM:"+getRam()+
              "\nMouse:"+getMouse()+
              "\nSum："+getSum()+
              "\n Discount："+disc+
              "\n 訂單日期："+getDate()+
              "\n message:"+msg+
              "\nChange=$"+coin;
     
     }
      else
         {    
         
     return "Not enough!\n"+
             "Name:"+getName()+
              "\nLCD:"+getLcd()+
              "\nRAM:"+getRam()+
              "\nMouse:"+getMouse()+
              "\nSum："+getSum()+
              "\n Discount："+disc+
              "\n 訂單日期："+getDate()+
              "\n message:"+msg+
              "\nChange=$"+coin;
     }
      
      }
    


    


  
    
    
    
}
    
    
    

