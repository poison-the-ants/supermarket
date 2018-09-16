<%@ page language="java" import="java.util.*,edu.tl.pojo.uCar"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

<title>My JSP 'carList.jsp' starting page</title>
<script src="../js/jquery-1.12.0.js" type="text/javascript" charset="utf-8"></script>
<script src="../js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css" />
<script type="text/javascript">
	function deleteCar(cars) {
		window.location.href = "cc/deleteCar.action?info=" + cars;
	}
</script>
<style type="text/css">
.tlfoot {
	margin-top:50px;
	width: 100%;
	height: 70px;
	padding-top: 10px;
	border-top: 1px #CCC solid;
	clear: both;
}

.tlfoot-t {
	width: 900px;
	margin: 0 auto;
	text-align: center;
	color: #676767;
	line-height: 26px;
}
</style>

</head>

<body>

	<ul class="breadcrumb" style="padding-left:200px;">
		<li><a href="../index.jsp">首页</a></li>
		<li><a href="javascript:void(0);">图书</a></li>
		<li class="active">我的当当</li>
	</ul>
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column" align="center">
				<img src="../images/imgDetails/carSign.png" />

			</div>
		</div>
	</div>
	<div style="width:1500px;height:5px;background:red; margin-top:0px;"></div>
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<table class="table">
					<thead>
						<tr>
							<th>序号</th>
							<th>书名
							</th>
							<th>作者</th>
							<th>纸质
							</th>
							<th>价格</th>
							<th>个数</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="ucar" items="${carList}" varStatus="calc">
						<tr>
							<td>${calc.count }</td>
							<td>${ucar.bname }</td>
							<td>${ucar.author }</td>
							<td>${ucar.paper }</td>
							<td>${ucar.price }</td>
							<td>${ucar.bcount }</td>
							<td><a
								href="javascript:deleteCar('${ucar.bname }:${ucar.author }:${ucar.paper }:${ucar.account }')">删除</a>&nbsp;<a
								href="#">修改</a></td>
							<c:set var="totalPrice" value="${ucar.price*ucar.bcount+totalPrice }"/>
							
						</tr>
						</c:forEach>

						<tr>
							<td colspan="7" align="right">总价:${totalPrice }
							</td>
						</tr>

					</tbody>
				</table>

			</div>
		</div>
	</div>
	<div class="tlfoot">
		<div class="tlfoot-t">
			<p>许可证编号：WE125482154 鄂ICP备125478966</p>
			<p>
				<a href="#">隐私保护</a> | <a href="#">诚聘英才</a> | <a href="#">关于我们</a> |
				<a href="#">网站地图</a> | <a href="#">友情链接</a> | <a href="#">商务合作</a>
			</p>
		</div>
	</div>
</body>
</html>
