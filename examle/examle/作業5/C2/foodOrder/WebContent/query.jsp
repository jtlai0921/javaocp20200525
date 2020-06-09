<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="java.sql.ResultSet"
    import="Dao.forderDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>查詢訂單</title>
<SCRIPT LANGUAGE="JavaScript">

<!-- This script and many more are available free online at -->
<!-- The JavaScript Source!! http://javascript.internet.com -->

<!-- Begin
function varitext(text){
text=document
print(text)
}
//  End -->
</script>

<link rel="stylesheet" type="text/css" href="st1.css">
</head>
<body>

<div class="header" >
	<font size=5 color=#A7988A><b>JAVA RESTAURANT</b></font>
</div>

    <div class="content">
	
		<jsp:include page="Q.jsp"/>
	
	</div>

<div class="footer" style="text-align:center;">
<a href="index.jsp"><font size=3 color=#FCFEE7>HOME</font></a>
&emsp;
<a href="add.jsp"><font size=3 color=#FCFEE7>新增訂單</font></a>
&emsp;
<a href="update.jsp"><font size=3 color=#FCFEE7>更新訂單</font></a>
&emsp;
<a href="delete.jsp"><font size=3 color=#FCFEE7>刪除訂單</font></a>
&emsp;
<INPUT NAME="print" TYPE="button" VALUE="列印此頁"
ONCLICK="varitext()">
</div>


</body>
</html>