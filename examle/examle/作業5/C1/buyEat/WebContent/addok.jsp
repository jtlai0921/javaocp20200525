<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="model.eatPrice"
    import="model.eat"
    import="DAO.eatDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="cssSet.css">
<%
/*交給addController處理 以免重新整理此頁又新增一筆資料*/
/*eatPrice[] ep=eatPrice.values();
int riceP=ep[0].getX();
int noodlesP=ep[1].getX();
int blackteaP=ep[2].getX();

String tnumber="";
int rice=0;
int noodles=0;
int blacktea=0;
int sum=0;
try{
tnumber=request.getParameter("tnumber");
rice=Integer.parseInt(request.getParameter("rice"));
noodles=Integer.parseInt(request.getParameter("noodles"));
blacktea=Integer.parseInt(request.getParameter("blacktea"));
}
catch(Exception e){
	
}*/
/*
if(rice!=0 || noodles!=0 || blacktea!=0){
	eat e=new eat(tnumber,rice,noodles,blacktea);
	/*e.setTnumber(tnumber);
	e.setRice(rice);
	e.setNoodles(noodles);
	e.setBlacktea(blacktea);
	e.getSum();
	sum=e.getSum();
	eatDAO ed=new eatDAO();
	ed.add(e);
}
*/


eat e=(eat)session.getAttribute("E");
/*eatDAO ed=(eatDAO)session.getAttribute("ED");*/
/*eatPrice[] ep=((eatPrice)session.getAttribute("EP")).values();*/
String tnumber=e.getTnumber();
int rice=e.getRice();
int noodles=e.getNoodles();
int blacktea=e.getBlacktea();
int sum=e.getSum();

eatPrice[] ep=eatPrice.values();
int riceP=ep[0].getX();
int noodlesP=ep[1].getX();
int blackteaP=ep[2].getX();

%>
</head>
<body>
	
	<div class="header"></div>
	<div class="content">
		<table align=center>
			<tr>
				<td><h1 style="font-size:22px;text-align:center;"><%=tnumber%>桌   菜單明細</h1>
			
			<tr>
						<td>白飯：<%=rice%> x <%=riceP%> = <%=rice*riceP%> 元
						<br>乾麵：<%=noodles%> x <%=noodlesP%> = <%=noodles*noodlesP%> 元
						<br>紅茶：<%=blacktea%> x <%=blackteaP%> = <%=blacktea*blackteaP%> 元
						<br>
						<hr>
						結帳金額：<%=sum%> 元
	
		</table>
		
	</div>
	
	<div class="boter">
		<a href="index.jsp" ><h1 style="color:white;font-size:22px;text-align:center;">回首頁</h1></a>
	</div>
	
</body>
</html>