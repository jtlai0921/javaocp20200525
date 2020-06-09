package ComDAO;

import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import model.car;

public class carDAO implements implCDAO {
public static void main(String[]args) {


System.out.println(new carDAO().query());


}



public void add(Object o) {

car c=(car)o;
String sql="insert into dbcom.carid(name,bmw,benz,audi,toyota,honda,mazada,sum) values(?,?,?,?,?,?,?,?)";
Connection conn=CBConn.getConn();
try {
PreparedStatement ps=conn.prepareStatement(sql);
ps.setString(1, c.getName());
ps.setInt(2, c.getBmw());
ps.setInt(3, c.getBenz());
ps.setInt(4, c.getAudi());
ps.setInt(5, c.getToyota());
ps.setInt(6, c.getHonda());
ps.setInt(7, c.getMazada());
ps.setInt(8, c.getSum());
//ps.setDate(9, (Date) c.getDate());

ps.executeUpdate();
}catch(SQLException e) {
e.printStackTrace();
}
}


@Override
public void add(String name, int bmw, int benz, int audi, int toyota, int honda, int mazada)
{

}

@Override
public ResultSet query() {
Connection conn=CBConn.getConn();
String sql="select * from dbcom.carid";
ResultSet rs=null;

try {
Statement st=conn.createStatement();
rs=st.executeQuery(sql);

}catch(SQLException e) {
e.printStackTrace();
}

return rs;
}


@Override
public void update(int id, Object o) {
car c=(car)o;

String sql="update dbcom.carid set name='"+c.getName()+
"', bmw="+c.getBmw()+
", benz="+c.getBenz()+
", audi="+c.getAudi()+
", toyota="+c.getToyota()+
", honda="+c.getHonda()+
", mazada="+c.getMazada()+
", sum="+c.getSum()+
" where id="+id;
Connection conn=CBConn.getConn();
try {
PreparedStatement ps=conn.prepareStatement(sql);
ps.executeUpdate();
}catch(SQLException e) {
e.printStackTrace();
}
}

public void update2(int id, Object o) {
car c=(car)o;
String sql="update dbcom.carid set name=?,bmw=?,benz=?,audi=?,toyota=?,honda=?,mazada=?,sum=? whrere id=?";

Connection conn=CBConn.getConn();

try {
PreparedStatement ps=conn.prepareStatement(sql);
ps.setString(1, c.getName());
ps.setInt(2, c.getBmw());
ps.setInt(3, c.getBenz());
ps.setInt(4, c.getAudi());
ps.setInt(5, c.getToyota());
ps.setInt(6, c.getHonda());
ps.setInt(7, c.getMazada());
ps.setInt(8, c.getSum());
ps.setInt(9, id);
ps.executeUpdate();

}catch(SQLException e) {
e.printStackTrace();
}

}

@Override
public void delete(int id) {
String sql="delete from dbcom.carid where id="+id;

Connection conn=CBConn.getConn();
try {
PreparedStatement ps=conn.prepareStatement(sql);

ps.executeUpdate();

}catch(SQLException e) {
e.printStackTrace();
}

}



@Override
public ResultSet query(String msg) {
// TODO Auto-generated method stub
return null;
}

}

