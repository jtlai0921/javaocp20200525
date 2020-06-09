<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="model.Porder"
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
<%
String Name=request.getParameter("name");
String Ruler=request.getParameter("ruler");
String Pen=request.getParameter("pen");
String ID=request.getParameter("id");

if(Name!=null && Ruler!=null && Pen!=null && ID!=null)
{
	int R=Integer.parseInt(Ruler);
	int P=Integer.parseInt(Pen);
	int I=Integer.parseInt(ID);

	Porder p=new Porder();
	p.setName(Name);
	p.setRuler(R);
	p.setPen(P);
	new porderDAO().update(I, p);
}
//trye{} catch()
%>

<body>

<div class="header"><font size="5"><H1 ALIGN=center>隨便商店</H1></font></div>
<div class="content">
<form action="update.jsp" method="post">
名字:<input type="text" name="name" size=5>
A套餐:<input type="text" name="ruler" size=5>
B套餐:<input type="text" name="pen" size=5>
編號:<input type="text" name="id" size=5>
<input type="submit" value="修改">
<input type="reset" value="清除">
<jsp:include page="Q.jsp"/>

</div>
<div class="footer">
<a href="index.jsp">home(原本有特效的，找不到原因放棄加減用)</a>

</div>
</body>
</html>