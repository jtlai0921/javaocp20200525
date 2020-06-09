<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
     import ="Dao.companyDao"
     import="java.sql.ResultSet"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>修改訂單</title>
<link rel="stylesheet" type="text/css" href="st1.css">
</head>
<body>
<div class="header">
<div class="topnav"> 
 <a href="add.jsp" >訂單新增</a> 
 <a href="ortheradd.jsp" >品名桌號新增</a> 
 <a href="query.jsp" >所有表格資料查詢</a> 
 <a href="deleteorder.jsp" >刪除訂單</a> 
 <a href="delete.jsp" >刪除桌號品名</a> 
 <a href="updateorder.jsp">修改訂單</a>
 <a href="updatefood.jsp">修改品名</a> 
 <a href="updatetablename.jsp">修改桌號</a>
 </div>
 <div class="content">
 <form action="updateorder.jsp" method="post">
 <table border="1">
 <td>orderno:
  <%@ include file="updateselct.jsp"%>
  <%=uselectorderhead()%> 
  <td>
  <input type="hidden" name="selects" value="updateorder">
  <input type="submit" name="searchorder" value="searchorder">
  <td>
  
    <input type="reset" name="cancelhorder" value="cancelhorder">
 
  </table>
  </form>
  <form action="controller/updateordercontroller.jsp" method="post">
    
   <% 
   String hmsg="";
    String selects=request.getParameter("selects");
    String getid=request.getParameter("orderv_sums");
  
   // out.println(selects);
    if(getid !=null && selects !=null )
    {
    	//selecttable getid
    	ResultSet rs =new companyDao().query("selecttable", getid);
    	  while(rs.next())
    	  {
    		  hmsg=hmsg+"<table><tr>";
    		  hmsg=hmsg+"<td>orderid:<p><input type='text' name='orderid' value='"
    		  +rs.getInt("orderid")+"' readonly>";
    		  hmsg=hmsg+"<td>orderno:<p>"+rs.getString("orderno");
    		  hmsg=hmsg+"<td>原桌號:<p>"+rs.getString("tablename");
    		  hmsg=hmsg+"<td>變更桌號:<p>"+ uselecttablename();
    		  hmsg=hmsg+"</table>";
    		  
    		  out.println(getid);
    	  }
    }
    out.print(hmsg);
   %>
  </table>
  <% 
   String showmsg="";
 
 

  if(getid !=null && selects !=null )
  {
	 
	  showmsg=showmsg+"<table border='1'><tr> <td colspan='3'>訂單明細資料<tr>";
	  int i=0;
	  ResultSet rs2 =new companyDao().query("selectfood",  getid);
	  while(rs2.next())
	  {
		  if(i%3==0)
	    	 {
			  showmsg=showmsg+"<tr  border='1'>";
	    	 }
		  showmsg=showmsg+"<td  border='1'> <img src='"+rs2.getString("img")+"'><p>"+rs2.getString("foodname")
	    	 +"價格"+rs2.getInt("price")+"<p>";
		  showmsg=showmsg+"<select name='"+rs2.getInt("foodid")+"'> <option value='-1' selected>請選擇</option>";
		  for(int k=1;k<=10;k++)
	    	 {
	        	showmsg=showmsg+"<option value='"+k+"'> "+k+"</option><p>" ; 

	    	 }
	        showmsg=showmsg+"</select>" ;
		   showmsg=showmsg+" 原數量"+rs2.getInt("qty");
		   showmsg=showmsg+"<input type='hidden' name='"
		   +rs2.getInt("orderlineid")+"' value='"+rs2.getInt("orderlineid")+
		   "' >";
		  i++; 
	  }
	  
  }
	  showmsg=showmsg+"</table>" ; 
  
   out.println(showmsg);
  
   %>
  <table>
  <input type="submit" name="update" value="update">
  </table>
  </form>
  <br>
 </div>
 <div class="footer">
 <a href="index.jsp" target=blank>home</a>
 </div>
</body>
</html>