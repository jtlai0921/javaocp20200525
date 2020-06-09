<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "model.porder"
    import = "Dao.porderDao"
    import="java.util.Date"
    %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="cssEX.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
function add(){
    alert("新增成功！");
}
</script>
<body>

<div class=hearder>
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
<form action="controller/addController.jsp" method="post">
	<table border="0"class="pay" align="center" width="50%">
		<tr>
			<td align="center"><a href="user1.jsp"><img alt="" src="pic/pay.png"></a>
			<td align="center"><a href="user2.jsp"><img alt="" src="pic/search.png"></a>
			<td align="center"><a href="index.jsp"><img alt="" src="pic/logout.png"></a>
	</table>
	<table border="0" align="center" width="50%">
		<tr>
			<td align="right" width="50%"><font><h3>您的桌號：</h3></font>
			<td align="left">
				<select name="tablenum" style="width:50px ; height:30px">
					<%
					for(int i = 1 ; i <=10 ; i++){
					%>
					<option style="font-size:20px" value="<%=i %>"><%=i %></option>
					<%
					}
					%>
				</select>
			<td><button type="submit"  onclick="add()"><img src="pic/ok.jpg"></button>
			
	</table>
	<table border="5" width=60% align="center" style="background-color : #E1E9F0;border:pink">
		<tr>
			<td align="center"colspan="2" class="A" style="background-color :red"><font style="text-shadow:1px 1px #112E25"size="10">A 主餐</font>
			<td align="center"colspan="2" class="B" style="background-color :#00fa9a"><font style="text-shadow:1px 1px #112E25"size="10">B 附餐</font>
			<td align="center"colspan="2" class="C" style="background-color :#00bfff"><font style="text-shadow:1px 1px #112E25"size="10">C 飲品</font>
		<tr>
			<td  align="center" width=22%><font color="#E9806E"><h3>莎朗牛排$200</h3></font><br><img alt="" src="pic/sirlon.jpg">
			<td  align="center" width=10%><font  color="#E9806E"><h3>數量</h3></font>
				<br>
				<select name="sirlon" style="width:50px ; height:30px">
					<%
					for(int i = 0 ; i <=10 ; i++){
					%>
					<option style="font-size:20px" value="<%=i %>"><%=i %></option>
					<%
					}
					%>
				</select>
			<td align="center" width=22%><font color="#E9806E"><h3>玉米濃湯$50</h3></font><br><img alt="" src="pic/soup.jpg">
			<td align="center" width=10%><font  color="#E9806E"><h3>數量</h3></font>
				<br>
				<select name="soup" style="width:50px ; height:30px">
					<%
					for(int i = 0 ; i <=10 ; i++){
					%>
					<option style="font-size:20px" value="<%=i %>"><%=i %></option>
					<%
					}
					%>
				</select>
			<td align="center" width=22%><font color="#E9806E"><h3>可樂$30</h3></font><br><img alt="" src="pic/cola.jpg">
			<td align="center" width=10%><font  color="#E9806E"><h3>數量</h3></font>
				<br>
				<select name="cola" style="width:50px ; height:30px">
					<%
					for(int i = 0 ; i <=10 ; i++){
					%>
					<option style="font-size:20px" value="<%=i %>"><%=i %></option>
					<%
					}
					%>
				</select>
		<tr>
			<td  align="center" width=22%><font color="#E9806E"><h3>菲力牛排$220</h3></font><br><img alt="" src="pic/filet.jpg">
			<td  align="center" width=10%><font  color="#E9806E"><h3>數量</h3></font>
				<br>
				<select name="filet" style="width:50px ; height:30px">
					<%
					for(int i = 0 ; i <=10 ; i++){
					%>
					<option style="font-size:20px" value="<%=i %>"><%=i %></option>
					<%
					}
					%>
				</select>
			<td align="center" width=22%><font color="#E9806E"><h3>烤麵包$40</h3></font><br><img alt="" src="pic/bread.jpg">
			<td align="center" width=10%><font  color="#E9806E"><h3>數量</h3></font>
				<br>
				<select name="bread" style="width:50px ; height:30px">
					<%
					for(int i = 0 ; i <=10 ; i++){
					%>
					<option style="font-size:20px" value="<%=i %>"><%=i %></option>
					<%
					}
					%>
				</select>
			<td align="center" width=22%><font color="#E9806E"><h3>果汁$25</h3></font><br><img alt="" src="pic/juice.jpg">
			<td align="center" width=10%><font  color="#E9806E"><h3>數量</h3></font>
				<br>
				<select name="juice" style="width:50px ; height:30px">
									<%
					for(int i = 0 ; i <=10 ; i++){
					%>
					<option style="font-size:20px" value="<%=i %>"><%=i %></option>
					<%
					}
					%>
				</select>
	</table>
</form>
</div>
</body>
</html>