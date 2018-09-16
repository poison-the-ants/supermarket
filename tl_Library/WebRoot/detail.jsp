<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<html>
<head>
<title>分页</title>
<script src="js/jquery-1.12.0.js" type="text/javascript" charset="utf-8"></script>
<script src="js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

<script type="text/javascript">
	function addCar() {
		var bcount = document.getElementById("bcount").value;
		var addInfo = "史记:司马迁:花纹硬壳:94.50:" + bcount;
		window.location.href = "cc/addCar.action?addInfo=" + addInfo;
	}
	function addBook(){
		var bcount=document.getElementById("bcount").value;
		var ccount=parseInt(bcount)+1;
		document.getElementById("bcount").value=ccount;
	}
	function deleteBook(){
		var bcount=document.getElementById("bcount").value;
		var ccount=parseInt(bcount)-1;
		document.getElementById("bcount").value=ccount;
	}
	function abook(obj){
		obj.style.cursor = 'pointer';
	}
</script>
<style type="text/css">
.tlfoot {
	margin-top: 10px;
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

<body style="background:#F0F3EF;">
	<div style="padding-left:105px;background:#FD413F;">
		<img alt="140x140" src="images/imgDetails/signDetail.png" />
	</div>
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<div class="row clearfix">
					<div class="col-md-2 column"
						style="background:#FFFFFF;height:170px;">
						<img alt="140x140" src="images/imgDetails/hleft.png" />
					</div>
					<div class="col-md-6 column" style="background:#FFFFFF;">
						<nav class="navbar navbar-default" role="navigation"
							style="height:150px;margin-top:10px;">
							<div class="navbar-header">
								<button type="button" class="navbar-toggle"
									data-toggle="collapse"
									data-target="#bs-example-navbar-collapse-1">
									<span class="sr-only">Toggle navigation</span><span
										class="icon-bar"></span><span class="icon-bar"></span><span
										class="icon-bar"></span>
								</button>
								<a class="navbar-brand" href="javascript:void(0);">图书</a>
							</div>

							<div class="collapse navbar-collapse"
								id="bs-example-navbar-collapse-1">
								<ul class="nav navbar-nav">
									<li class="active"><a href="javascript:void(0);">开学季</a>
									</li>
									<li><a href="javascript:void(0);">电子书</a></li>
									<li class="dropdown"><a href="javascript:void(0);"
										class="dropdown-toggle" data-toggle="dropdown">我的云书房<strong
											class="caret"></strong></a>
										<ul class="dropdown-menu">
											<li><a href="javascript:void(0);">Action</a></li>
											<li><a href="javascript:void(0);">Another action</a></li>
											<li><a href="javascript:void(0);">Something else
													here</a></li>
											<li class="divider"></li>
											<li><a href="javascript:void(0);">Separated link</a></li>
											<li class="divider"></li>
											<li><a href="javascript:void(0);">One more separated
													link</a></li>
										</ul></li>
								</ul>
								<form class="navbar-form navbar-left" role="search">
									<div class="form-group">
										<input type="text" class="form-control" />
									</div>
									<button type="submit" class="btn btn-default">查询</button>
								</form>
								<ul class="nav navbar-nav navbar-right">
									<li><a href="javascript:void(0);">高级搜索</a></li>
									<li class="dropdown"><a href="javascript:void(0);"
										class="dropdown-toggle" data-toggle="dropdown">我的当当<strong
											class="caret"></strong></a>
										<ul class="dropdown-menu">
											<li><a href="javascript:void(0);">Action</a></li>
											<li><a href="javascript:void(0);">Another action</a></li>
											<li><a href="javascript:void(0);">Something else
													here</a></li>
											<li class="divider"></li>
											<li><a href="javascript:void(0);">Separated link</a></li>
										</ul></li>
								</ul>
							</div>

						</nav>
					</div>
					<div class="col-md-4 column"
						style="background:#FFFFFF; height:170px;">
						<img alt="140x140" src="images/imgDetails/topRight.png" />
					</div>
				</div>
			</div>
		</div>

		<div class="row clearfix" style="background:#FFFFFF; height:400px;margin-top:-10px;">
			<div class="col-md-12 column">
				<ul class="breadcrumb" style="background:#F8F8F8;">
					<li><a href="index.jsp">首页</a></li>
					<li><a href="javascript:void(0);">图书</a></li>
					<li class="active">秒杀</li>
				</ul>
				<div class="page-header">
					<h1>
						Example page header <small>Subtext for header</small>
					</h1>
				</div>
			</div>
			<div class="col-md-12 column">
				<div class="row clearfix">
					<div class="col-md-2 column">
						<img alt="140x140" src="images/fleft1.png" style="margin-left:20px;"/>
					</div>
					<div class="col-md-4 column">
						<ul style="list-style-type: none;">
							<li><h5>史记（白话本全二册）</h5></li>
							<li>白话本翻译力作，学术性与普及性相结合。</li>
							<li>作者:（西汉）司马迁 著，张大可 译</li>
							<li>出版社:商务印书馆</li>
							<li>出版时间:2016年09月</li>
							<li>榜名78位</li>
							
							<li align="right">
								<input value="+" onClick="addBook()" onmouseover="abook(this)" readonly="readonly" style="width:20px;height:20px;text-align:center;background:#E9E9E9;"></input>
								<input value="1" type="text" id="bcount" style="width:35px;height:20px;">
								<input value="-" onClick="deleteBook()" onmouseover="abook(this)" readonly="readonly" style="width:20px;height:20px;text-align:center;background:#E9E9E9;"></input>
							</li>
							<li align="right" style="margin-top:10px;">
								<img onclick="addCar()" src="images/imgDetails/btnDetail.png" onmouseover="abook(this)">
								<img src="images/imgDetails/btnD.png" onmouseover="abook(this)">
							</li>
						</ul>
						
						
					</div>
					<div class="col-md-6 column">
						<div class="media">
							<a href="javascript:void(0);" class="pull-left"><img
								src="images/fleft2.png" width="80px" height="100px" class="media-object" alt='' /></a>
							<div class="media-body">
								<h4 class="media-heading">Nested media heading</h4>
								Cras sit amet nibh libero, in gravida nulla. Nulla vel metus
								scelerisque ante sollicitudin commodo. Cras purus odio,
								vestibulum in vulputate at, tempus viverra turpis.
								<div class="media">
									<a href="javascript:void(0);" class="pull-left"><img
										src="images/fleft3.png" width="80px" height="100px" class="media-object" alt='' /></a>
									<div class="media-body">
										<h4 class="media-heading">Nested media heading</h4>
										Cras sit amet nibh libero, in gravida nulla. Nulla vel metus
										scelerisque ante sollicitudin commodo. Cras purus odio,
										vestibulum in vulputate at, tempus viverra turpis.
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
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
