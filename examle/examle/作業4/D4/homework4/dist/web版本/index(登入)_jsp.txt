<%@ page language="java" 
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"
import="DAO.DB"
import="java.sql.Connection"
import="java.sql.DriverManager"
import="java.sql.SQLException"
import="java.sql.Statement"
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

	String Url = request.getParameter("url");
	String Port = request.getParameter("port");
	String user = request.getParameter("userName");
	String password = request.getParameter("passWord");
	String Schema = request.getParameter("schema");
	String Table = request.getParameter("table");
	String error = "";

	if(Url != null){
		boolean db=DB.ConnectionDB(Url , Port , user , password);
		if(db == true){
			try {
				Connection conn = DB.ConnectionDB();
			   
			    String SQL = "create database if not exists " + Schema + " default charset utf8 collate utf8_unicode_ci";
			    Statement st = conn.createStatement();
			    st.executeUpdate(SQL);
			    
			    String SQL2 = " create table if not exists " + Table + "(id int Not Null Auto_Increment, name varchar(255) , pc int , windows int , lcd int , ram int , mouse int , keyboard int , iosphone int , androidphone int , sum int , pay varchar(255) , date varchar(255) , Primary Key(id))";
			    Connection conn2 = DB.ConnectionDB(Schema , Table);
			    Statement st2 = conn2.createStatement();
			    st2.executeUpdate(SQL2);
			    }catch (SQLException ex) {
			}
			%> <jsp:forward page="buy.jsp"></jsp:forward> <%
		}else{
			error = "輸入資料有誤，請重新輸入";
		}
	}
%>

<div class="header">
<table border="0" align="left" width="100%" >
	<tr>
		<td width="400"><a href=""><img src="photo/logo.jpg"></a>
	</tr>
</table>
</div>

<div class="content">
<form action="index.jsp" method="post" target="_self">
	<table align="center" width="1000" height="500" border="0" Style="background-color : #6BDCC6">
		<tr>
			<td height="100" align="center" colspan="4"><h2><font color="#2B6358">MySQL資料庫登入系統</font></h2><font color="red" size="1px"><%=error%></font>
		<tr>
			<td align="center">
				<h3><font color="#2B6358">URL位置</font></h3>
			<td align="center">
				<input type="text" name="url" style="width:200px ; height:30px ; font-size:20px">
			<td align="center">
				<h3><font color="#2B6358">埠號port</font></h3>
			<td align="center">
				<input type="text" name="port" style="width:200px ; height:30px ; font-size:20px">
		<tr>
			<td align="center">
				<h3><font color="#2B6358">帳號</font></h3>
			<td align="center">
				<input type="text" name="userName" style="width:200px ; height:30px ; font-size:20px">
			<td align="center">
				<h3><font color="#2B6358">密碼</font></h3>
			<td align="center">
				<input type="password" name="passWord" style="width:200px ; height:30px ; font-size:20px">
		<tr>
			<td align="center">
				<h3><font color="#2B6358">Schema</font></h3>
			<td align="center">
				<input type="text" name="schema" style="width:200px ; height:30px ; font-size:20px">
			<td align="center">
				<h3><font color="#2B6358">Table</font></h3>
			<td align="center">
				<input type="text" name="table" style="width:200px ; height:30px ; font-size:20px">
		<tr>
			<td colspan="4" height="50" align="center">
			<input type="submit" name="ok1" value="確定" style="height:30px ; width:50px">
	</table>
</form>
</div>

</body>
</html>