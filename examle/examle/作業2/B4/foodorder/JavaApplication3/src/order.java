/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author peter
 */

public class order {
    private String name;
    private double discount;
    private String level;
    private String emsg;
    private String msg;
    order(String name,String level,double discount)
    {
        this.name=name;
        this.discount=discount;
        this.level=level;
    }
   String show()
   {
       return "會員姓名\t"+getName()+"會員等級\t"+getLevel();
   }
    public String getName() {
        return name;
    }

    public double getDiscount() {
        return discount;
    }

    public String getLevel() {
        return level;
    }

    public String getEmsg() {
        return emsg;
    }

    public String getMsg() {
        return msg;
    }

    public void setName(String name) {
        if (name.equals(name)==false)
        {
           emsg="未輸入姓名\n";
            System.out.println("未輸入姓名\n");
            
        }
        else
        {
            this.name = name;
        }
    }

    public void setDiscount(double discount) {
        if (discount>=0.1)
        {
          this.discount = discount;
        }
        else
        {
          //  this.emsg="未選擇會員等級\n";
            emsg="未選擇會員等級\n";
               System.out.println("未選擇會員等級\n");
            this.discount=0;
        }
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public void setEmsg(String emsg) {
        this.emsg = emsg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }
    
}
