<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import = "Model.porder"
    import = "Dao.porderDao"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>翴繺╰参</title>
<link rel="stylesheet" href="https://apps.bdimg.com/libs/jquerymobile/1.4.5/jquery.mobile-1.4.5.min.css">
<script src="https://apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="https://apps.bdimg.com/libs/jquerymobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
</head>
<% String NAME=(String)session.getAttribute("NAME"); %>

<body>

	<div data-role="header">
    <h1>翴繺╰参</h1>
  	</div>
  	<form action = "add1.jsp" method = "post" >
  	<h1>舧穦   <%=NAME %>  穝糤璹虫</h1>
      	腹:<input type = "number" name = "tb" size=5 min="0" max="10">
      <table>
      <tr>
      		<td><img alt="A" src="a.png" align="left" width="100"></td>
      		<td>A繺(80じ)</td>
      		<td>计秖</td>
      		<td><input type = "number" name = "a" size=5></td>
      
      		<td><img alt="A" src="b.png" align="left" width="100"></td>
      		<td>B繺(95じ)</td>
      		<td>计秖</td>
      		<td><input type = "number" name = "b" size=5></td>
      
      		<td><img alt="A" src="c.png" align="left" width="100"></td>
      		<td>C繺(75じ)</td>
      		<td>计秖</td>
      		<td><input type = "number" name = "c" size=5 ></td>
      		
      		<td>
      		<input type="submit" value="穝糤" onclick="msg()">
      		</td>
      </tr>
      </table>
  	</form>
  	<script>
	function msg() {
		alert("穝糤璹虫Θ");
	  
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
  	
<a href = "index1.jsp" data-role="button"></a>  	
<div data-role="footer"><h1>絬</h1></div>   
</body>
</html>