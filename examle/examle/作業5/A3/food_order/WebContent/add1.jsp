<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import = "Model.porder"
    import = "Dao.porderDao"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>點餐系統</title>
<link rel="stylesheet" href="https://apps.bdimg.com/libs/jquerymobile/1.4.5/jquery.mobile-1.4.5.min.css">
<script src="https://apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="https://apps.bdimg.com/libs/jquerymobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
</head>
<% String NAME=(String)session.getAttribute("NAME"); %>

<body>

	<div data-role="header">
    <h1>點餐系統</h1>
  	</div>
  	<form action = "add1.jsp" method = "post" >
  	<h1>歡迎會員   <%=NAME %>  新增訂單</h1>
      	桌號:<input type = "number" name = "tb" size=5 min="0" max="10">
      <table>
      <tr>
      		<td><img alt="A" src="a.png" align="left" width="100"></td>
      		<td>A餐(80元)</td>
      		<td>數量</td>
      		<td><input type = "number" name = "a" size=5></td>
      
      		<td><img alt="A" src="b.png" align="left" width="100"></td>
      		<td>B餐(95元)</td>
      		<td>數量</td>
      		<td><input type = "number" name = "b" size=5></td>
      
      		<td><img alt="A" src="c.png" align="left" width="100"></td>
      		<td>C餐(75元)</td>
      		<td>數量</td>
      		<td><input type = "number" name = "c" size=5 ></td>
      		
      		<td>
      		<input type="submit" value="新增" onclick="msg()">
      		</td>
      </tr>
      </table>
  	</form>
  	<script>
	function msg() {
		alert("新增訂單成功");
	  
	}
	</script>
  	<%
  	
  	String tb = request.getParameter("tb");
  	String a = request.getParameter("a");
  	String b = request.getParameter("b");
  	String c = request.getParameter("c");

  	porder p = new porder();
  	if(tb!=null && a!=null && b!=null && c!=null)
  	{
  	int tb1 = Integer.parseInt(tb);
  	int a1 = Integer.parseInt(a);
  	int b1 = Integer.parseInt(b);
  	int c1 = Integer.parseInt(c);

  	p.setTable(tb1);
  	p.setA(a1);
  	p.setB(b1);
  	p.setC(c1);

  	new porderDao().add(p);
  	}
  	%>
  	
<a href = "index1.jsp" data-role="button">返回首頁</a>  	
<div data-role="footer"><h1>線上美食</h1></div>   
</body>
</html>