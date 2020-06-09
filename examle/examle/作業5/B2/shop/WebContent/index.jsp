<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<!-------JavaScript圖片列示表單 START-------->
<SCRIPT language=JavaScript>
<!--
	function MM_swapImgRestore() { //v3.0
		var i, x, a = document.MM_sr;
		for (i = 0; a && i < a.length && (x = a[i]) && x.oSrc; i++)
			x.src = x.oSrc;
	}
	function MM_preloadImages() { //v3.0
		var d = document;
		if (d.images) {
			if (!d.MM_p)
				d.MM_p = new Array();
			var i, j = d.MM_p.length, a = MM_preloadImages.arguments;
			for (i = 0; i < a.length; i++)
				if (a[i].indexOf("#") != 0) {
					d.MM_p[j] = new Image;
					d.MM_p[j++].src = a[i];
				}
		}
	}
	function MM_findObj(n, d) { //v4.0
		var p, i, x;
		if (!d)
			d = document;
		if ((p = n.indexOf("?")) > 0 && parent.frames.length) {
			d = parent.frames[n.substring(p + 1)].document;
			n = n.substring(0, p);
		}
		if (!(x = d[n]) && d.all)
			x = d.all[n];
		for (i = 0; !x && i < d.forms.length; i++)
			x = d.forms[i][n];
		for (i = 0; !x && d.layers && i < d.layers.length; i++)
			x = MM_findObj(n, d.layers[i].document);
		if (!x && document.getElementById)
			x = document.getElementById(n);
		return x;
	}
	function MM_swapImage() { //v3.0
		var i, j = 0, x, a = MM_swapImage.arguments;
		document.MM_sr = new Array;
		for (i = 0; i < (a.length - 2); i += 3)
			if ((x = MM_findObj(a[i])) != null) {
				document.MM_sr[j++] = x;
				if (!x.oSrc)
					x.oSrc = x.src;
				x.src = a[i + 2];
			}
	}
//-->
</SCRIPT>
<!-------JavaScript圖片列示表單 END-------->
<meta charset="BIG5">
<title>English Afternoon Tea Shop</title>
<link rel="stylesheet" type="text/css" href="st1.css">


</head>
<body background="pic/pic2.jpg"
	onload="MM_preloadImages('pic/pic3.jpg','pic/Yeovil.jpg','pic/Kenilworth.jpg','pic/Farnham.jpg')">
	<div class="header">
		<p class="title">English Afternoon Tea Shop</p>
	</div>

	<div class="content">

		<br> <br> <br> <br>
		<!-------JavaScript圖片列示表單 START-------->
		<TABLE cellSpacing=0 cellPadding=0 align=center border=1
			bgcolor="#C9C0E7" bordercolor="#C9C0E7" height="200" width="276">
			<TBODY>
				<TR>

					<TD rowspan="2" width="799">
						<TABLE cellSpacing=0 cellPadding=0 width=200 align=center border=0
							height="200">
							<TBODY>
								<TR>
									<TD vAlign=top width=0 height="0" bgcolor="#C9C0E7">

										<TABLE height=0 cellSpacing=0 cellPadding=0 width=321 border=0
											align="center">
											<TBODY>
												<TR>
								
													<TD vAlign=top align=left width=699 height="38">
														<TABLE cellSpacing=0 cellPadding=0 width=200
															bgColor=#C9C0E7 border=0 align="center">
															<TBODY>
																<TR bgcolor="#C9C0E7">
																	<TD width=318>
																		<table width="33%" border="0" cellspacing="0"
																			cellpadding="0" bordercolor="#C9C0E7"
																			bgcolor="#C9C0E7">
																			<tr>
																				<td><img height=250 src="pic/pic3.jpg"
																					width=300 name=a align="right"></td>
																			</tr>
																		</table>

																	</TD>
																</tr>
																<tr>
																	<TD vAlign=top align=left  width="405">
																		<table width="294" border="0" cellspacing="0"
																			cellpadding="3" bgcolor="#C9C0E7" align="center"
																			 bordercolor="#C9C0E7">
																			<tr>
																				<td>
																					<div align="center">
																						<a href="#"><IMG
																							onmouseover="MM_swapImage('a','','pic/pic3.jpg',1)"
																							onmouseout=MM_swapImgRestore() height=41
																							src="pic/pic3.jpg" width=55 border=0></a>
																					</div>
																				</td>
																				<td>
																					<div align="center">
																						<a href="#"><IMG
																							onmouseover="MM_swapImage('a','','pic/Yeovil.jpg',1)"
																							onmouseout=MM_swapImgRestore() height=41
																							src="pic/Yeovil.jpg" width=55 border=0></a>
																					</div>
																				</td>
																				<td>
																					<div align="center">
																						<a href="#"><IMG
																							onmouseover="MM_swapImage('a','','pic/Kenilworth.jpg',1)"
																							onmouseout=MM_swapImgRestore() height=41
																							src="pic/Kenilworth.jpg" width=55 border=0></a>
																					</div>
																				</td>
																				<td>
																					<div align="center">
																						<a href="#"><IMG
																							onmouseover="MM_swapImage('a','','pic/Farnham.jpg',1)"
																							onmouseout=MM_swapImgRestore() height=41
																							src="pic/Farnham.jpg" width=55 border=0></a>
																					</div>
																				</td>
																			</tr>
																		</table>
																		<table width="100%" border="0" cellspacing="0"
																			cellpadding="0" bordercolor="#C9C0E7">
																			<tr>

																				</font>
																				</td>
																			</tr>
																		</table>

																	</TD>
																</TR>
															</TBODY>
														</TABLE>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
									</TD>
								</TR>
							</TBODY>
						</TABLE>

					</TD>
				</TR>

			</TBODY>
		</TABLE>
		<!-------JavaScript圖片列示表單 END-------->
		<br> <br> <p style="text-align:center"><a href="menu.jsp"><font face="Verdana"
			size="6" color="black" ><b>Enter</b></font></a></p>
		</li>
	</div>



	<div class="footer">
</body>
</html>