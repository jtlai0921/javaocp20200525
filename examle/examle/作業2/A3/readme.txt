import java.util.Date;
public class shop {
    private int ANum,BNum,CNum,DNum,ENum,TotalOri ;  
    private static int Total;  
    private boolean A,B,C,D,E,Member,vip,gold,silver,regular;
    private Date date = new Date();
    private String AStr = "",BStr = "",CStr = "",DStr = "",EStr = "",MemberStr = "",Name;
    private int TotalDisC , MemDisC,Pay,Change ; 
     
    shop(boolean A,boolean B,boolean C,boolean D,boolean E,boolean Member,int ANum, int BNum , int CNum, int DNum, int ENum, 
            String Name, boolean vip, boolean gold, boolean silver, boolean regular)
    {
        this.A = A;      
        this.B = B;
        this.C = C;
        this.D = D;
        this.E = E;
        this.Member = Member;
        this.ANum = ANum;
        this.BNum = BNum;
        this.CNum = CNum;
        this.DNum = DNum;
        this.ENum = ENum;
        this.Name =Name;
        this.vip = vip;
        this.gold = gold;
        this.silver = silver;
        this.regular = regular;
        
    }
    shop(int Pay){      
        this.Pay = Pay;   
    }

    public int getANum() {
        return ANum;
    }

    public int getBNum() {
        return BNum;
    }

    public int getCNum() {
        return CNum;
    }

    public int getTotal() {
        return Total;
    }

    public boolean isA() {
        return A;
    }

    public boolean isB() {
        return B;
    }

    public boolean isC() {
        return C;
    }
    public boolean isD() {
        return D;
    }
    public boolean isE() {
        return E;
    }

    public boolean isMember() {
        return Member;
    }

    public Date getDate() {
        return date;
    }
    
    
    String show(){  
     
     if(A == true){  
         AStr = "\nA套餐(120元) x "+ this.ANum + "=  " + (ANum * 120);
      }
       if(B == true){
            BStr = "\nB套餐(130元) x "+ this.BNum + "=  " + (BNum * 130);
        }
        if(C == true){
            CStr = "\nC套餐(140元) x "+ this.CNum + "=  " + (CNum * 140);
        }
        if(D == true){
            DStr = "\n小菜(滷蛋)(20元) x "+ this.DNum + "=  " + (DNum * 20);
        }
        if(E == true){
            EStr = "\n小菜(豆腐)(30元) x "+ this.ENum + "=  " + (ENum * 30);
        }
        if(A == true || B == true || C == true || D == true || E == true){
            this.Total = ANum * 120 + BNum * 130 + CNum * 140 + DNum * 20 + ENum * 30;
            
          }else{
            this.Total = 0;
        }
               
        if(Member == true){   
            if(this.vip == true){
            this.MemDisC = (int) (this.Total * 0.15);  
            this.Total = (int) (this.Total* 0.85);  
            }
            if(this.gold == true){
            this.MemDisC = (int) (this.Total * 0.1);  
            this.Total = (int) (this.Total* 0.9);  
            }
            if(this.silver == true){
            this.MemDisC = (int) (this.Total * 0.05);  
            this.Total = (int) (this.Total* 0.95);  
            }
            if(this.regular == true){
            this.MemDisC = (int) (this.Total * 0);  
            this.Total = (int) (this.Total* 1);  
            }
          
        }   
        
        return date+"\n姓名 :  "+this.Name+AStr+BStr+CStr+DStr+EStr+"\n合計總額 : " +this.Total 
                +"\n會員(折扣) : "+this.MemDisC+"\n總計金額 : "+this.Total; 
    }

    public void setPay(int Pay) {
        this.Pay = Pay;
    }

    public void setChange(int Change) {
        this.Change = Change;
    }
    String showChange(){        
        String err = "",msg = "";  
        
       
        if(this.Pay>this.Total){  
        Change = this.Pay - this.Total;   
        msg = Integer.toString(Change);  
        }
        else{
            err = "輸入金額不足";  
        }
       
        return msg+err;  

    }
}


======================================
private void OrderMouseClicked(java.awt.event.MouseEvent evt) {                                   
        boolean a = A.isSelected();  
        boolean b = B.isSelected();
        boolean c = C.isSelected();
        boolean d = D.isSelected();
        boolean e = E.isSelected();
        boolean member = Member.isSelected();
        boolean vip = VIP.isSelected();
        boolean gold = GOLD.isSelected();
        boolean silver = SILVER.isSelected();
        boolean regular = REGULAR.isSelected();
        int aNum = (int)(ANum.getValue()); 
        int bNum = (int)(BNum.getValue());
        int cNum = (int)(CNum.getValue());
        int dNum = (int)(DNum.getValue());
        int eNum = (int)(ENum.getValue());
        String name = Name.getText();  
        
        
       
        shop Order = new shop(a, b , c , d, e, member , aNum, bNum , cNum, dNum,eNum, name, vip, gold, silver, regular);
        Detial.setText(Order.show()); 
    }                                  

    private void DoneMouseClicked(java.awt.event.MouseEvent evt) {                                  
        int pay = Integer.parseInt(Pay.getText());  
        shop InPay = new shop(pay);    
        Change.setText(InPay.showChange()); 
    }                        
