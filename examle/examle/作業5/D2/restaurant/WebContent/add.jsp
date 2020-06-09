<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>薇薇鄉村早午餐-新增</title>

<style type="text/css">
#abc
{
	background-color:#9A8091;
	font-family:"Times New Roman",Times,serif;
	
}

.abc2
{
	background-color:#5D4E60;
}

</style>

<!--<link rel="stylesheet" type="text/css" href="style.css">  -->
</head>
<body background="pic/back.jpg">
<body>

<ul class="icons">
	<form action="addok.jsp" method="post">
		<table width=1000 align=center border=0>
			<tr id="abc">
				<td colspan=3 align=center><h1>新增訂單</h1>	
				桌別◆<select name="desk"> 
				<option value="0"selected>薰衣草</option>
				<option value="1">薔薇</option>
				<option value="2">鼠尾草</option>
				<option value="3">梔子花</option>
				<option value="4">鳶尾花</option>
        <tr>
            <th colspan= align=center><h2>飲料</h2>	</th>
            <th colspan= align=center><h2>餐食</h2>	</th>
            <th colspan= align=center><h2>甜點</h2>	</th>
        </tr>
        <tr>           
            <td align=center><img alt="咖啡" src="pic/coffee_s.jpg"><br>
				咖啡◆<input type="text" name="coffee" value=0> </td>
            
            <td align=center><img alt="沙拉" src="pic/salad_s.jpg"><br>                  
				沙拉◆<input type="text" name="salad" value=0> </td>
            
            <td align=center><img alt="蛋糕" src="pic/cake_s.jpg"><br>                           
				蛋糕◆<input type="text" name="cake" value=0> </td>          
        </tr>
        <tr>          
            <td align=center><img alt="茶" src="pic/tea_s.jpg"><br>
				茶◆<input type="text" name="tea" value=0> </td>
            
            <td align=center><img alt="帕尼尼" src="pic/panini_s.jpg"><br>
				帕尼尼◆<input type="text" name="panini" value=0> </td>
                      
            <td align=center><img alt="布丁" src="pic/pudding_s.jpg"><br>
				布丁◆<input type="text" name="pudding" value=0> </td>                      
        </tr>
        <tr>
            <td></td>
            
            <td align=center><img alt="貝果" src="pic/bagel_s.jpg"><br>
				貝果◆<input type="text" name="bagel" value=0> </td>           
				                       
            <td></td>
        </tr>
		   											
			<tr class="abc2">
				<td colspan=3 align=center>
				<input type="submit" value="送出">
				
		</table>	
	
	</form>
</ul>


<table border=1 align=center width=20%>
<tr>
		<td colspan=3 align=center height=20>
		<font size=4 color=#AA0022>SWEAR Brunch</font>
        <a href="index.jsp" ><h3>*回首頁呦*</h3></a>
        
</body>
</html>