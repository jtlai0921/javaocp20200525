<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="java.sql.ResultSet"
    import="Dao.porderDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
<style type="text/css">
.button {
  display: inline-block;
  padding: 15px 25px;
  font-size: 24px;
  cursor: pointer;
  text-align: center;   
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: #4CAF50;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}

.button:hover {background-color: #3e8e41}

.button:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
</style>
<link rel="stylesheet" type="text/css" href="st1.css">
</head>


<body>
		<div class="header"><font size="5"><H1 ALIGN=center>�H�K�ө�</H1></font></div>
		<div class="content">
		<jsp:include page="Q.jsp"/>
		
		</div>
		<div class="footer">
<a href="index.jsp"><button class="button">HOME</button></a><br>
		</div>

</body>
</html>