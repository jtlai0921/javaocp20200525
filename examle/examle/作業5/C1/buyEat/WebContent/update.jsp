<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="model.eat"
    import="DAO.eatDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="cssSet.css">
<%
int id=0;
String tnumber="";
int rice=0;
int noodles=0;
int blacktea=0;
try{
	id=Integer.parseInt(request.getParameter("k_id"));
	tnumber=(request.getParameter("s_tnumber"));
	rice=Integer.parseInt(request.getParameter("s_rice"));
	noodles=Integer.parseInt(request.getParameter("s_noodles"));
	blacktea=Integer.parseInt(request.getParameter("s_blacktea"));
}
catch(Exception e){
	
}

if((id!=0 && tnumber!="") && (rice!=0 || noodles!=0 || blacktea!=0)){
	
	eat e=new eat(tnumber,rice,noodles,blacktea);
	new eatDAO().update(id, e);
	
}



%>
</head>
<body>
	
	<div class="header">
		<h1 style="color:white;font-size:50px;text-align:center;">修改資料</h1>
	</div>
	<div class="content">
		<form action="update.jsp" method="post">
			<table width=600 align=center border=1>
				<tr>
					<td>編號 <input type="text" name="k_id" size=4>
					<td>桌號 <select name="s_tnumber">
							<option value="A">A
							<option value="B">B
							<option value="C">C
							<option value="D">D
							<option value="E">E
							<option value="F">F
							<option value="G">G
							<option value="H">H
				    		</select>	
				   	<td>白飯 <select id="s_rice" name="s_rice">
						<option value="0">0
						<option value="1">1
						<option value="2">2
						<option value="3">3
						<option value="4">4
						<option value="5">5
						<option value="6">6
						<option value="7">7
						<option value="8">8
						<option value="9">9
						<option value="10">10
					</select>
					<td>乾麵 <select id="s_noodles" name="s_noodles">
						<option value="0">0
						<option value="1">1
						<option value="2">2
						<option value="3">3
						<option value="4">4
						<option value="5">5
						<option value="6">6
						<option value="7">7
						<option value="8">8
						<option value="9">9
						<option value="10">10
					</select>
					<td>紅茶 <select id="s_blacktea" name="s_blacktea">
						<option value="0">0
						<option value="1">1
						<option value="2">2
						<option value="3">3
						<option value="4">4
						<option value="5">5
						<option value="6">6
						<option value="7">7
						<option value="8">8
						<option value="9">9
						<option value="10">10
					</select>
					<td><input type="submit" value="修改">		
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