<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="model.porder"
    import="Dao.porderDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>夢鹿咖啡 by tame moose</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<link href='http://fonts.googleapis.com/css?family=Arimo:400,700' rel='stylesheet' type='text/css'>
		<!--[if lte IE 8]><script src="js/html5shiv.js"></script><![endif]-->
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
		<script src="js/skel.min.js"></script>
		<script src="js/skel-panels.min.js"></script>
		<script src="js/init.js"></script>
		<noscript>
			<link rel="stylesheet" href="css/skel-noscript.css" />
			<link rel="stylesheet" href="css/style.css" />
			<link rel="stylesheet" href="css/style-desktop.css" />
		</noscript>
</head>
<%!//宣告方法-->static
int cal(int x,int y,int z)
{
	return x*95+y*65+z*120;
}
%>
<%
String name=request.getParameter("name");
int table_number=Integer.parseInt(request.getParameter("table_number"));
int a=Integer.parseInt(request.getParameter("apple"));
int b=Integer.parseInt(request.getParameter("bread"));
int c=Integer.parseInt(request.getParameter("cake"));

porder p=new porder();
p.setName(name);
p.setTable_number(table_number);
p.setApple(a);
p.setBread(b);
p.setCake(c);

new porderDAO().add(p);

%>
<body>
<body class="homepage">

		<!-- Header -->
		<div id="header">
			<div class="container"> 
				
				<!-- Logo -->
				<div id="logo">
					<h1><a href="#">夢鹿咖啡</a></h1>
					<span>By Tame Moose</span>
				</div>
				
				<!-- Nav -->
				<nav id="nav">
					<ul>
						<li class="active"><a href="index.html">商品選購</a></li>
						<li><a href="left-sidebar.jsp">查詢訂單</a></li>
						<li><a href="right-sidebar.jsp">修改訂單</a></li>
						<li><a href="no-sidebar.jsp">刪除訂單</a></li>
					</ul>
				</nav>
			</div>
		</div>

		<!-- Main -->
		<div id="main">
			<div class="container">
				<div class="row"> 
					
					<!-- Content -->
					<div id="content" class="8u skel-cell-important">
						<section>
							<header>
								<h2>Welcome to 夢鹿咖啡!</h2>
							</header>
							<a href="#" class="image full"><img src="images/2.jpg" alt="" /></a>
							<p>This is <strong>Kinfolk Co.</strong>樂於分享一種享受慢活、輕鬆和不拘束的生活態度。天母一店Kinfolk Cheese& Coffee隱身於巷弄社區中跟左鄰右舍打成一片，我們在這個場域、交會、認識、享受快樂的時光。拜訪這裡之前，我們都是陌生人，離開這裡時，我們卻都有了共同的回憶。也因為這樣與家人般親切自在的熟悉感，讓我們再訪與認識更多的新朋友。在這樣快速繁忙的社會中，我們只追求簡單、樸實與純粹，保留能讓您感到最舒適的環境與餐點。除此之外，我們更想做的是營造一種緣起於澳洲與歐洲的咖啡與茶文化，一種類似“共同＆分享”的概念。這些飲料舒心了每位來訪的客人，放鬆之際，也提供大家交談的機會。
							&ndash; </p>
							<p>中山二店tame moose是延續Kinfolk分享親近關係精神的西餐小酒館，主要以西式餐點為主，有時也會調皮地以中式手法入西式菜色，創造味蕾更多豐富的滋味。多種國外進口新鮮生啤酒、精釀啤酒與奶油啤酒特調，也是人氣必點。店名tame 是馴養的意思，在小王子Le petit prince故事中則是指一種建立關係的過程。只有被馴服過的人事物，才有可能瞭解其本質。透過tame的過程，人事物對彼此的意義產生改變，就像玫瑰在小王子眼中般地特別。Moose為鹿的意思，選擇梅花鹿的原因，就像Kinfolk Cheese&Coffee的台灣黑熊圖案一樣，為了喚醒台灣當地的特色，表達我們對這塊土地的珍惜。</p>
						</section>
						
						<table width="300" align=center border=1>
		<tr>
			<td colspan=2 align=center><%=name%> 你的訂單細目為:
		<tr>
			<td width=100>桌號
			<td><%=table_number %>
		<tr>
			<td>阿囉哈鳳梨牛肉漢堡
			<td><%=a %>
		<tr>
			<td>3 layers 韓式炸雞
			<td><%=b %>
		<tr>
			<td>白雲冰沙奶昔
			<td><%=c %>
		<tr>
			<td colspan=2 >一共<%=cal(a,b,c) %><br>
	</table>
						
						
						
						<!-- Copyright -->
		<div id="copyright">
			<div class="container">
				Design: <a href="http://templated.co">Daniel Huang</a>
			</div>
		</div>
</body>
</html>