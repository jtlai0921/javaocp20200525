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
	menu m=(menu)session.getAttribute("M");//����controller�ݩ�
	
	
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
					<td align="center" colspan="2"><h1>�q�����</h1>
				<tr>
					<td colspan="2">�ู:<%=m.getTableNumber() %>
				<tr>
					<td><a>A�\-150��     <%=m.getA() %>���A�@<%=calx(m.getA()) %>��</a>
				<tr>
					<td><a>B�\-200��     <%=m.getB() %>���A�@<%=caly(m.getB()) %>��</a>
				<br>
				<br>
				<tr>
					<td colspan="2" align="center"><a>�`�@:<%=calt(m.getA(),m.getB()) %>��</a>					
							
				
					
			
			
			
			</table>
		</form>
		</div>
		<div class="footer">
		<a href="index.jsp">����</a>
		</div>
		<DIV ALIGN="CENTER">
<FORM>
<INPUT NAME="print" TYPE="button" VALUE="�C�L����"
ONCLICK="varitext()">
</FORM>
</DIV>
		<%session.removeAttribute("M");//�����ݩ�%>
		
		
		
	</body>
</html>