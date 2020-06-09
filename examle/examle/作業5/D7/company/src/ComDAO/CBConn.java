

package ComDAO;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class CBConn {

    public static void main(String[] args) {
        System.out.println(CBConn.getConn());
    }
   
    public static Connection getConn()
    {
        String url="jdbc:mysql://localhost:3306/dbcom";
        String user="root";
        String password="00000000";
        Connection conn=null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn=DriverManager.getConnection(url, user, password);
        } catch (ClassNotFoundException ex) {
            System.out.println("no driver");
            Logger.getLogger(CBConn.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            System.out.println("no connection");
            Logger.getLogger(CBConn.class.getName()).log(Level.SEVERE, null, ex);
        }
       
       
       
       
        return conn;
    }

public static Connection get() {
// TODO Auto-generated method stub
return null;
}
   
   
   
}