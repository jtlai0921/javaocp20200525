<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="model.*"
	import="java.util.ArrayList"%>

<jsp:include page="header.jsp"></jsp:include>
<script src="../js/edit.js"></script>

<%
String id = request.getParameter("id");
String name = "";
int product1 = 0;
int product2 = 0;
int product3 = 0;
int product4 = 0;
int product5 = 0;
int add1 = 0;
int add2 = 0;
int add3 = 0;
int add4 = 0;
int add5 = 0;
ArrayList<Porder> arr = null;
if(id != null){
	Porder po = new Porder();
	po.setId(Integer.parseInt(id));
	arr = new daoPorder().query(po);
	for(Porder apo : arr){
		name = apo.getName();
		product1 = apo.getProduct1();
		product2 = apo.getProduct2();
		product3 = apo.getProduct3();
		product4 = apo.getProduct4();
		product5 = apo.getProduct5();
		add1 = apo.getAdd1();
		add2 = apo.getAdd2();
		add3 = apo.getAdd3();
		add4 = apo.getAdd4();
		add5 = apo.getAdd5();
	}
}

%>
<script>
$(document).ready(function() {
	if(<%=add1 > 0 %> || <%=add2 > 0 %> || <%=add3 > 0 %> || <%=add4 > 0 %> || <%=add5 > 0 %>){
		$("#add").attr("checked","checked");
	}else{
		$(".add").hide();
	}
});
</script>
<div class="body">
	<form id="form" action="action.jsp" method="post">
		<input id="id" name="id" type="text" value='<%=id != null ? id : ""%>' hidden > 
			<input id="action" name="action" type="text" value="edit" hidden>
		<table class="eTable">
			<tr>
				<td><span><font>*</font> 尊姓大名</span></td>
				<td><input id="name" name="name" type="text" value='<%=name %>' required ></td>
			</tr>
			<tr>
				<td>
					<img alt="USDA Prime" src="../pic/USDA-prime.png" height="40" width="50">
					<span><font>*</font> 美國 U.S. Prime 沙朗心牛排 (1克 = 2 元) </span>
				</td>
				<td><input id="product1" name="product1" type="number" value=<%=product1 %> min="0">&nbsp;&nbsp;克</td>
			</tr>
			<tr>
				<td>
					<img alt="USDA Choice" src="../pic/USDA-choice.png" height="51" width="50">
					<span><font>*</font> 美國 U.S. Choice 菲力牛排 (1克 = 3 元) </span>
				</td>
				<td><input id="product2" name="product2" type="number" value=<%=product2 %> min="0">&nbsp;&nbsp;克</td>
			</tr>
			<tr>
				<td>
					<img alt="USDA Choice" src="../pic/USDA-choice.png" height="51" width="50">
					<span><font>*</font> 美國 U.S. Choice 肋眼牛排 (1克 = 2 元) </span>
				</td>
				<td><input id="product3" name="product3" type="number" value=<%=product3 %> min="0">&nbsp;&nbsp;克</td>
			</tr>
			<tr>
				<td>
					<img alt="USDA Choice" src="../pic/angus-beef.png" height="50" width="50">
					<span><font>*</font> 美國 U.S. CAB 安格斯黑牛紐約客牛排 (1克 = 2 元) </span>
				</td>
				<td><input id="product4" name="product4" type="number" value=<%=product4 %> min="0">&nbsp;&nbsp;克</td>
			</tr>
			<tr>
				<td>
					<img alt="USDA Prime" src="../pic/USDA-prime.png" height="40" width="50">
					<span><font>*</font> 美國 U.S. Prime 肋眼牛排 (1克 = 3 元) </span>
				</td>
				<td><input id="product5" name="product5" type="number" value=<%=product5 %> min="0">&nbsp;&nbsp;克</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center">
					<label class="lbladd"> <input type="checkbox" id="add">加點配菜? (一律30元) </label>
				</td>
			</tr>
			<tr class="add">
				<td><span> 烤大蒜</span></td>
				<td><input id="add1" name="add1" type="number" value=<%=add1 %> min="0">&nbsp;&nbsp;份</td>
			</tr>
			<tr class="add">
				<td><span> 玉米</span></td>
				<td><input id="add2" name="add2" type="number" value=<%=add2 %> min="0">&nbsp;&nbsp;份</td>
			</tr>
			<tr class="add">
				<td><span> 洋蔥</span></td>
				<td><input id="add3" name="add3" type="number" value=<%=add3 %> min="0">&nbsp;&nbsp;份</td>
			</tr>
			<tr class="add">
				<td><span> 花椰菜</span></td>
				<td><input id="add4" name="add4" type="number" value=<%=add4 %> min="0">&nbsp;&nbsp;份</td>
			</tr>
			<tr class="add">
				<td><span> 四季豆</span></td>
				<td><input id="add5" name="add5" type="number" value=<%=add5 %> min="0">&nbsp;&nbsp;份</td>
			</tr>
		</table>
		<input type="button" value="新增/修改" name="edit" id="edit" >
		<br><br>
	</form>
</div>
<jsp:include page="footer.jsp"></jsp:include>