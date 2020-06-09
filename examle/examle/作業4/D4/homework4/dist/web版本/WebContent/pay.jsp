<%@ page language="java" 
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"
import="DAO.DB"
import="DAO.PorderDAO"
import="java.sql.Connection"
import="java.sql.Statement"
import="java.sql.ResultSet"
import="java.sql.PreparedStatement"
import="java.sql.SQLException"
import ="java.text.DateFormat"
import="java.text.SimpleDateFormat"
import="java.util.Date"
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="cssEX/cssEX.css">
<meta charset="UTF-8">
<title>線上購物網站</title>

</head>
<body>

<%

String Table = DB.getTable();
String optID = request.getParameter("order");
String success="";
String name="";
String PC = "";
String windows = "";
String Lcd = "";
String Ram = "";
String Mouse = "";
String Keyboard = "";
String iosphone = "";
String androidphone = "";
String sum = "";
String pay = "";
String date = "";


if(optID != null){
	Connection conn2 = DB.ConnectionDB();
	String Pay = new String(request.getParameter("radio1").getBytes("iso-8859-1"), "utf-8");
	Date dt = new Date();
    DateFormat dFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); //HH表示24小时制；
    String formatDate = dFormat.format(dt);
	success="付款成功";
	String SQL = "update "+Table+" set pay=? , date=? where id="+optID;
	PreparedStatement ps = conn2.prepareStatement(SQL);
	ps.setNString(1, Pay);
	ps.setNString(2, formatDate);
	ps.executeUpdate();
	
	String sql2 = "select * from " + Table +" where id="+optID;
	Statement st2 = conn2.createStatement();
	ResultSet rs2 = st2.executeQuery(sql2);
	
	if(rs2.next()){
		name = rs2.getString("name");
		PC = String.valueOf(rs2.getInt("pc"))+" 個";
		windows = String.valueOf(rs2.getInt("windows")+" 個");
		Lcd = String.valueOf(rs2.getInt("lcd")+" 個");
		Ram = String.valueOf(rs2.getInt("ram")+" 個");
		Mouse = String.valueOf(rs2.getInt("mouse")+" 個");
		Keyboard = String.valueOf(rs2.getInt("keyboard")+" 個");
		iosphone = String.valueOf(rs2.getInt("iosphone")+" 個");
		androidphone = String.valueOf(rs2.getInt("androidphone")+" 個");
		sum = String.valueOf(rs2.getInt("sum")+" 元");
		pay = rs2.getString("pay");
		date = rs2.getString("date");
	}
}
String sql = "select * from " + Table;
Connection conn = DB.ConnectionDB();
Statement st = conn.createStatement();
ResultSet rs = st.executeQuery(sql);
%>

<div class="header">
<table border="0" align="left" width="100%" >
	<tr>
		<td width="400"><a href=""><img src="photo/logo.jpg"></a>
		<td width="130"><h3>搜尋商品：</h3>
		<td width ="400">
			<form action="" >
				</font><input type="search" name="pordersearch" value="暫時沒功能" style="width:400px ; height:40px ; font-size:20px">
		<td width="150">
				<button type="button" value="搜尋" Style="background-color:#fff2f2">
					<img src="photo/search.png" >
				</button>
			</form>
		<td width="200" align="left"><a href="index.jsp"style="text-decoration:none"><h3>登出</h3></a>
		<td width="200" align="left"><a href="buy.jsp"style="text-decoration:none"><h3>購買商品</h3></a>
		<td width="200" align="left"><a href="about.jsp"style="text-decoration:none"><h3>關於本賣場</h3></a>
	</tr>
</table>
</div>

<div class="content">

	<div>
	<form action="pay.jsp" method="post" target="_self">
		<table border="0" align="left" width=70% style="margin-left:10%">
			<tr>
				<td width="120"><h4>付款訂單ID</h4>
				<td width="150">
					<select name="order" id="order" style="width:100px ; height:30px ;font-size:20px">
						<%
						while(rs.next()){
							if(rs.getString("pay").equals("尚未付款")){
								int ID = rs.getInt("id");
								%><option style="font-size:20px" value="<%=ID%>"><%=ID%></option><%
							}
						}
						%>
					</select>
				<td width="100"><input type="radio" name="radio1"  value="ATM轉帳">ATM轉帳
				<td width="100"><input type="radio" name="radio1" value="VISA刷卡">VISA刷卡
				<td width="100"><input type="radio" name="radio1"  value="貨到付款">貨到付款
				<td width="100"><input type="submit" value="付款" style="height:40px ; width:80px ; font-size:16px">
				<td width="200"><h5><font color="red">付款後就無法修改及刪除</font></h5>
				<td><h5><font color="blue"><%=success %></font></h5>
			<tr>
				<td colspan="8" height="500" style="background-color : #9FCDD9">
					<table border="0" width="100%">
						<tr>
							<td><h4>付款後的訂單資訊：</h4>
							<td><h4>訂單ID：<%=optID %></h4>
						<tr>
							<td width="50%"><h4>顧客姓名：<%= name%></h4>
							<td width="50%"><h4>總價：<%=sum%></h4>
						<tr>
							<td><h4>電腦PC ( 自創品牌：Super快PC )$40000：<font color="blue"><%= PC%></font></h4>
							<td><h4>Windows作業系統( 自創品牌：Super新Windows) - $5000：<font color="blue"><%= windows%></font></h4>
						<tr>
							<td><h4>液晶顯示器LCD( 自創品牌：Super亮LCD) - $5000：<font color="blue"><%= Lcd%></font></h4>
							<td><h4>記憶體Ram( 自創品牌：Super大Ram ) - $2000：<font color="blue"><%= Ram%></font></h4>
						<tr>
							<td><h4>滑鼠Mouse( 自創品牌：Super穩Mouse) - $500：<font color="blue"><%= Mouse%></font></h4>
							<td><h4>鍵盤Keyboard( 自創品牌：Super炫Keyboard ) - $30000：<font color="blue"><%= Keyboard%></font></h4>
						<tr>
							<td><h4>ios手機( 自創品牌：Super貴ios) - $500：<font color="blue"><%= iosphone%></font></h4>
							<td><h4>Android手機( 自創品牌：Super潮Android ) - $25000：<font color="blue"><%= androidphone%></font></h4>
						<tr>
							<td><h4>付款方式：<font color="blue"><%= pay%></font></h4>
							<td><h4>付款日期：<font color="blue"><%= date%></font></h4>
					</table>
		</table>
	</form>
	</div>
	
	<div>
		<table border="0" align="left" width=8% style="margin-left:2% ; margin-top:4%" >
			<tr>
				<td align="center" height="100px">
					<a href="ordercar.jsp" style="text-decoration:none">查詢訂單</a>
			<tr>
				<td align="center" height="100px">
					<a href="update.jsp" style="text-decoration:none">修改訂單</a>
			<tr>
				<td align="center" height="100px">
					<a href="delete.jsp" style="text-decoration:none">刪除訂單</a>
		</table>
	</div>

</div>

</body>
</html>