<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="Dao.porderDAO"%>
<!DOCTYPE html>

<html>
	<head>
		<meta charset="BIG5">
		<title>Delete order</title>
		<link rel="stylesheet" type="text/css" href="st1.css">
		<%
		
		String ID=request.getParameter("id");
		
		if( ID!=null)
		{
			try {
				int I=Integer.parseInt(ID);	
				new porderDAO().delete(I);
			} 
			catch (NullPointerException e) {
				
			}
		
		}
		
		%>
		
		<SCRIPT LANGUAGE="JavaScript">

			<!-- This script and many more are available free online at -->
			<!-- The JavaScript Source!! http://javascript.internet.com -->
			
			<!-- Begin;
			function varitext(text){
			text=document
			print(text)
			}
			//  End -->
		</script>
		
	</head>
	
	<body>
		<div class="header">
			<h2 align=center>訂單刪除</h2>
		</div>
		
		<div class="content">
			<form action="delete.jsp" method="post">
				<table width=500 align=center border=0>
					<tr>
						<td>
							輸入欲刪除之編號：<input type="text" name="id" size=4>      <input type="submit" value="ok">
						</td>
					</tr>
				</table>
			</form>
			
			<hr>
			
			<jsp:include page="Q.jsp"></jsp:include>
		</div>
		
		<div class="footer">
			<h2 align=center><a href="index.jsp">返回主頁</a></h2>
			
			<DIV ALIGN="CENTER">
				
				<FORM>
					<INPUT NAME="print" TYPE="button" VALUE="列印此頁"
					ONCLICK="varitext()">
				</FORM>
</DIV>
			
		</div>
	</body>
</html>