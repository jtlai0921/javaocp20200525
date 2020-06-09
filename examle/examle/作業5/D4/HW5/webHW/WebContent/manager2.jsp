<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "model.porder"
    import = "Dao.porderDao"
    import="java.util.Date"
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

<script>

function deletecheck(){
	alert("刪除成功！");
}

</script>

<%
	String id = request.getParameter("id");
	String ok = request.getParameter("ok");
	ResultSet rs =null;
	String tablenum ="";
	String sirlon = "";
	String filet="";
	String soup="";
	String bread="";
	String cola="";
	String juice="";
	String success="";
	if(ok != null && ok.equals("1")){
		rs = porderDao.search(id);
		if(rs.next()){
			tablenum = String.valueOf(rs.getInt("tablenum"));
			sirlon = String.valueOf(rs.getInt("sirlon"));
			filet = String.valueOf(rs.getInt("filet"));
			soup = String.valueOf(rs.getInt("soup"));
			bread = String.valueOf(rs.getInt("bread"));
			cola = String.valueOf(rs.getInt("cola"));
			juice = String.valueOf(rs.getInt("juice"));
		}
	}
	if(ok != null && ok.equals("2")){
		porderDao.delete(id);
	}
%>
<div class="header">
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
<div class="content">
<form action="manager2.jsp" method="post">
	<table border="0"class="pay" align="center" width="50%">
		<tr>
			<td align="center"><a href="manager1.jsp"><img alt="" src="pic/update.jpg"></a>
			<td align="center"><a href="manager2.jsp"><img alt="" src="pic/delete.jpg"></a>
			<td align="center"><a href="index.jsp"><img alt="" src="pic/logout.png"></a>
	</table>
	<table border="0" align="center" width="50%">
		<tr>
			<td align="right" width="30%"><font><h3>選擇要刪除的ID：</h3></font>
			<td width="10%">
				<select style="width:50px ; height:30px" name="id">
					<%
					ResultSet rs2 = porderDao.searchID();
					while(rs2.next()){
					%>
					<option style="font-size:20px" value="<%=rs2.getInt("id")%>"><%=rs2.getInt("id")%></option>
					<%
					}
					%>
			<td width="10%"><button type="submit" name="ok" value="1"><img src="pic/searchorder.jpg"></button>
			<td><button type="submit" name="ok" value="2" onclick="deletecheck()"><img src="pic/deleteporder.jpg"></button>
	</table>
	<table border="0" align="center" width="50%">
		<tr>
			<td align="right" width="25%"><font><h3>您的桌號：&nbsp<font color="blue"><%=tablenum %></font>&nbsp號</h3></font>
			<td align="left">
	</table>
	<table border="5" width=60% align="center" style="background-color : #E1E9F0;border:pink">
		<tr>
			<td align="center"colspan="2" class="A" style="background-color :red"><font style="text-shadow:3px 3px #112E25"size="10">A</font>
			<td align="center"colspan="2" class="B" style="background-color :#00fa9a"><font style="text-shadow:3px 3px #112E25"size="10">B</font>
			<td align="center"colspan="2" class="C" style="background-color :#00bfff"><font style="text-shadow:3px 3px #112E25"size="10">C</font>
		<tr>
			<td  align="center" width=15%><font color="#E9806E"><h3>莎朗牛排$200</h3></font><br><img alt="" src="pic/sirlon.jpg">
			<td  align="center" width=12%><font  color="#E9806E"><h3>數量&nbsp<font color="blue"><%=sirlon %></font>&nbsp個</h3></font>
			<td align="center" width=15%><font color="#E9806E"><h3>玉米濃湯$50</h3></font><br><img alt="" src="pic/soup.jpg">
			<td  align="center" width=12%><font  color="#E9806E"><h3>數量&nbsp<font color="blue"><%=soup %></font>&nbsp個</h3></font>
			<td align="center" width=15%><font color="#E9806E"><h3>可樂$30</h3></font><br><img alt="" src="pic/cola.jpg">
			<td  align="center" width=12%><font  color="#E9806E"><h3>數量&nbsp<font color="blue"><%=cola %></font>&nbsp個</h3></font>
		<tr>
			<td  align="center" ><font color="#E9806E"><h3>菲力牛排$220</h3></font><br><img alt="" src="pic/filet.jpg">
			<td  align="center" ><font  color="#E9806E"><h3>數量&nbsp<font color="blue"><%=filet %></font>&nbsp個</h3></font>
			<td align="center"><font color="#E9806E"><h3>烤麵包$40</h3></font><br><img alt="" src="pic/bread.jpg">
			<td  align="center" ><font  color="#E9806E"><h3>數量&nbsp<font color="blue"><%=bread %></font>&nbsp個</h3></font>
			<td align="center" ><font color="#E9806E"><h3>果汁$25</h3></font><br><img alt="" src="pic/juice.jpg">
			<td  align="center" ><font  color="#E9806E"><h3>數量&nbsp<font color="blue"><%=juice %></font>&nbsp個</h3></font>
		</table>
</form>
</div>
</body>
</html>