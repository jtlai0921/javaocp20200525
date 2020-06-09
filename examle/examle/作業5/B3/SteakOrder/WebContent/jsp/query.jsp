<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="model.*"
	import="java.util.ArrayList"%>

<jsp:include page="header.jsp"></jsp:include>
<script src="../js/query.js"></script>

<%	
	int pageNum = request.getParameter("pageNum") != null ? Integer.parseInt(request.getParameter("pageNum")) : 0;
	if(pageNum < 0) pageNum = 0;
	//System.out.println(pageNum);
%>
<div class="body">
	<form id="form" action="" method="post">
		<input type="text" id="id" name="id" value="" hidden> 
		<input id="action" name="action" type="text" value="" hidden>
		<input id="pageNum" name="pageNum" type="number" value=<%=pageNum %> hidden>
		<table class="qTable">
			<tr>
				<th>顧客姓名</th>
				<th>美國 U.S. <br> Prime 沙朗心牛排 <br> (1克 = 2 元)</th>
				<th>美國 U.S. <br> Choice 菲力牛排 <br> (1克 = 3 元)</th>
				<th>美國 U.S. <br> Choice 肋眼牛排 <br> (1克 = 2 元)</th>
				<th>美國 U.S. <br> CAB 安格斯黑牛紐約客牛排 <br> (1克 = 2 元)</th>
				<th>美國 U.S. <br> Prime 肋眼牛排 <br> (1克 = 3 元)</th>
				<th>烤大蒜 <br> (30元)</th>
				<th>玉米 <br> (30元)</th>
				<th>洋蔥 <br> (30元)</th>
				<th>花椰菜 <br> (30元)</th>
				<th>四季豆 <br> (30元)</th>
				<th>總計</th>
				<th>修改</th>
				<th>刪除</th>
			</tr>
			<%	
				ArrayList<Porder> arr = new daoPorder().query(null);
				int j = 0;
				if (arr.size() > 0) {
					int pageRow = pageNum * 10;
					for (int i = pageRow ; i < arr.size() && i < (pageRow + 10) ; i++) {
			%>
			<tr style='background-color:<%=j%2==0 ? "#f6c184" : "#f9dbb8" %>' >
				<td><%=arr.get(i).getName()%></td>
				<td><%=arr.get(i).getProduct1()%></td>
				<td><%=arr.get(i).getProduct2()%></td>
				<td><%=arr.get(i).getProduct3()%></td>
				<td><%=arr.get(i).getProduct4()%></td>
				<td><%=arr.get(i).getProduct5()%></td>
				<td><%=arr.get(i).getAdd1()%></td>
				<td><%=arr.get(i).getAdd2()%></td>
				<td><%=arr.get(i).getAdd3()%></td>
				<td><%=arr.get(i).getAdd4()%></td>
				<td><%=arr.get(i).getAdd5()%></td>
				<td><%=arr.get(i).getSum()%></td>
				<td><input type="button" value="修改" name="update" uuid="<%=arr.get(i).getId()%>"></td>
				<td><input type="button" value="刪除" name="del"	uuid="<%=arr.get(i).getId()%>"></td>
			</tr>
			<%
						j++;
					}
			%>
				<tr>
					<td colspan="14">
					<br>
						<% if(pageRow > 0){ %>
						<input type="button" id="pre" name="pre" value="上一頁">
						<% }
						   if(arr.size() > pageRow + 10){ %>
						<input type="button" id="next" name="next" value="下一頁">
						<% } %>
						<span>&nbsp;&nbsp;&nbsp;&nbsp;第<%=pageNum+1 %>頁</span>
					</td>
				</tr>
			<%
				} else {
			%>
			<tr>
				<td colspan="14">查無資料，請先新增</td>
			</tr>
			<%
				}
			%>
		</table>
	</form>
</div>

<script>
	$(document).ready(function() {
		$("input[name=del]").click(function() {
			$("#id").val($(this).attr("uuid"));
			$("#action").val("del");
			$("#form").attr("action", "action.jsp");
			if(<%=j == 1%>){
				$("#pageNum").val(0);
			}
			$("#form").submit();
		});
	});
</script>
<jsp:include page="footer.jsp"></jsp:include>
