<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="java.time.LocalTime"
    import="java.time.temporal.ChronoUnit"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="st1.css">
<style>
* {
  font-family: "microsoft jhenghei", sans-serif;
}
</style><!-- �ק�r�� -->
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

</head>
<body>

<div class=header>
<jsp:include page="title.jsp"></jsp:include>
</div>

<div class=content>
<img src="pic/1.jpg" Align=right alt="runoob.com" width="601" height="400">
<br><h3><a href="add.jsp" >�s�W�q��</a></h3><br>
<h3><a href="query.jsp">�d�߭q��</a></h3><br>
<h3><a href="update.jsp">�ק�q��</a></h3><br>
<h3><a href="delete.jsp">�R���q��</a></h3><br>
<!--�bjsp"�᭱�[�W target=_blank �\��O�I�U�W�s���ɶ}�s���� -->
</div>

<div class=footer>
<DIV ALIGN="left">
<FORM>
<INPUT NAME="print" TYPE="button" VALUE="�C�L����"
ONCLICK="varitext()">
</FORM>
</DIV>

�`�Τj��Ѿl<script language="JavaScript">
var now=new Date();var spday=new
Date(2020,1-1,11);a=(spday.getTime()-now.getTime())/(24*60*60*1000);
a=Math.ceil(a);document.write(""+a+"");
</script>��

</div>


</body>
</html>