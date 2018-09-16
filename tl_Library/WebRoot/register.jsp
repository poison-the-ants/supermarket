<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <link rel="stylesheet" href="css/style.css" />

  </head>
  
  <body>
   <form action="uc/regist.action" method="post">
		<input name="account" placeholder="What is your account?" class="name"/>
		<input placeholder="What is your password?" class="password" type="password" name="password" />
		<input placeholder="What is your sex?" class="telephone" type="text" name="sex" />
    	<input placeholder="What is your nickname?" class="telephone" type="text" name="nickname" />
    <input name="submit" class="btn" type="submit" value="Send" />
</form>
  </body>
</html>
