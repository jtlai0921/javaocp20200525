<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="model.foods"
    import="DAO.orderDAO"
    import="DAO.Dbconn"
    import="java.sql.ResultSet"
    import="java.sql.Connection"
    import="java.sql.Statement"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>修改</title>
<link rel="stylesheet" type="text/css" href="st1.css"/>
</head>
<body>
<%

String Id=request.getParameter("id");
String Desk=request.getParameter("desk");
String Fish=request.getParameter("fish");
String Pork=request.getParameter("pork");
String Beef=request.getParameter("beef");
System.out.print(Id);
if(Id != null && Desk !=null && Fish !=null && Pork !=null && Beef !=null){
if(!Id.equals(null)&&!Desk.equals(null)&&!Fish.equals(null)&&!Pork.equals(null)&&!Beef.equals(null))
{
	int D=Integer.parseInt(Desk);
	int F=Integer.parseInt(Fish);
	int P=Integer.parseInt(Pork);
	int B=Integer.parseInt(Beef);
	int I=Integer.parseInt(Id);
	
	foods f=new foods();
	f.setDesk(D);
	f.setFish(F);
	f.setPork(P);
	f.setBeef(B);
	
	new orderDAO().update(I,f);
}
}



%>
<div class="header">
<h1>JERRY_RESTAURANT</h1>
</div>
<div class="topnav">
  <a href="delete.jsp" TARGET= blank"new"><img alt="delete" src="pic/delete.png" ></a>
  <a href="index.jsp" TARGET= blank"new"><img alt="index" src="pic/index.png" ></a>
  <a href="add.jsp" TARGET= blank"new"><img alt="add" src="pic/add.png" ></a>
  <a href="query.jsp" TARGET= blank"new"><img alt="query" src="pic/query.png" ></a>
  
</div>
<div class="content">
<form action="update.jsp" method="post" target="_self" align=center>
編號:<select name="id">
		<option value="null"selected>請選擇編號</option>
		<%
		String sql="select * from foods where id";
		Connection conn=Dbconn.get();
		Statement st = conn.createStatement();
		ResultSet rs = st.executeQuery(sql);
		while(rs.next()){
			int ID = rs.getInt("id");
			%>
			<option value="<%=ID%>"><%=ID %></option>
			<%
		}
		%>
		</select>
桌號:<select name="desk">
		<option value="null"selected>請選擇座位</option>
		<option value="1">1</option>
		<option value="2">2</option>
		<option value="3">3</option>
		<option value="4">4</option>
		<option value="5">5</option>
		<option value="6">6</option>
		<option value="7">7</option>
		<option value="8">8</option>
		<option value="9">9</option>
		<option value="10">10</option>
		</select>
魚排:<select name="fish">
		<option value="null"selected>請選擇數量</option>
		<option value="1">1</option>
		<option value="2">2</option>
		<option value="3">3</option>
		<option value="4">4</option>
		<option value="5">5</option>
		</select>
豬排:<select name="pork">
		<option value="null"selected>請選擇數量</option>
		<option value="1">1</option>
		<option value="2">2</option>
		<option value="3">3</option>
		<option value="4">4</option>
		<option value="5">5</option>
		</select>
牛排:<select name="beef">
		<option value="null"selected>請選擇數量</option>
		<option value="1">1</option>
		<option value="2">2</option>
		<option value="3">3</option>
		<option value="4">4</option>
		<option value="5">5</option>
		</select>
<input type="submit" value="餐點正確，立即更新！！">

<jsp:include page="Q.jsp"/>
<%




%>
</form>
</div>
<div class=footer>

</div>

</body>
</html>