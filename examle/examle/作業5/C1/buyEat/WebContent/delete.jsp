<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="DAO.eatDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="cssSet.css">
<%
int id=0;

try{
	id=Integer.parseInt(request.getParameter("k_id"));
}
catch(Exception e){
	
}

if(id!=0){
	
	new eatDAO().delete(id);
	
}
%>

</head>
<body>
	
	<div class="header">
		<h1 style="color:white;font-size:50px;text-align:center;">刪除資料</h1>
	</div>
	<div class="content">
		<form action="delete.jsp" method="post">
			<table width=180 align=center border=1>
				<tr align=center>
					<td>編號 <input type="text" name="k_id" size=4>
							<input type="submit" value="刪除">
					
			</table>
		</form>
		<br>
		<br>
		<jsp:include page="queryShow.jsp"/>
	</div>
	
	<div class="boter">
		<a href="index.jsp" ><h1 style="color:white;font-size:22px;text-align:center;">回首頁</h1></a>
	</div>
	
</body>
</html>