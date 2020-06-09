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

<script>
function update(){
	var tableok1 = document.forms["form1"]["tableok"].checked;
	var sirlonok1 = document.forms["form1"]["sirlonok"].checked;
	var filetok1= document.forms["form1"]["filetok"].checked;
	var soupok1= document.forms["form1"]["soupok"].checked;
	var breadok1= document.forms["form1"]["breadok"].checked;
	var colaok1= document.forms["form1"]["colaok"].checked;
	var juiceok1= document.forms["form1"]["juiceok"].checked;
	console.log(tableok1);
	
	if(tableok1 !=false || sirlonok1 !=false || filetok1 !=false || soupok1 !=false|| breadok1 !=false || colaok1 !=false || juiceok1 != false){
		alert("修改成功！");
	}else{
		alert("尚未勾選修改項目！");
	}
}
</script>

<body>

<%

	String tableok= request.getParameter("tableok");
	String sirlonok= request.getParameter("sirlonok");
	String filetok= request.getParameter("filetok");
	String soupok= request.getParameter("soupok");
	String breadok= request.getParameter("breadok");
	String colaok= request.getParameter("colaok");
	String juiceok= request.getParameter("juiceok");
	
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
	String error="";
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
		if(tableok !=null || sirlonok != null || filetok != null || soupok !=null || breadok !=null || colaok !=null || juiceok != null){	
			porder p = new porder();
				if(tableok != null){
					p.setTablenum(Integer.parseInt(request.getParameter("tablenum")));
				}
				if(sirlonok!=null){
					p.setSirlon(Integer.parseInt(request.getParameter("sirlon")));
				}
				if(filetok != null){
					p.setFilet(Integer.parseInt(request.getParameter("filet")));
				}
				if(soupok != null ){
					p.setSoup(Integer.parseInt(request.getParameter("soup")));
				}
				if(breadok != null ){
					p.setBread(Integer.parseInt(request.getParameter("bread")));
				}
				if(colaok != null ){
					p.setCola(Integer.parseInt(request.getParameter("cola")));
				}
				if(juiceok !=null ){
					p.setJuice(Integer.parseInt(request.getParameter("juice")));
				}
			Date date = new Date();
			p.setDate(date);
			porderDao.update(id, p);
		}
	}
%>
<div class=header></div>
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
<form name="form1" action="manager1.jsp" method="post" >
	<table border="0"class="pay" align="center" width="50%">
		<tr>
			<td align="center"><a href="manager1.jsp"><img alt="" src="pic/update.jpg"></a>
			<td align="center"><a href="manager2.jsp"><img alt="" src="pic/delete.jpg"></a>
			<td align="center"><a href="index.jsp"><img alt="" src="pic/logout.png"></a>
	</table>
	<table border="0" align="center" width="50%">
		<tr>
			<td align="right" width="30%"><font><h3>選擇要修改的ID：</h3></font>
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
			<td><button type="submit" name="ok" value="2" onclick="update()"><img src="pic/updateporder.jpg"></button>
	</table>
	<table border="0" align="center" width="50%">
		<tr>
			<td align="right" width="30%"><font><h3>您的原桌號：&nbsp<font color="blue"><%=tablenum %></font>&nbsp號</h3></font>
			<td align="right"><font  color="blue">
			<td align="right" width="30%"><font><h3>欲修改的桌號：</h3></font>
			<td align="left" width="4%">
				<input type="checkbox" name="tableok"  value="tableok" style="zoom:1.5">
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
	</table>
	<table border="5" width=80% align="center" style="background-color : #E1E9F0;border:pink">
		<tr>
			<td align="center"colspan="2" class="A" style="background-color :red"><font style="text-shadow:1px 1px #112E25"size="10">A 主餐</font>
			<td align="center"colspan="2" class="B" style="background-color :#00fa9a"><font style="text-shadow:1px 1px #112E25"size="10">B 附餐</font>
			<td align="center"colspan="2" class="C" style="background-color :#00bfff"><font style="text-shadow:1px 1px #112E25"size="10">C 飲品</font>
		<tr>
			<td  align="center" width=15%><font color="#E9806E"><h3>莎朗牛排$200</h3></font><br><img alt="" src="pic/sirlon.jpg">
			<td  align="center" width=12%>
				<font  color="#E9806E"><h3>原數量&nbsp<font color="blue"><%=sirlon %></font>&nbsp個</h3><h3>欲修改的數量：</h3></font>
				 <br>
				 <input type="checkbox"  name="sirlonok"  value="sirlonok" style="zoom:1.5">
				<select name="sirlon" style="width:50px ; height:30px">
					<%
					for(int i = 0 ; i <=10 ; i++){
					%>
					<option style="font-size:20px" value="<%=i %>"><%=i %></option>
					<%
					}
					%>
				</select>
			<td align="center" width=15%><font color="#E9806E"><h3>玉米濃湯$50</h3></font><br><img alt="" src="pic/soup.jpg">
			<td  align="center" width=12%>
				<font  color="#E9806E"><h3>原數量&nbsp<font color="blue"><%=soup %></font>&nbsp個</h3><h3>欲修改的數量：</h3></font>
				<br>
				<input type="checkbox"  name="soupok"  value="soupok" style="zoom:1.5">
				<select name="soup" style="width:50px ; height:30px">
					<%
					for(int i = 0 ; i <=10 ; i++){
					%>
					<option style="font-size:20px" value="<%=i %>"><%=i %></option>
					<%
					}
					%>
				</select>
			<td align="center" width=15%><font color="#E9806E"><h3>可樂$30</h3></font><br><img alt="" src="pic/cola.jpg">
			<td  align="center" width=12%>
				<font  color="#E9806E"><h3>原數量&nbsp<font color="blue"><%=cola %></font>&nbsp個</h3><h3>欲修改的數量：</h3></font>
				<br>
				<input type="checkbox"  name="colaok"  value="colaok" style="zoom:1.5">
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
			<td  align="center" ><font color="#E9806E"><h3>菲力牛排$220</h3></font><br><img alt="" src="pic/filet.jpg">
			<td  align="center" >
				<font  color="#E9806E"><h3>原數量&nbsp<font color="blue"><%=filet %></font>&nbsp個</h3><h3>欲修改的數量：</h3></font>
				<br>
				<input type="checkbox"  name="filetok" value="filetok" style="zoom:1.5">
				<select name="filet" style="width:50px ; height:30px">
					<%
					for(int i = 0 ; i <=10 ; i++){
					%>
					<option style="font-size:20px" value="<%=i %>"><%=i %></option>
					<%
					}
					%>
				</select>
			<td align="center"><font color="#E9806E"><h3>烤麵包$40</h3></font><br><img alt="" src="pic/bread.jpg">
			<td  align="center" >
				<font  color="#E9806E"><h3>原數量&nbsp<font color="blue"><%=bread %></font>&nbsp個</h3><h3>欲修改的數量：</h3></font>
				<br>
				<input type="checkbox"  name="breadok"  value="breadok" style="zoom:1.5">
				<select name="bread" style="width:50px ; height:30px">
					<%
					for(int i = 0 ; i <=10 ; i++){
					%>
					<option style="font-size:20px" value="<%=i %>"><%=i %></option>
					<%
					}
					%>
				</select>
			<td align="center" ><font color="#E9806E"><h3>果汁$25</h3></font><br><img alt="" src="pic/juice.jpg">
			<td  align="center" >
				<font  color="#E9806E"><h3>原數量&nbsp<font color="blue"><%=juice %></font>&nbsp個</h3><h3>欲修改的數量：</h3></font>
				<br>
				<input type="checkbox"  name="juiceok"  value="juiceok" style="zoom:1.5">
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
	</table>
</form>
</div>
</body>
</html>