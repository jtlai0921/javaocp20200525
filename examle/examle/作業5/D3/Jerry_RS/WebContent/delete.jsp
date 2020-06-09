<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="DAO.orderDAO"
    import="model.foods"
    import="DAO.orderDAO"
    import="DAO.Dbconn"
    import="java.sql.ResultSet"
    import="java.sql.Connection"
    import="java.sql.Statement"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>刪除</title>
<link rel="stylesheet" type="text/css" href="st1.css"/>
<%

String ID=request.getParameter("id");


if(ID!=null)
{
	int I=Integer.parseInt(ID);
	new orderDAO().delete(I);
}
%>
</head>
<body>

<div class="header">
<h1>JERRY_RESTAURANT</h1>

</div>
<div class="topnav">
 <a href="index.jsp" TARGET= blank"new"><img alt="index" src="pic/index.png" ></a>
  <a href="add.jsp" TARGET= blank"new"><img alt="add" src="pic/add.png" ></a>
  <a href="query.jsp" TARGET= blank"new"><img alt="query" src="pic/query.png" ></a>
  <a href="update.jsp" TARGET= blank"new"><img alt="update" src="pic/update.png" ></a>
  
</div>
<div class="content">
<form action="delete.jsp" method="post">
<table width=500 align=center border=1>
<tr>
<td>
編號:<select name="id">
		<option value="null"selected>請選擇編號</option>
		<%
		String sql="select * from foods where id";
		Connection conn=Dbconn.get();
		Statement st = conn.createStatement();
		ResultSet rs = st.executeQuery(sql);
		while(rs.next()){
			int Id = rs.getInt("id");
			%>
			<option value="<%=Id%>"><%=Id %></option>
			<%
		}
		%>
		</select>
<input type="submit" value="沒錯！我就是要刪掉它！！">
</table>
</form>
<jsp:include page="Q.jsp"/>
</div>
<div class=footer>

</div>

</body>
</html>