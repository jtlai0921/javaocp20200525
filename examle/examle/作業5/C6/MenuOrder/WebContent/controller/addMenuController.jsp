<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="model.menu"
    import="dao.menuDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>

<%

	String M1c=request.getParameter("m1c");	//AMenuCheck
	String M2c=request.getParameter("m2c");	//BMenuCheck
	String M3c=request.getParameter("m3c");	//CMenuCheck

	String TableNum=request.getParameter("tableNum");
	String M1=request.getParameter("m1");
	String M2=request.getParameter("m2");
	String M3=request.getParameter("m3");
	String Member=request.getParameter("member");

	String name=(String)session.getAttribute("NAME"); //登入名

	if(M1c!=null||M2c!=null||M3c!=null)//由點餐畫面進入
	{
		if(M1c==null) M1="0";
		if(M2c==null) M2="0";
		if(M3c==null) M3="0";
	}
	
	if(TableNum !=null && M1!=null && M2!=null && M3!=null && Member!=null)  
	   {	    
		int TAB=Integer.parseInt(TableNum);
		int MA=Integer.parseInt(M1);
	   	int MB=Integer.parseInt(M2);  //取得傳遞變數值
	   	int MC=Integer.parseInt(M3);
	   	int MEMBER=Integer.parseInt(Member);
	    	
	   	menu p=new menu();
	   	p.setM1(MA);
	   	p.setM2(MB);
	   	p.setM3(MC);
	   	p.setTableNum(TAB);
	   	p.setMember(MEMBER);
	   	p.setName(name);	   	
   		new menuDAO().add(p); //新增	   
	   }	 
		response.sendRedirect("../SettingPage.jsp");
		
%>

</body>
</html>