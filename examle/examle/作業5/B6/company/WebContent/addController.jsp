<%@ page language="java" contentType="text/html; charset=BIG5"
   	pageEncoding="BIG5"
   	import="model.porder"
	import="Dao.porderDAO"
   	%>

<!DOCTYPE html>


<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
	</head>
		<body>
		
				<%
						String name = request.getParameter("name");
						String table_number = request.getParameter("table_number");
						int a = Integer.parseInt(request.getParameter("firepork"));
						int b = Integer.parseInt(request.getParameter("cookpork"));
						int c = Integer.parseInt(request.getParameter("chicken"));
						int sum;
					
						if(table_number !="-1" || a >=1 || b  >=1 || c>=1)
						{
						porder p = new porder();
						
						p.setName(name);
						p.setTable_number(table_number);
						p.setFirePork(a);
						p.setCookPork(b);
						p.setChicken(c);
						
						sum = p.getSum();
						
						new porderDAO().add(p);
						
						session.setAttribute("P",p);
						
						response.sendRedirect("addok.jsp");
						}
						else
						{
							response.sendRedirect("add.jsp");
						}
					%>
		
		</body>
</html>