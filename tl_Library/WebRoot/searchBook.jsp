<%@ page language="java" import="java.util.*,edu.tl.pojo.cBook" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <title>My JSP 'testDetail.jsp' starting page</title>
    <script src="js/jquery-1.12.0.js" type="text/javascript" charset="utf-8"></script>
	<script src="js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
	<script type="text/javascript">
		var fix=new Array();
		var child=new Array();
		fix['小说']=['名家名作','科幻小说'];
		fix['历史']=['历史名著'];
		function initFix(){
			var fixObj=document.getElementById("Fid");
			for(var index in fix){
				var option=document.createElement("option");
				option.text=index;
				option.value=index;
				fixObj.options.add(option);
			}
		}
		function fixId(){
			var childObj=document.getElementById("Cid");
			childObj.options.length=0;
			var currentFix=document.getElementById("Fid").value;
			for(var index in fix[currentFix]){
				var option=document.createElement("option");
				option.text=fix[currentFix][index];
				option.value=fix[currentFix][index];
				childObj.options.add(option);
			}
		}
		function cinfo(){
			var Fid=document.getElementById("Fid").value;
			var Cid=document.getElementById("Cid").value;
			var Sid=document.getElementById("Sid").value;
			var infoList=Fid+":"+Cid+":"+Sid;
			window.location.href="bc/searchBook.action&infoList="+infoList;
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
  
  <body onload="initFix(),fixId()">
   <div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<img alt="140x140" src="./file/default.jpg" />
			<nav class="navbar navbar-default" role="navigation">
				<div class="navbar-header">
					 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="javascript:void(0);">Brand</a>
				</div>
				
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="active">
							 <a href="javascript:void(0);">Link</a>
						</li>
						<li>
							 <a href="javascript:void(0);">Link</a>
						</li>
						<li class="dropdown">
							 <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">Dropdown<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li>
									 <a href="javascript:void(0);">Action</a>
								</li>
								<li>
									 <a href="javascript:void(0);">Another action</a>
								</li>
								<li>
									 <a href="javascript:void(0);">Something else here</a>
								</li>
								<li class="divider">
								</li>
								<li>
									 <a href="javascript:void(0);">Separated link</a>
								</li>
								<li class="divider">
								</li>
								<li>
									 <a href="javascript:void(0);">One more separated link</a>
								</li>
							</ul>
						</li>
					</ul>
					<form class="navbar-form navbar-left" role="search">
						<div class="form-group">
							<input type="text" class="form-control" />
						</div> <button type="submit" class="btn btn-default">Submit</button>
					</form>
					<ul class="nav navbar-nav navbar-right">
						<li>
							 <a href="javascript:void(0);">Link</a>
						</li>
						<li class="dropdown">
							 <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">Dropdown<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li>
									 <a href="javascript:void(0);">Action</a>
								</li>
								<li>
									 <a href="javascript:void(0);">Another action</a>
								</li>
								<li>
									 <a href="javascript:void(0);">Something else here</a>
								</li>
								<li class="divider">
								</li>
								<li>
									 <a href="javascript:void(0);">Separated link</a>
								</li>
							</ul>
						</li>
					</ul>
				</div>
				
			</nav>
		</div>
	</div>
	<div class="row clearfix">
		<div class="col-md-2 column" style="border:1px solid red;">sss</div>
		<div class="col-md-6 column">
			<div class="row clearfix" style="margin-left:7px;">
				<div class="col-md-12 column">
					<div class="btn-group">
						 <select id="Fid" style="width:100px;height:30px;" onchange="fixId()"></select> 
					</div>
					<div class="btn-group">
						 <select id="Cid" style="width:100px;height:30px;" onchange="childId()"></select>
					</div>
					<div class="btn-group">
						 <select id="Sid" style="width:100px;height:30px;">
						 	<option value="中国" checked="checked">中国</option>
						 	<option value="美国" checked="checked">美国</option>
						 	<option value="日本" checked="checked">日本</option>
						 </select>
					</div> 
					<button type="button" onclick="cinfo()" class="btn btn-sm btn-info">查询</button>
				</div>
			</div>
			<div class="row" style="margin-top:10px;margin-left:0px;">
				<c:forEach var="cbook" items="${listBook }" varStatus="calc">
					<div class="thumbnail" style="float:left;margin-left:22px;">
						<img alt="300x200" src="./file/default(1).jpg" />
						<div class="caption" style="float:left;">
							<h3>
								Thumbnail 
							</h3>
							<p>
								${cbook.bid }
							</p>
							<p>
								 <a class="btn btn-primary" href="javascript:void(0);">Action</a> <a class="btn" href="javascript:void(0);">Action</a>
							</p>
						</div>
					</div>
					</c:forEach>
				 <div style="clear:both;"></div>
			</div>
			<ul class="pagination" style="float:right;">
				<li>
					 <a href="bc/searchBook.action&pageNum=${pageNum-1 }&infoList=${infoList }">Prev</a>
				</li>
				<li>
					 <a href="bc/searchBook.action&pageNum=1&infoList=${infoList }">1</a>
				</li>
				<li>
					 <a href="bc/searchBook.action&pageNum=2&infoList=${infoList }">2</a>
				</li>
				<li>
					 <a href="bc/searchBook.action&pageNum=3&infoList=${infoList }">3</a>
				</li>
				<li>
					 <a href="bc/searchBook.action&pageNum=4&infoList=${infoList }">4</a>
				</li>
				<li>
					 <a href="bc/searchBook.action&pageNum=5&infoList=${infoList }">5</a>
				</li>
				<li>
					 <a href="bc/searchBook.action&pageNum=${pageNum+1 }&infoList=${infoList }">Next</a>
				</li>
			</ul>
			
		</div>
		<div class="col-md-4 column">
			<img alt="140x140" src="./file/default.jpg" />
			<blockquote>
				<p>
					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.
				</p> <small>Someone famous <cite>Source Title</cite></small>
			</blockquote>
			<p>
				 <em>Git</em> 是一个分布式的版本控制系统，最初由 <strong>Linus Torvalds</strong> 编写，用作Linux内核代码的管理。在推出后，Git在其它项目中也取得了很大成功，尤其是在 <small>Ruby</small> 社区中。
			</p>
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
