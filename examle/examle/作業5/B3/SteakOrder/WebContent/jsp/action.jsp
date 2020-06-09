<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="model.*"
	import="java.util.ArrayList"%>
<%
	boolean b = false;
	int pageNum = request.getParameter("pageNum") != null ? Integer.parseInt(request.getParameter("pageNum"))
			: 0;
	if (pageNum < 0)
		pageNum = 0;
	String action = request.getParameter("action") != null ? request.getParameter("action") : "";
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String product1 = request.getParameter("product1");
	String product2 = request.getParameter("product2");
	String product3 = request.getParameter("product3");
	String product4 = request.getParameter("product4");
	String product5 = request.getParameter("product5");
	String add1 = request.getParameter("add1");
	String add2 = request.getParameter("add2");
	String add3 = request.getParameter("add3");
	String add4 = request.getParameter("add4");
	String add5 = request.getParameter("add5");

	Porder po = new Porder();

	if (action.equals("del") && id != null) {
		po.setId(Integer.parseInt(id));
		b = new daoPorder().del(po);
	} else if (action.equals("edit")) {
		boolean add = (id == null || id.equals(""));
		po.setAction(add ? "add" : "update");
		if (!add)
			po.setId(Integer.parseInt(id));
		po.setName(name);
		po.setProduct1(product1 != null ? Integer.parseInt(product1) : 0);
		po.setProduct2(product2 != null ? Integer.parseInt(product2) : 0);
		po.setProduct3(product3 != null ? Integer.parseInt(product3) : 0);
		po.setProduct4(product4 != null ? Integer.parseInt(product4) : 0);
		po.setProduct5(product5 != null ? Integer.parseInt(product5) : 0);
		po.setAdd1(add1 != null ? Integer.parseInt(add1) : 0);
		po.setAdd2(add2 != null ? Integer.parseInt(add2) : 0);
		po.setAdd3(add3 != null ? Integer.parseInt(add3) : 0);
		po.setAdd4(add4 != null ? Integer.parseInt(add4) : 0);
		po.setAdd5(add5 != null ? Integer.parseInt(add5) : 0);
		b = new daoPorder().edit(po);
	}
	
	response.sendRedirect("query.jsp?pageNum="+pageNum);
%>