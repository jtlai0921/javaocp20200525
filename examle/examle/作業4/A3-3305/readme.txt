
package Model;

public class Porder {
        private String name;
        private int ruler,pen,sum;
        
        public Porder(String name , int ruler ,int pen){
            this.name = name;
            this.ruler = ruler;
            this.pen = pen;
           
        }

    public String getName() {
        return name;
    }

    public int getRuler() {
        return ruler;
    }

    public int getPen() {
        return pen;
    }

    public int getSum() {
         sum = ruler*10 + pen*18;
        return sum;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setRuler(int ruler) {
        this.ruler = ruler;
    }

    public void setPen(int pen) {
        this.pen = pen;
    }
        
}
============================================
package Dao;

import Model.Porder;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

public interface implDao {
    ResultSet query();
    void add(String name, int ruler , int pen);
    void update(int id,int ruler,int pen);
    void delete(int id);
    public static Connection getConn (){
        String url = "jdbc:mysql://localhost:3305/gjun";
        String user = "root";
        String password = "1234";
        Connection conn = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(url, user, password);
            
            return conn;
            
        } catch (ClassNotFoundException ex) {
            System.out.println("no connect");
            Logger.getLogger(implDao.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            System.out.println("no SQL");
            Logger.getLogger(implDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return conn;
        
        
    }
    
   
    
}
=======================================

package Dao;

import Model.Porder;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

public class PorderDao implements implDao {

    public static void main(String[] args) {
        //new PorderDao().add("AAA", 50, 30);
        new PorderDao().delete(21);
        //System.out.println(new PorderDao().query());
    }
   
    @Override
    
    public void add(String name, int ruler, int pen) {
            Porder po = new Porder(name, ruler , pen);
            Connection conn = implDao.getConn();
            String sql = "insert into porder(name,ruler,pen,sum) values(?,?,?,?)";
        try {
            PreparedStatement  ps = conn.prepareStatement(sql);
            ps.setString(1, name);
            ps.setInt(2, ruler);
            ps.setInt(3, pen);
            ps.setInt(4, ruler*1+pen*1);
            ps.executeUpdate();
            
        } catch (SQLException ex) {
            Logger.getLogger(PorderDao.class.getName()).log(Level.SEVERE, null, ex);
        }
            
            
        
    }
     public ResultSet query(){
        ResultSet rs = null;
        
        try {
                String sql = "select * from porder";
                Connection conn= implDao.getConn();
                Statement st = conn.createStatement();
                 rs = st.executeQuery(sql);
        } catch (SQLException ex) {
            Logger.getLogger(implDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }

    @Override
    public void update(int id, int ruler, int pen) {
            Connection conn = implDao.getConn();
            int sum = pen+ruler;
            String sql = "UPDATE porder set ruler = "+ruler+",  pen = "+pen+",  sum = "+sum+" where Id ="+id;
        try {
            PreparedStatement  ps = conn.prepareStatement(sql);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(PorderDao.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void delete(int id) {
        Connection conn = implDao.getConn();
        String sql = "DELETE FROM porder WHERE id = "+id;
        try {
            //PreparedStatement  ps = conn.prepareStatement(sql);
            //ps.executeUpdate();
            Statement st = conn.createStatement();   //可使用seatement及preparedstatement將資料庫更新
            st.executeUpdate(sql);   //將更新的資料執行
            
        } catch (SQLException ex) {
            Logger.getLogger(PorderDao.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
     
}
========================================
package Controller;
import Dao.PorderDao;
import Dao.implDao;
import Model.Porder;
import java.sql.Connection;
import java.sql.ResultSet;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;



/**
 *
 * @author DanWin7
 */
public class PorderUI extends javax.swing.JFrame {
       DateFormat dateFormat = new SimpleDateFormat("MM/dd");
       Date date = new Date();
       Calendar cal = Calendar.getInstance();
       
       
   
    public PorderUI() {
        
        initComponents();
        dateTF.setText(" "+dateFormat.format(date)) ;
    }



private void OKMouseClicked(java.awt.event.MouseEvent evt) {                                
        String Name = name.getText();
        int Ruler = Integer.parseInt(ruler.getText());
        int Pen = Integer.parseInt(pen.getText());
        new PorderDao().add(Name,Ruler,Pen);
        ans.setText("新增成功");
        ResultSet rs = new PorderDao().query();      
         
            
            String msg = ""; //建立空字串
            try
            {
                while(rs.next()){  //當有下一筆持續讀出
                    msg = msg + "\nid : "+rs.getInt("id")+  
                            "\tname : "+rs.getString("name")+
                            "\truler : "+rs.getInt("ruler")+
                            "\tpen : "+rs.getInt("pen")+
                            "\tsum : "+rs.getInt("sum");
                }
                
            }catch(Exception e){
                e.printStackTrace();
            }
            ans1.setText(msg);  //將資料庫內的資料顯示到視窗中
    }                               

    private void OK1MouseClicked(java.awt.event.MouseEvent evt) {                                 
        ResultSet rs = new PorderDao().query();      
         
            
            String msg = ""; 
            try
            {
                while(rs.next()){  
                    msg = msg + "\nid : "+rs.getInt("id")+  
                            "\tname : "+rs.getString("name")+
                            "\truler : "+rs.getInt("ruler")+
                            "\tpen : "+rs.getInt("pen")+
                            "\tsum : "+rs.getInt("sum");
                }
                
            }catch(Exception e){
                e.printStackTrace();
            }
            ans1.setText(msg);  
    }                                

    private void updateMouseClicked(java.awt.event.MouseEvent evt) {                                    
       int Ruler = Integer.parseInt(ruler1.getText());
       int Pen = Integer.parseInt(pen1.getText());
       int Id = Integer.parseInt(id.getText());
       new PorderDao().update(Id,Ruler,Pen);
       
       ResultSet rs = new PorderDao().query();      
       String msg = ""; 
            try
            {
                while(rs.next()){  
                    msg = msg + "\nid : "+rs.getInt("id")+  
                            "\tname : "+rs.getString("name")+
                            "\truler : "+rs.getInt("ruler")+
                            "\tpen : "+rs.getInt("pen")+
                            "\tsum : "+rs.getInt("sum");
                }
                
            }catch(Exception e){
                e.printStackTrace();
            }
            ans2.setText(msg);  
    }                                   

    private void deleteMouseClicked(java.awt.event.MouseEvent evt) {                                    
       int Id = Integer.parseInt(id1.getText());
       new PorderDao().delete(Id);
       
       ResultSet rs = new PorderDao().query();      
       String msg = ""; 
            try
            {
                while(rs.next()){ 
                    msg = msg + "\nid : "+rs.getInt("id")+  
                           "\tname : "+rs.getString("name")+
                           "\truler : "+rs.getInt("ruler")+
                          "\tpen : "+rs.getInt("pen")+
                          "\tsum : "+rs.getInt("sum");
                            
                   
                }
                
            }catch(Exception e){
                e.printStackTrace();
            }
                       
            ans3.setText(msg);  
    }