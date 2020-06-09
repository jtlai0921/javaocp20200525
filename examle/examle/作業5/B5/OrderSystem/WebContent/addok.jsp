<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="DAO.DAOmenu"
    import="MODEL.menu"
    %>
<!DOCTYPE html>
<html>
<head>

<meta charset="BIG5">
<title>Insert title here</title>
<%	
	/*int TableNumber=Integer.parseInt(request.getParameter("tableNumber"));
	int a=Integer.parseInt(request.getParameter("A"));
	int b=Integer.parseInt(request.getParameter("B"));
	
	menu m=new menu();
	m.setA(a);
	m.setB(b);
	m.setTableNumber(TableNumber);
	m.setAp(150);
	m.setBp(200);
	new DAOmenu().add(m);
	*/
	menu m=(menu)session.getAttribute("M");//接收controller屬性
	
	
	%>
	<%!
	int calx(int x){
		
		return x*150;
		}
	int caly(int y){
		return y*200;
	}
	int calt(int x,int y){
		return x*150+y*200;
	}
		%>
		
		<link rel="stylesheet" type="text/css" href="o1.css">
		<SCRIPT LANGUAGE="JavaScript">


</script>
		
</head>
<body>
	<div class="header"></div>
	<div class="content">
		<form>
			<table align="center" width="80%" size="35"bgcolor="#EAA31C">
				
				<tr>
					<td align="center" colspan="2"><h1>訂單紀錄</h1>
				<tr>
					<td colspan="2">桌號:<%=m.getTableNumber() %>
				<tr>
					<td><a>A餐-150元     <%=m.getA() %>份，共<%=calx(m.getA()) %>元</a>
				<tr>
					<td><a>B餐-200元     <%=m.getB() %>份，共<%=caly(m.getB()) %>元</a>
				<br>
				<br>
				<tr>
					<td colspan="2" align="center"><a>總共:<%=calt(m.getA(),m.getB()) %>元</a>					
							
				
					
			
			
			
			</table>
		</form>
		</div>
		<div class="footer">
		<a href="index.jsp">首頁</a>
		</div>
		<DIV ALIGN="CENTER">
<FORM>
<INPUT NAME="print" TYPE="button" VALUE="列印此頁"
ONCLICK="varitext()">
</FORM>
</DIV>
		<%session.removeAttribute("M");//移除屬性%>
		
		
		
	</body>
</html>