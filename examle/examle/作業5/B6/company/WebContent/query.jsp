<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="java.sql.ResultSet"
    import="Dao.porderDAO"%>
<!DOCTYPE html>

<html>
	<head>
		<meta charset="BIG5">
		<title>Query order</title>
		<link rel="stylesheet" type="text/css" href="st1.css">
		
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
			<h2 align=center>訂單查詢</h2>
		</div>
		
		
		
		<div class="content">
			<jsp:include page="Q.jsp"/>
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