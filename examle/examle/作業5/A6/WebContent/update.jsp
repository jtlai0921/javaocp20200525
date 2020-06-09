<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="model.meal"
    import="Dao.porderDao"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="st1.css">
</head>
<%
	try{
String number=request.getParameter("number");
int mealA=Integer.parseInt(request.getParameter("mealA"));
int mealB=Integer.parseInt(request.getParameter("mealB"));
int mealC=Integer.parseInt(request.getParameter("mealC"));
int mealD=Integer.parseInt(request.getParameter("mealD"));
int id=Integer.parseInt(request.getParameter("id"));
//if(Name!=null && Ruler!=null && Pen!=null && ID!=null)
meal m=new meal();
m.setNumber(number);
m.setMealA(mealA);
m.setMealB(mealB);
m.setMealC(mealC);
m.setMealD(mealD);
new porderDao().update(id, m);
} catch(NumberFormatException e){

}
//trye{} catch()
%>
<body>
<div class=header>
<form action="update.jsp" ><!-- addok.jsp的位置可以在選項後移動
		method="post" 不把資料秀在網址上 -->
			<table width=700 align=center border=0>
				<tr>
				<td>			
				id:<input type="text" name="id" size=4>
				桌號:<select name="number">
					<option value="1 table">1 table</option>
					<option value="2 table">2 table</option>
					<option value="3 table">3 table</option>
					<option value="4 table">4 table</option>
					<option value="5 table">5 table</option>
					<option value="6 table">6 table</option>
					<option value="7 table">7 table</option>
					<option value="8 table">8 table</option>
					</select>
				A餐:<select name="mealA">
					<option value=0>0</option>
					<option value=1>1</option>
					<option value=2>2</option>
					<option value=3>3</option>
					<option value=4>4</option>
					<option value=5>5</option>
					</select>
				B餐:<select name="mealB">
					<option value=0>0</option>
					<option value=1>1</option>
					<option value=2>2</option>
					<option value=3>3</option>
					<option value=4>4</option>
					<option value=5>5</option>
					</select>
				C餐:<select name="mealC">
					<option value=0>0</option>
					<option value=1>1</option>
					<option value=2>2</option>
					<option value=3>3</option>
					<option value=4>4</option>
					<option value=5>5</option>
					</select>
				D餐:<select name="mealD">
					<option value=0>0</option>
					<option value=1>1</option>
					<option value=2>2</option>
					<option value=3>3</option>
					<option value=4>4</option>
					<option value=5>5</option>
					</select>
				<input type="submit" value="ok">
			
			</table>
		</form>
</div>
<div class=content>
<jsp:include page="date.jsp"></jsp:include>
</div>
<div class=footer>
<jsp:include page="end.jsp"></jsp:include>
</div>
</body>
</html>