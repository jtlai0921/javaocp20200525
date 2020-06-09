<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "model.porder"
    import = "Dao.porderDao"
    import="java.sql.ResultSet"
    %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="cssEX.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String id=request.getParameter("ID");
	ResultSet rs2 = null;
	String tablenum ="";
	String sirlon = "";
	String filet="";
	String soup="";
	String bread="";
	String cola="";
	String juice="";
	String date="";
	String sum="";
	if(id != null){
		rs2 = porderDao.search(id);
		if(rs2.next()){
			tablenum = String.valueOf(rs2.getInt("tablenum"));
			sirlon = String.valueOf(rs2.getInt("sirlon"));
			filet = String.valueOf(rs2.getInt("filet"));
			soup = String.valueOf(rs2.getInt("soup"));
			bread = String.valueOf(rs2.getInt("bread"));
			cola = String.valueOf(rs2.getInt("cola"));
			juice = String.valueOf(rs2.getInt("juice"));
			date = rs2.getString("date");
			sum = String.valueOf(rs2.getInt("sum"));
		}
	}else{
		id="";
	}
	%>
<div class=header>
	<table class="marquee"border="10" width="60%" align="center">
		<tr>
			<td>
				<marquee height="60px" scrollamount="10"><!-- 跑馬燈語法 -->
					<font size="7" color="#338B6F" face="微軟正黑體"><b>歡迎光臨</b></font>
					<font size="7" color="red" face="微軟正黑體"><b>你他家的</b></font>
					<font size="7" color="#338B6F" face="微軟正黑體"><b>牛排館</b></font>
				</marquee>
	</table>
</div>
<div class=content>
<form action="user2.jsp" method="post">
	<table border="0"class="pay" align="center" width="50%">
		<tr>
			<td align="center"><a href="user1.jsp"><img alt="" src="pic/pay.png"></a>
			<td align="center"><a href="user2.jsp"><img alt="" src="pic/search.png"></a>
			<td align="center"><a href="index.jsp"><img alt="" src="pic/logout.png"></a>
	</table>
	<table border="0" align="center" width="50%">
		<tr>
			<td align="right" width="50%"><font><h3>您要查詢的訂單編號：</h3></font>
			<td align="left">
				<select name="ID" style="width:50px ; height:30px">
					<%
					ResultSet rs = porderDao.searchID();
					while(rs.next()){
					%>
					<option style="font-size:20px" value="<%=rs.getInt("id")%>"><%=rs.getInt("id")%></option>
					<%
					}
					%>
				</select>
			<td><button type="submit"><img src="pic/searchorder.jpg"></button>
	</table>
	<table border="5" width=40% align="center" style="background-color : #E1E9F0;border:pink">
		<tr>
			<td>
				<table border="0" width=100%>
					<tr>
						<td  align="right" width=30%><font color="#588947"><b>訂單編號為：</b></font><font color="blue"><b><%=id %>&nbsp號</b></font>
						<td  align="center" width=35% height="60"><font color="#588947"><b>桌號為：</b></font><font color="blue"><b><%=tablenum %>&nbsp號</b></font>
						<td  align="left" width=35%>
					<tr>
						<td  align="center" width=30% height="60"><font color="#7D4E5B"><b>莎朗牛排</b></font>
						<td  align="center" width=35% ><font color="#588947"><b>數量：</b></font><font color="blue"><b><%=sirlon %>&nbsp個</b></font>
						<td  align="center" width=35%><font color="#588947"><b>價格：</b></font><font color="blue"><b><%if(!sirlon.equals(""))%><%=Integer.parseInt(sirlon)*200%>&nbsp元</b></font>
					<tr>
						<td  align="center" width=30% height="60"><font color="#7D4E5B"><b>菲力牛排</b></font>
						<td  align="center" width=35%><font color="#588947"><b>數量：</b></font><font color="blue"><b><%=filet%>&nbsp個</b></font>
						<td  align="center" width=35%><font color="#588947"><b>價格：</b></font><font color="blue"><b><%if(!filet.equals(""))%><%=Integer.parseInt(filet)*220%>&nbsp元</b></font>
					<tr>
						<td  align="center" width=30% height="60"><font color="#7D4E5B"><b>玉米濃湯</b></font>
						<td  align="center" width=35%><font color="#588947"><b>數量：</b></font><font color="blue"><b><%=soup%>&nbsp個</b></font>
						<td  align="center" width=35%><font color="#588947"><b>價格：</b></font><font color="blue"><b><%if(!soup.equals(""))%><%=Integer.parseInt(soup)*50%>&nbsp元</b></font>
					<tr>
						<td  align="center" width=30% height="60"><font color="#7D4E5B"><b>烤麵包</b></font>
						<td  align="center" width=35%><font color="#588947"><b>數量：</b></font><font color="blue"><b><%=bread %>&nbsp個</b></font>
						<td  align="center" width=35%><font color="#588947"><b>價格：</b></font><font color="blue"><b><%if(!bread.equals(""))%><%=Integer.parseInt(bread)*40%>&nbsp元</b></font>
					<tr>
						<td  align="center" width=30% height="60"><font color="#7D4E5B"><b>可樂</b></font>
						<td  align="center" width=35%><font color="#588947"><b>數量：</b></font><font color="blue"><b><%=cola %>&nbsp個</b></font>
						<td  align="center" width=35%><font color="#588947"><b>價格：</b></font><font color="blue"><b><%if(!cola.equals(""))%><%=Integer.parseInt(cola)*30%>&nbsp元</b></font>
					<tr>
						<td  align="center" width=30% height="60"><font color="#7D4E5B"><b>果汁</b></font>
						<td  align="center" width=35%><font color="#588947"><b>數量：</b></font><font color="blue"><b><%=juice%>&nbsp個</b></font>
						<td  align="center" width=35%><font color="#588947"><b>價格：</b></font><font color="blue"><b><%if(!juice.equals(""))%><%=Integer.parseInt(juice)*25%>&nbsp元</b></font>
					<tr>
						<td colspan="3" align="center" width=35% height="60"><font color="#588947"><b>總價：</b></font><font color="blue"><b><%=sum %>&nbsp元</b></font>
					<tr>
						<td colspan="3" align="center" width=35% height="60"><font color="#588947"><b>訂單日期：</b></font><font color="blue"><b><%=date %></b></font>
				</table>
	</table>
</form>
</div>
</body>
</html>