<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="model.porder"
    import="Dao.porderDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>�ڳ��@�� by tame moose</title>
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
<%!//�ŧi��k-->static
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
					<h1><a href="#">�ڳ��@��</a></h1>
					<span>By Tame Moose</span>
				</div>
				
				<!-- Nav -->
				<nav id="nav">
					<ul>
						<li class="active"><a href="index.html">�ӫ~����</a></li>
						<li><a href="left-sidebar.jsp">�d�߭q��</a></li>
						<li><a href="right-sidebar.jsp">�ק�q��</a></li>
						<li><a href="no-sidebar.jsp">�R���q��</a></li>
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
								<h2>Welcome to �ڳ��@��!</h2>
							</header>
							<a href="#" class="image full"><img src="images/2.jpg" alt="" /></a>
							<p>This is <strong>Kinfolk Co.</strong>�֩���ɤ@�بɨ��C���B���P�M��������ͬ��A�סC�ѥ��@��Kinfolk Cheese& Coffee������ѧ˪��Ϥ��򥪾F�k�٥����@���A�ڭ̦b�o�ӳ���B��|�B�{�ѡB�ɨ��ּ֪��ɥ��C���X�o�̤��e�A�ڭ̳��O���ͤH�A���}�o�̮ɡA�ڭ̫o�����F�@�P���^�СC�]�]���o�˻P�a�H��ˤ��ۦb�����x�P�A���ڭ̦A�X�P�{�ѧ�h���s�B�͡C�b�o�˧ֳt�c�������|���A�ڭ̥u�l�D²��B���P�º�A�O�d�����z�P��̵ξA�����һP�\�I�C�������~�A�ڭ̧�Q�����O��y�@�ؽt�_��D�w�P�ڬw���@�ػP����ơA�@���������@�P�����ɡ��������C�o�Ƕ��ƵΤߤF�C��ӳX���ȤH�A���P���ڡA�]���Ѥj�a��ͪ����|�C
							&ndash; </p>
							<p>���s�G��tame moose�O����Kinfolk���ɿ˪����Y�믫�����\�p�s�]�A�D�n�H�覡�\�I���D�A���ɤ]�|�ե֦a�H������k�J�覡���A�гy������h�״I�������C�h�ذ�~�i�f�s�A�Ͱ�s�B���C��s�P���o��s�S�աA�]�O�H���I�C���Wtame �O���i���N��A�b�p���lLe petit prince�G�Ƥ��h�O���@�ثإ����Y���L�{�C�u���Q���A�L���H�ƪ��A�~���i���A�Ѩ䥻��C�z�Ltame���L�{�A�H�ƪ��塚�����N�q���ͧ��ܡA�N�������b�p���l������a�S�O�CMoose�������N��A��ܱ��������]�A�N��Kinfolk Cheese&Coffee���x�W�º��Ϯפ@�ˡA���F����x�W��a���S��A��F�ڭ̹�o���g�a���ñ��C</p>
						</section>
						
						<table width="300" align=center border=1>
		<tr>
			<td colspan=2 align=center><%=name%> �A���q��ӥج�:
		<tr>
			<td width=100>�ู
			<td><%=table_number %>
		<tr>
			<td>���o��������׺~��
			<td><%=a %>
		<tr>
			<td>3 layers ��������
			<td><%=b %>
		<tr>
			<td>�ն��B�F����
			<td><%=c %>
		<tr>
			<td colspan=2 >�@�@<%=cal(a,b,c) %><br>
	</table>
						
						
						
						<!-- Copyright -->
		<div id="copyright">
			<div class="container">
				Design: <a href="http://templated.co">Daniel Huang</a>
			</div>
		</div>
</body>
</html>