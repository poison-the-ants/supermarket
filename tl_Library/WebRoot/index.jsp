<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>首页</title>
<link rel="stylesheet" href="css/eduStyle.css" type="text/css" />
<script src="js/jquery-1.12.0.js" type="text/javascript" charset="utf-8"></script>
<script src="js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

<style type="text/css">

}
</style>
<script type="text/javascript">
	function changeImg() {
		var imgObj = document.getElementById("tlimg");
		imgObj.src = "CheckCodeServlet?ran=" + Math.random();
	}
	function logins() {
		alert("请先登录");
	}
</script>
</head>
<body>
	<c:if var="result" test="${empty sessionScope.nickname}">
		<div class="all">
		<div class="sign"></div>
		<div class="header">
			<div class="hleft"></div>
			<div class="hright">
				<div class="hrtop">
					<div class="A">襄阳</div>
					<ul>
						<li>你好，请登录<a href="register.jsp">免费注册</a></li>
						<li><a href="#">我的订单</a></li>
						<li><a href="#">我的京东<img src="images/10.png" /></a></li>
						<li><a href="#">京东会员</a></li>
						<li><a href="#">企业采购</a></li>
						<li><a href="#">客户服务<img src="images/10.png" /></a></li>
						<li><a href="#">网站导航<img src="images/10.png" /></a></li>
						<li><a href="#">手机京东</a></li>
					</ul>
				</div>
				<div class="hrmid">
					<div class="hrmleft">
						<form>
							<table>
								<tr>
									<td><input type="search" name="" /></td>
									<td><input type="button" name="" /></td>
								</tr>
							</table>
						</form>
						<ul>
							<li><a href="#"><span>399减120</span></li>
							<li><a href="#">领500神劵</a></li>
							<li><a href="#">农用物资</a></li>
							<li><a href="#">春装7折</a></li>
							<li><a href="#">5折好货</a></li>
							<li><a href="#">风衣男</a></li>
							<li><a href="#">乐视电视</a></li>
							<li><a href="#">200减160</a></li>
							<li><a href="#">单肩包女</a></li>
						</ul>
					</div>
					<div class="hrmright">
						<div class="cars"
							style="width:108px;height:38px;background:#FF2832;">
							<a href="javascript:logins()"><img alt="购物车"
								src="images/cars.png"></a>
						</div>
						<div class="finger">
							<img src="images/finger.png" class="finger">
						</div>
						<div style="clear:both;"></div>
					</div>

				</div>
				<div class="hrbot">
					<ul class="nav">
						<li><a href="#">秒杀</a>
							<ul class="second">
								<li>京东秒杀</li>
								<li>京东秒杀</li>
								<li>京东秒杀</li>
								<li>京东秒杀</li>
								<li>京东秒杀</li>
								<li>京东秒杀</li>
							</ul></li>
						<li><a href="#">优惠券</a></li>
						<li><a href="#">闪购</a></li>
						<li><a href="#">拍卖</a></li>
						<li><a href="#">服装城</a></li>
						<li><a href="#">京东超市</a></li>
						<li><a href="#">生鲜</a></li>
						<li><a href="#">全球购</a></li>
						<li><a href="#">京东金融</a></li>
					</ul>
				</div>


			</div>
			<div class="clear"></div>
		</div>
		<div class="main">
			<div class="mleft">
				<ul>
					<li><a href="searchBook.jsp">图书</a> / <a href="#">童书</a></li>
					<li><a href="#">手机</a> / <a href="#">运营商</a> / <a href="#">数码</a></li>
					<li><a href="#">电脑</a> / <a href="#"><a href="#">办公</a></li>
					<li><a href="#">家居</a> / <a href="#">家具</a> / <a href="#">家装</a>
						/ <a href="#">厨具</a></li>
					<li><a href="#">男装</a> / <a href="#">女装</a> / <a href="#">童装</a>
						/ <a href="#">内衣</a></li>
					<li><a href="#">美妆个护</a> / <a href="#">清洁用品</a> / <a href="#">宠物</a></li>
					<li><a href="#">鞋靴</a> / <a href="#">箱包</a>/ <a href="#">珠宝</a>
						/ <a href="#">奢侈品</a></li>
					<li><a href="#">运动</a> / <a href="#">户外</a> / <a href="#">钟表</a></li>
					<li><a href="#">汽车</a> / <a href="#">汽车用品</a></li>
					<li><a href="#">母婴</a> / <a href="#">玩具乐器</a></li>
					<li><a href="#">医药保健</a></li>
					<li><a href="#">图书</a> / <a href="#">音像</a> / <a href="#">电子书</a></li>
					<li><a href="#">机票</a> / <a href="#">酒店</a> / <a href="#">旅游</a>
						/ <a href="#">生活</a></li>
					<li><a href="#">理财</a> / <a href="#">众筹</a> / <a href="#">白条</a>
						/ <a href="#">保险</a></li>
				</ul>
			</div>
			<div class="mcenter">
				<div class="mctop"></div>
				<div class="mcleft"></div>
				<div class="mcright"></div>
			</div>
			<div class="mright">
				<div class="top1">
					<p>Hi，欢迎来到京东！</p>
					<p>
						<span><a href="#" data-toggle="modal"
							data-target="#myModal">登录</span></a> <span><a href="register.jsp">注册</span></a>
					</p>
				</div>
				<div class="top2">
					<a href="#">新人福利</a><a href="#">PLUS会员</a>
				</div>
				<div class="top3">
					<ul class="nav">
						<li><span>促销</span><i></i>
							<ul class="content">
								<li>500元神券提前领！</li>
								<li>不想新衣变旧？奥妙在这里</li>
								<li>1000元E卡免费抽</li>
								<li>京东服饰跨店铺299减100</li>
							</ul></li>
						<li><span>公告</span>
							<ul class="content1">
								<li>我我哦我我哦我</li>
								<li>你你你你一的的</li>
								<li>你你你你你inii你in</li>
								<li>都是都上课灯市口咳嗽口袋</li>
							</ul></li>
					</ul>
				</div>
				<div class="top4">
					<table cellspacing="0" cellpadding="0">
						<tr>
							<td><img src="images/robot.png" /></td>
							<td><img src="images/robot.png" /></td>
							<td><img src="images/robot.png" /></td>
							<td><img src="images/robot.png" /></td>
						</tr>
						<tr>
							<td><img src="images/robot.png" /></td>
							<td><img src="images/robot.png" /></td>
							<td><img src="images/robot.png" /></td>
							<td><img src="images/robot.png" /></td>
						</tr>
						<tr>
							<td><img src="images/robot.png" /></td>
							<td><img src="images/robot.png" /></td>
							<td><img src="images/robot.png" /></td>
							<td><img src="images/robot.png" /></td>
						</tr>
					</table>
				</div>
			</div>
		</div>
		<div class="footer">
			<div class="maintop">
				<div class="maintop1">
					<p>
						京东秒杀 <span> &nbsp;总有你想不到的低价</span> <img src="images/15.png">
					</p>
					<img src="images/13.png">
				</div>
				<div class="left">

					<ul>
						<li class="left1"><a href="detail.jsp"><img
								src="images/fleft1.png"></a></a></li>
						<li>史家之绝唱 , 无韵之离骚. 记史详实、笔法灵妙.</li>
						<li>￥<span>94.50</span> ￥<i>130.00</i></li>
					</ul>
				</div>
				<div class="left">
					<ul>
						<li class="left1"><img src="images/fleft2.png"></li>
						<li>一个人并不是生来就要被打败的.</li>
						<li>￥<span>21.00</span> ￥<i>53.00</i></li>
					</ul>
				</div>
				<div class="left">
					<ul>
						<li class="left1"><img src="images/fleft3.png"></li>
						<li>青春的忧愁与疼痛,人性的荒凉与黑暗.</li>
						<li>￥<span>31.10</span> ￥<i>56.00</i></li>
					</ul>
				</div>
				<div class="left">
					<ul>
						<li class="left1"><img src="images/fleft4.png"></li>
						<li>自成书以来,历代帝王将相、文人骚客争读不止.</li>
						<li>￥<span>120.30</span> ￥<i>150.00</i></li>
					</ul>
				</div>
				<div class="left">
					<ul>
						<li class="left1"><img src="images/fleft5.png"></li>
						<li>诺贝尔奖获得者川端康成经典作品,余华倾情推荐.</li>
						<li>￥<span>39.50</span> ￥<i>63.00</i></li>
					</ul>
				</div>
				<div class="right"></div>
			</div>
		</div>
		<div class="tlfoot">
			<div class="tlfoot-t">
				<p>许可证编号：WE125482154 鄂ICP备125478966</p>
				<p>
					<a href="#">隐私保护</a> | <a href="#">诚聘英才</a> | <a href="#">关于我们</a>
					| <a href="#">网站地图</a> | <a href="#">友情链接</a> | <a href="#">商务合作</a>
				</p>
			</div>
		</div>
	</div>


	<!-- 基本模态框示例（Modal） -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<form action="uc/login.action" class="form-horizontal" role="form"
					method="post">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">用户登录</h4>
					</div>
					<div class="modal-body">

						<div class="form-group">
							<label class="col-sm-2">用户名</label>
							<div class="col-sm-8">
								<input class="form-control" type="text" name="account" />
							</div>
						</div>

						<div id="pwd1-group" class="form-group">
							<label class="col-sm-2">密码</label>
							<div class="col-sm-8">
								<input class="form-control" type="password" name="password">
							</div>
						</div>
						<div id="pwd2-group" class="form-group">
							<label class="col-sm-2">验证码</label>
							<div class="col-sm-3">
								<input class="form-control" type="text" name="checkcode">
							</div>
							<div class="col-sm-5">
								<!-- <input type="image" name="img-code" id="tlimg"
							         alt="看不清，点击换图" src="CheckCodeServlet"
							       	onclick="javascript:changeImg()"> -->
								<img src="CheckCodeServlet" id="tlimg">&nbsp;&nbsp; <a
									href="javascript:changeImg()">看不清?换一张</a>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<%-- <div class="col-sm-8" align="center">
								<span style="color:red;">${msg }</span>
							</div> --%>
						<button id="submit_btn" type="submit" class="btn btn-success">
							登录</button>
						<button type="button" class="btn btn-danger" data-dismiss="modal">关闭
						</button>

					</div>
				</form>
			</div>
			<!-- /.modal-content -->

		</div>
		<!-- /.modal -->
	</div>
	</c:if>
	<c:if test="${!result}">
	<div class="all">
		<div class="sign"></div>
		<div class="header" style="margin-bottom:5px;">
			<div class="hleft"></div>
			<div class="hright">
				<div class="hrtop">
					<div class="A">襄阳</div>
					<ul>
						<li>${nickname }&nbsp;,&nbsp;欢迎您！</li>
						<li><a href="#">我的订单</a></li>
						<li><a href="#">我的京东<img src="images/10.png" /></a></li>
						<li><a href="#">京东会员</a></li>
						<li><a href="#">企业采购</a></li>
						<li><a href="#">客户服务<img src="images/10.png" /></a></li>
						<li><a href="#">网站导航<img src="images/10.png" /></a></li>
						<li><a href="#">手机京东</a></li>
					</ul>
				</div>
				<div class="hrmid">
					<div class="hrmleft">
						<form>
							<table>
								<tr>
									<td><input type="search" name="" /></td>
									<td><input type="button" name="" /></td>
								</tr>
							</table>
						</form>
						<ul>
							<li><a href="#"><span>399减120</span></li>
							<li><a href="#">领500神劵</a></li>
							<li><a href="#">农用物资</a></li>
							<li><a href="#">春装7折</a></li>
							<li><a href="#">5折好货</a></li>
							<li><a href="#">风衣男</a></li>
							<li><a href="#">乐视电视</a></li>
							<li><a href="#">200减160</a></li>
							<li><a href="#">单肩包女</a></li>
						</ul>
					</div>
					<div class="hrmright">
						<div class="cars"
							style="width:83px;height:38px;background:#FF2832;">
							<a href="cc/showCar.action" style="text-decoration:none;"><img
								alt="购物车" src="images/cars.png"></a>
						</div>
						<iframe width="25px" height="38px" frameborder="0"
							style="margin-left:90px;margin-top:20px;background:#FF2832;"
							src="cc/carCount.action"></iframe>
						<div class="finger">
							<img src="images/finger.png" class="finger">
						</div>
						<div style="clear:both;"></div>
					</div>

				</div>
				<div class="hrbot">
					<ul class="nav">
						<li><a href="#">秒杀</a>
							<ul class="second">
								<li>京东秒杀</li>
								<li>京东秒杀</li>
								<li>京东秒杀</li>
								<li>京东秒杀</li>
								<li>京东秒杀</li>
								<li>京东秒杀</li>
							</ul></li>
						<li><a href="#">优惠券</a></li>
						<li><a href="#">闪购</a></li>
						<li><a href="#">拍卖</a></li>
						<li><a href="#">服装城</a></li>
						<li><a href="#">京东超市</a></li>
						<li><a href="#">生鲜</a></li>
						<li><a href="#">全球购</a></li>
						<li><a href="#">京东金融</a></li>
					</ul>
				</div>


			</div>
			<div class="clear"></div>
		</div>
		<div class="main">
			<div class="mleft">
				<ul>
					<li><a href="searchBook.jsp">图书</a> / <a href="#">童书</a></li>
					<li><a href="#">手机</a> / <a href="#">运营商</a> / <a href="#">数码</a></li>
					<li><a href="#">电脑</a> / <a href="#"><a href="#">办公</a></li>
					<li><a href="#">家居</a> / <a href="#">家具</a> / <a href="#">家装</a>
						/ <a href="#">厨具</a></li>
					<li><a href="#">男装</a> / <a href="#">女装</a> / <a href="#">童装</a>
						/ <a href="#">内衣</a></li>
					<li><a href="#">美妆个护</a> / <a href="#">清洁用品</a> / <a href="#">宠物</a></li>
					<li><a href="#">鞋靴</a> / <a href="#">箱包</a>/ <a href="#">珠宝</a>
						/ <a href="#">奢侈品</a></li>
					<li><a href="#">运动</a> / <a href="#">户外</a> / <a href="#">钟表</a></li>
					<li><a href="#">汽车</a> / <a href="#">汽车用品</a></li>
					<li><a href="#">母婴</a> / <a href="#">玩具乐器</a></li>
					<li><a href="#">医药保健</a></li>
					<li><a href="#">图书</a> / <a href="#">音像</a> / <a href="#">电子书</a></li>
					<li><a href="#">机票</a> / <a href="#">酒店</a> / <a href="#">旅游</a>
						/ <a href="#">生活</a></li>
					<li><a href="#">理财</a> / <a href="#">众筹</a> / <a href="#">白条</a>
						/ <a href="#">保险</a></li>
				</ul>
			</div>
			<div class="mcenter">
				<div class="mctop"></div>
				<div class="mcleft"></div>
				<div class="mcright"></div>
			</div>
			<div class="mright">
				<div class="top1s">
					<p>${nickname }</p>
					<p>
						<span><a href="#">个人空间</span></a> <span><a
							href="uc/logOut.action">退出</span></a>
					</p>
				</div>
				<div class="top2">
					<a href="#">新人福利</a><a href="#">PLUS会员</a>
				</div>
				<div class="top3">
					<ul class="nav">
						<li><span>促销</span><i></i>
							<ul class="content">
								<li>500元神券提前领！</li>
								<li>不想新衣变旧？奥妙在这里</li>
								<li>1000元E卡免费抽</li>
								<li>京东服饰跨店铺299减100</li>
							</ul></li>
						<li><span>公告</span>
							<ul class="content1">
								<li>我我哦我我哦我</li>
								<li>你你你你一的的</li>
								<li>你你你你你inii你in</li>
								<li>都是都上课灯市口咳嗽口袋</li>
							</ul></li>
					</ul>
				</div>
				<div class="top4">
					<table cellspacing="0" cellpadding="0">
						<tr>
							<td><img src="images/robot.png" /></td>
							<td><img src="images/robot.png" /></td>
							<td><img src="images/robot.png" /></td>
							<td><img src="images/robot.png" /></td>
						</tr>
						<tr>
							<td><img src="images/robot.png" /></td>
							<td><img src="images/robot.png" /></td>
							<td><img src="images/robot.png" /></td>
							<td><img src="images/robot.png" /></td>
						</tr>
						<tr>
							<td><img src="images/robot.png" /></td>
							<td><img src="images/robot.png" /></td>
							<td><img src="images/robot.png" /></td>
							<td><img src="images/robot.png" /></td>
						</tr>
					</table>
				</div>
			</div>
		</div>
		<div class="footer">
			<div class="maintop">
				<div class="maintop1">
					<p>
						京东秒杀 <span> &nbsp;总有你想不到的低价</span> <img src="images/15.png">
					</p>
					<img src="images/13.png">
				</div>

				<div class="left">

					<ul>
						<li class="left1"><a href="detail.jsp"><img
								src="images/fleft1.png"></a></a></li>
						<li>史家之绝唱 , 无韵之离骚. 记史详实、笔法灵妙.</li>
						<li>￥<span>94.50</span> ￥<i>130.00</i></li>
					</ul>
				</div>
				<div class="left">
					<ul>
						<li class="left1"><img src="images/fleft2.png"></li>
						<li>一个人并不是生来就要被打败的.</li>
						<li>￥<span>21.00</span> ￥<i>53.00</i></li>
					</ul>
				</div>
				<div class="left">
					<ul>
						<li class="left1"><img src="images/fleft3.png"></li>
						<li>青春的忧愁与疼痛,人性的荒凉与黑暗.</li>
						<li>￥<span>31.10</span> ￥<i>56.00</i></li>
					</ul>
				</div>
				<div class="left">
					<ul>
						<li class="left1"><img src="images/fleft4.png"></li>
						<li>自成书以来,历代帝王将相、文人骚客争读不止.</li>
						<li>￥<span>120.30</span> ￥<i>150.00</i></li>
					</ul>
				</div>
				<div class="left">
					<ul>
						<li class="left1"><img src="images/fleft5.png"></li>
						<li>诺贝尔奖获得者川端康成经典作品,余华倾情推荐.</li>
						<li>￥<span>39.50</span> ￥<i>63.00</i></li>
					</ul>
				</div>
				<div class="right"></div>
			</div>
		</div>
		<div class="tlfoot">
			<div class="tlfoot-t">
				<p>许可证编号：WE125482154 鄂ICP备125478966</p>
				<p>
					<a href="#">隐私保护</a> | <a href="#">诚聘英才</a> | <a href="#">关于我们</a>
					| <a href="#">网站地图</a> | <a href="#">友情链接</a> | <a href="#">商务合作</a>
				</p>
			</div>
		</div>
	</div>
	
	</c:if>

</body>
</html>
