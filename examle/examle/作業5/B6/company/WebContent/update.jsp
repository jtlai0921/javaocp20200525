<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="java.sql.ResultSet"
    import="Dao.porderDAO"
    import="model.porder"%>
<!DOCTYPE html>

<html>
	<head>
		<meta charset="BIG5">
		<title>Update order</title>
		<link rel="stylesheet" type="text/css" href="st1.css">
		
		<SCRIPT LANGUAGE="JavaScript">

			<!-- This script and many more are available free online at -->
			<!-- The JavaScript Source!! http://javascript.internet.com -->
			
			<!-- Begin;
			function varitext(text){
			text=document
			print(text)
			}
			//  End -->
		</script>
		
	</head>
	
	<%
		porderDAO dao = new porderDAO();
		ResultSet rs;
		
		String name = request.getParameter("name");
		String table_number = request.getParameter("table_number");
		String firepork = request.getParameter("firepork");
		String cookpork = request.getParameter("cookpork");
		String chicken = request.getParameter("chicken");
		String id = request.getParameter("id");
		
		if((id != null) && (id.length() != 0))
		{
			int a, b, c, i;
			
			i = Integer.parseInt(id);
			rs = dao.query(i);
			
			if(rs.next())
			{				
				if(name.length() == 0)
				{
					name = rs.getString("name");
				}
				
				if(table_number.length() == 0)
				{
					table_number = rs.getString("table_number");
				}
				
				if(firepork.length() == 0)
				{
					a = rs.getInt("a");
				}
				else
				{
					a = Integer.parseInt(firepork);
				}
				
				if(cookpork.length() == 0)
				{
					b = rs.getInt("b");
				}
				else
				{
					b = Integer.parseInt(cookpork);
				}
				
				if(chicken.length() == 0)
				{
					c = rs.getInt("c");
				}
				else
				{
					c = Integer.parseInt(chicken);
				}
				
				
				porder p = new porder();
				p.setName(name);
				p.setTable_number(table_number);
				p.setFirePork(a);
				p.setCookPork(b);
				p.setChicken(c);
				dao.update(i, p);
			}
		}
	%>
	
	<body>
		<div class="header">
			<h2 align=center>訂單更新</h2>
		</div>
		
		<div class="content">
			<form action="update.jsp" method="post">
				<table width=500 align=center border=0>
					<tr><%@ include file="selectfunction.jsp"%>
						<td>
							編號: <input type="text" name="id" size=4>
						</td>
						<td>
							員工姓名: <input type="text" name="name" size=5>
						</td>
						<td>
							桌號: <%=testselect("table_number",10)%>
						</td>
					</tr>
					<tr>
						<td colspan=3>
							<hr>
						</td>
					</tr>
					<tr>
						<td>
							烤 肉 飯( 90元 ): <%=testselect("firepork",30)%>
						</td>
					</tr>
					<tr>
						<td>
							控 肉 飯(100元): <%=testselect("cookpork",30)%>
						</td>
					</tr>
					<tr>
						<td>
							雞 排 飯(110元): <%=testselect("chicken",30)%>
						</td>
					</tr>
					<tr>
						<td align=center  colspan=3>
							<input type="submit" value="ok">
						</td>
					</tr>
				</table>
			</form>
			
			<hr>
			
			<jsp:include page="Q.jsp"/>
		</div>
		
		<div class="footer">
			<h2 align=center><a href="index.jsp">返回主頁</a></h2>
			<DIV ALIGN="CENTER">
				
				<FORM>
					<INPUT NAME="print" TYPE="button" VALUE="列印此頁"
					ONCLICK="varitext()">
				</FORM>
</DIV>
			
		</div>
	</body>
</html>