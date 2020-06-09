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
String sql = "select * from " + Table;
Connection conn = DB.ConnectionDB();
Statement st = conn.createStatement();
ResultSet rs = st.executeQuery(sql);
String optID = request.getParameter("order");
String success="";

if(optID != null){

	int pc = 0;
	int windows = 0;
	int lcd = 0;
	int ram = 0;
	int mouse = 0;
	int keyboard = 0;
	int ios = 0;
	int android = 0;

	if(!request.getParameter("pc").equals("")){
	pc = Integer.parseInt(request.getParameter("pc"));
	}
	if(!request.getParameter("windows").equals("")){
	windows = Integer.parseInt(request.getParameter("windows"));
	}
	if(!request.getParameter("lcd").equals("")){
	lcd = Integer.parseInt(request.getParameter("lcd"));
	}
	if(!request.getParameter("ram").equals("")){
	ram = Integer.parseInt(request.getParameter("ram"));
	}
	if(!request.getParameter("mouse").equals("")){
	mouse = Integer.parseInt(request.getParameter("mouse"));
	}
	if(!request.getParameter("keyboard").equals("")){
	keyboard = Integer.parseInt(request.getParameter("keyboard"));
	}
	if(!request.getParameter("ios").equals("")){
	ios = Integer.parseInt(request.getParameter("ios"));
	}
	if(!request.getParameter("android").equals("")){
	android = Integer.parseInt(request.getParameter("android"));
	}
	
	int sum = (pc*40000)+(lcd*5000)+(ram*2000)+(mouse*500)
			+(keyboard*1000)+(ios*30000)+(android*25000)+(windows*5000);
	
	PorderDAO.PorderUpdate(optID, pc, windows, lcd, ram, mouse, keyboard, ios, android);
	success ="修改成功";
}
%>

<div class="header">
<table border="0" align="left" width="100%" >
	<tr>
		<td width="400"><a href=""><img src="photo/logo.jpg"></a>
		<td width="130"><h3>搜尋商品：</h3>
		<td width ="400">
			<form action="" >
				</font><input type="search" name="pordersearch" value="暫時沒功能"  style="width:400px ; height:40px ; font-size:20px">
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
	<form action="update.jsp" method="post" target="_self">
		<table border="0" align="left" width=70% style="margin-left:10%">
			<tr>
				<td width="120"><h4>修改訂單ID</h4>
				<td width="150">
					<select name="order" id="order" style="width:100px ; height:30px ;font-size:20px">
						<%
						while(rs.next()){
							String pay = rs.getString("pay");
							if(pay.equals("尚未付款")){
								int ID = rs.getInt("id");
								%><option style="font-size:20px" value="<%=ID%>"><%=ID%></option><%
							}
						}
						%>
					</select>
				<td width="100"><input type="submit" value="修改" style="height:40px ; width:80px ; font-size:16px">
				<td width="200"><h5><font color="red">只能修改尚未付款的訂單</font></h5>
				<td><h5><font color="blue"><%=success%></font></h5>
			<tr>
				<td colspan="5" height="500" style="background-color : #9FCDD9">
					<table border="0" width="100%">
						<tr>
							<td><h4>電腦PC ( 自創品牌：Super快PC )$40000：<input type="text" name="pc" style="height:25px; width:110px"></h4>
							<td><h4>Windows作業系統( 自創品牌：Super新Windows) - $5000：<input type="text" name="windows"style="height:25px ; width:110px"></h4>
						<tr>
							<td><h4>液晶顯示器LCD( 自創品牌：Super亮LCD) - $5000：<input type="text" name="lcd" style="height:25px; width:110px"></h4>
							<td><h4>記憶體Ram( 自創品牌：Super大Ram ) - $2000：<input type="text" name="ram"style="height:25px; width:110px"></h4>
						<tr>
							<td><h4>滑鼠Mouse( 自創品牌：Super穩Mouse) - $500：<input type="text" name="mouse" style="height:25px; width:110px"></h4>
							<td><h4>鍵盤Keyboard( 自創品牌：Super炫Keyboard ) - $30000：<input type="text" name="keyboard"style="height:25px; width:110px"></h4>
						<tr>
							<td><h4>ios手機( 自創品牌：Super貴ios) - $500：<input type="text" name="ios" style="height:25px; width:110px"></h4>
							<td><h4>Android手機( 自創品牌：Super潮Android ) - $25000：<input type="text" name="android" style="height:25px; width:110px"></h4>
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
					<a href="delete.jsp" style="text-decoration:none">刪除訂單</a>
			<tr>
				<td align="center" height="100px">
					<a href="pay.jsp" style="text-decoration:none">訂單結帳</a>
		</table>
	</div>

</div>

</body>
</html>