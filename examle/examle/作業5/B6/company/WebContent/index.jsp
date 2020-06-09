<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>


<!DOCTYPE html>

<html>
	<head>
		<meta charset="BIG5">
		<title>index</title>
		<link rel="stylesheet" type="text/css" href="st1.css" />
		
		
	</head>
	
	<body>
	
	
		<div class="header">
			<h1 align=center><font color="#43AA8B">矮人族員工餐廳</font></h1>
			<h3 align=center>用餐請先出示員工證!!</h3>
			
				<script language="javascript">
					var isNS=(document.layers);
					var now=new Date(); now.hrs='00'; now.min='00'; now.sec='00';
					
					function setclock(){
					
						now=new Date(); now.hrs=now.getHours(); now.min=now.getMinutes(); now.sec=now.getSeconds();
						now.hrs=((now.hrs>12)? now.hrs-12 : now.hrs)+"";
						now.hrs=((now.hrs<10)? "0" : "")+now.hrs;
						now.min=((now.min<10)? "0" : "")+now.min;
						now.sec=((now.sec<10)? "0" : "")+now.sec;
					
						if(isNS){
							document.clockface.document.open();
							document.clockface.document.write(''+now.hrs+':'+now.min+':'+now.sec+'');
							document.clockface.document.close();
					}
						else{
							document.all.clockface.innerHTML=now.hrs+':'+now.min+':'+now.sec;
					}
						setTimeout('setclock()',1000);
					}
					
					function resize(){
					
						if(isNS)setTimeout('document.location.reload()',400);
					}
						window.onload=setclock;
						window.onresize=resize;
					
					document.write('<div id="clockface" style="position:relative; left:0px; top:0px; font-size:10pt; font-family:Arial; color:red;"></div>');
				</script>
			
		</div>
		
		<div class="content" align=center>
			<table width=570 align=center border=0>
				<tr>
					<td align=center>
						<h2><a href="add.jsp">1)新增</a></h2>
					</td>
					<td></td>
					<td align=center>
						<h2><a href="query.jsp">2)查詢</a></h2>
					</td>
				</tr>
				<tr>
					<td align=center>
						<h2><a href="update.jsp">3)更新</a></h2>
					</td>
					<td></td>
					<td align=center>
						<h2><a href="delete.jsp">4)刪除</a></h2>
					</td>
				</tr>
				<tr>
					<td><h1></h1></td>
					<td><h1></h1></td>
					<td><h1></h1></td>
				</tr>
				<tr>
					<td align=center>
						<img src="1.jpg"><h3 align=center>烤肉飯(90元)</h3>
					</td>
					<td align=center>
						<img src="2.jpg"><h3 align=center>控肉飯(100元)</h3>
					</td>
					<td align=center>
						<img src="3.jpg"><h3 align=center>雞排飯(110元)</h3>
					</td>
				</tr>
			</table>
		</div>
				
		<div class="footer">
			<font color="#FF0000"><h3 align=center>用完餐請將餐盤送至回收區，謝謝</h3></font>
			<HR><font ><h5 align=center>本餐廳提供有香濃JAVA咖啡，歡迎自取，禁止外帶</h5></font>
		</div>
	</body>
</html>