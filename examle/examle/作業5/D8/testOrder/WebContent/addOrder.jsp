<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="sty1.css">
</head>
<body>
	<div class="header">
		<jsp:include page="header.jsp" />
	</div>
	<form action="controller/addController.jsp" method="post">
		<div class="content2">
			<table border=0 align=center>
				<tr align=center>
					<td colspan=4>桌號 <input type="text" name="name" size="2">
			</table>
		</div>
		<div class="content3">

			<jsp:include page="Order.jsp"/>

		</div>
		<div class="content4">
		<p align=center><input type="submit" value="點餐送出"
						style="width: 50%; height: 2.5em; font-size: 2em;">
			</p>
		</div>
	</form>
	<div class="footer">
		<jsp:include page="footer.jsp" />
	</div>
</body>
</html>