<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="java.sql.ResultSet"
    import="model.menu"
    import="dao.menuDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>�u�{�]�w</title>
<SCRIPT LANGUAGE="JavaScript">
	function varitext(text)
	{text=document
	print(text)}
</script>

</head>
<link rel="stylesheet"type="text/css" href="Evn1.css">

<%  //main	//***���o������J��� doing
    int ID=0;
	int ITEM=0; 
			  
	String Item=request.getParameter("doing"); //setting
	String Id=request.getParameter("id");		//setting
	
	String TableNum=request.getParameter("tableNum");
	String M1=request.getParameter("m1");
	String M2=request.getParameter("m2");
	String M3=request.getParameter("m3");
	String Member=request.getParameter("member");
	
	String name=request.getParameter("name"); //�]�w�W
	
	if(Item!=null && Item.length()<=2) //ITEM
		ITEM=Integer.parseInt(Item);	
	if(Id!="" && Id!=null)			   //ID
		ID=Integer.parseInt(Id);
		
	if(ITEM==3) 
		new menuDAO().delete(ID);  //�R��
	
   if(TableNum !=null && M1!=null && M2!=null && M3!=null && Member!=null)  
   {	    
	int TAB=Integer.parseInt(TableNum);
	int MA=Integer.parseInt(M1);
   	int MB=Integer.parseInt(M2);  //���o�ǻ��ܼƭ�
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
   	   	new menuDAO().update(ID,p); //��s
   	if(ITEM==4)	
   		new menuDAO().add(p); //�s�W
   }	 
%>

<body>
 <div class="header"><br><h3>�q��޲z����</h3></div>
 <div class="content">
 	<form action="SettingPage.jsp" method="post">
 	 <table width=500 align=center border=1>
		  <tr >
		     <td>�s�� <input type="text" name="id" size=4>
			 <td>�ู <input type="text" name="tableNum"value="0" size=5>
			 <td>A�\ <input type="text" name="m1" value="0" size=5>
			 <td>B�\  <input type="text" name="m2" value="0" size=5>
			 <td>C�\  <input type="text" name="m3" value="0" size=5>
			 <td>�|���� <select name="member"><option value="1">���q<option value="2">�ȥd<option value="3">���d<option value="4">VIP</select>
			 <td>�|���W<input type="text" name="name" value="" size=5>
			 <td><select name="doing"><option value="1">�d��<option value="2">�ק�<option value="3">�R��<option value="4">�s�W</select>
			 <input type="submit" value=" ���� " size=4><br>�`��			 

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
   	<br><a href= "index.jsp"> �n�X�^�D�e��  </a>
   	<DIV ALIGN="CENTER">
   	<a href= "MainMenu.jsp"> �~��q�\  </a>
		<FORM>
		<INPUT NAME="print" TYPE="button" VALUE="�C�L�\�U�q��"
		ONCLICK="varitext()">
		</FORM>
</DIV>
  </div>
</body>
</html>