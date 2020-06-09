<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="java.sql.ResultSet"
    import="model.menu"
    import="dao.menuDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>工程設定</title>
<SCRIPT LANGUAGE="JavaScript">
	function varitext(text)
	{text=document
	print(text)}
</script>

</head>
<link rel="stylesheet"type="text/css" href="Evn1.css">

<%  //main	//***取得網頁輸入資料 doing
    int ID=0;
	int ITEM=0; 
			  
	String Item=request.getParameter("doing"); //setting
	String Id=request.getParameter("id");		//setting
	
	String TableNum=request.getParameter("tableNum");
	String M1=request.getParameter("m1");
	String M2=request.getParameter("m2");
	String M3=request.getParameter("m3");
	String Member=request.getParameter("member");
	
	String name=request.getParameter("name"); //設定名
	
	if(Item!=null && Item.length()<=2) //ITEM
		ITEM=Integer.parseInt(Item);	
	if(Id!="" && Id!=null)			   //ID
		ID=Integer.parseInt(Id);
		
	if(ITEM==3) 
		new menuDAO().delete(ID);  //刪除
	
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
   	
   	if(ITEM==2)
   	   	new menuDAO().update(ID,p); //更新
   	if(ITEM==4)	
   		new menuDAO().add(p); //新增
   }	 
%>

<body>
 <div class="header"><br><h3>訂單管理頁面</h3></div>
 <div class="content">
 	<form action="SettingPage.jsp" method="post">
 	 <table width=500 align=center border=1>
		  <tr >
		     <td>編號 <input type="text" name="id" size=4>
			 <td>桌號 <input type="text" name="tableNum"value="0" size=5>
			 <td>A餐 <input type="text" name="m1" value="0" size=5>
			 <td>B餐  <input type="text" name="m2" value="0" size=5>
			 <td>C餐  <input type="text" name="m3" value="0" size=5>
			 <td>會員級 <select name="member"><option value="1">普通<option value="2">銀卡<option value="3">金卡<option value="4">VIP</select>
			 <td>會員名<input type="text" name="name" value="" size=5>
			 <td><select name="doing"><option value="1">查詢<option value="2">修改<option value="3">刪除<option value="4">新增</select>
			 <input type="submit" value=" 執行 " size=4><br>總價			 

		<%  
		
		
		 if(ITEM==1 && Id!="")
		 {  
		 	ResultSet rs=new menuDAO().query(ID);
		    while(rs.next())
		    {
		      out.println("<tr>"+
		      			  "<td>"+rs.getInt("id")+
		      			  "<td>"+rs.getInt("tableNum")+
		      			  "<td>"+rs.getInt("m1")+
		      			  "<td>"+rs.getInt("m2")+
		      			  "<td>"+rs.getInt("m3")+
		      			  "<td>"+rs.getInt("member")+
		      			  "<td>"+rs.getString("name")+
		      			  "<td>"+rs.getInt("sum"));
		    }	
		 }else
		 { 
		    ResultSet rs=new menuDAO().query();
		    while(rs.next())
		    {
		      out.println("<tr>"+
		      			  "<td>"+rs.getInt("id")+
		      			  "<td>"+rs.getInt("tableNum")+
		      			  "<td>"+rs.getInt("m1")+
		      			  "<td>"+rs.getInt("m2")+
		      			  "<td>"+rs.getInt("m3")+
		      			  "<td>"+rs.getInt("member")+
		      			 "<td>"+rs.getString("name")+
		      			  "<td>"+rs.getInt("sum"));
		    }		  
		 }  
		 %>
	 </table>
    </form>
    
 </div>
  <div class="footer">
   	<br><a href= "index.jsp"> 登出回主畫面  </a>
   	<DIV ALIGN="CENTER">
   	<a href= "MainMenu.jsp"> 繼續訂餐  </a>
		<FORM>
		<INPUT NAME="print" TYPE="button" VALUE="列印餐廳訂單"
		ONCLICK="varitext()">
		</FORM>
</DIV>
  </div>
</body>
</html>