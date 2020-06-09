<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AI侍酒師sommelier_IMAGES</title>
<jsp:include page="header.jsp" />
<link rel="stylesheet" href="css/wine.css" />
<link rel="stylesheet" href="css/page.css" />
<script src="wine.js"></script>

</head>
<body>
	<div class="filter">
		<div class="select" id="selType">
			<p>酒種</p>
			<div class="option">
				<ul>
					<label><li><input type="checkbox" name="wineType[]"
							value="red" />紅酒</li></label>
					<label><li><input type="checkbox" name="wineType[]"
							value="white" />白酒</li></label>
				</ul>
			</div>
		</div>
		<p style="width: 10%; float: left"></p>
		<div class="select" id="selPlace">
			<p>產地</p>
			<div class="option">
				<ul>
					<label><li><input type="checkbox" name="winePlace[]"
							value="france" />法國</li></label>
					<label><li><input type="checkbox" name="winePlace[]"
							value="usa" />美國</li></label>
					<label><li><input type="checkbox" name="winePlace[]"
							value="chile" />智利</li></label>
					<label><li><input type="checkbox" name="winePlace[]"
							value="australia" />澳洲</li></label>
				</ul>
			</div>
		</div>
		<p style="width: 10%; float: left"></p>
		<div class="select" id="seltPrice">
			<p>價格</p>
			<div class="option">
				<ul>
					<label><li><input type="checkbox" name="winePrice[]"
							value="1000down" />1000以下</li></label>
					<label><li><input type="checkbox" name="winePrice[]"
							value="between1000and2000" />1000 ~ 2000</li></label>
					<label><li><input type="checkbox" name="winePrice[]"
							value="1000up" />1000以上</li></label>
				</ul>
			</div>
		</div>
	</div>
	<div class="showWine">
		<table border="1">
			<tr>
				<c:forEach var="li" items="${list}" varStatus="vs">
					<td><a  href="detail.jsp?id=${li.id}"><img src="${li.imgPath }" width=150px><br>
						<p>${li.enName}</p>
						<br>
						<p>${li.chName}</p>
						<hr>
						<p>市價:${li.price/0.8}</p>
						<p>會員價:${li.price }</p></a>
						<form action="">
							數量: <input type="number" name="quantity" min="1" max="10"
								value="1"><br> <input type="submit" value="加入詢問單">
						</form></td>
					<c:if test="${vs.count%4==0}">
			</tr>
			<tr>
				</c:if>


				</c:forEach>
			</tr>

		</table>
		</table>
	</div>
	</div>

	<div class="page-icon">
		<span class="page-disabled"><i></i>上一頁</span> <span
			class="page-current">1</span> <a href="#">2</a> <a href="#">3</a> <a
			href="#">4</a> <a href="#">5</a> …… <a href="#">19</a> <a href="#">20</a>
		<a class="page-next" href="#">下一頁<i></i></a>
	</div>

</body>
</html>