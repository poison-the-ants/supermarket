<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    
    <title>My JSP 'test.jsp' starting page</title>
    <style type="text/css">
    	.cars{
    		position:absolute;
    		top:0px;
    		left:0px;
    		width:23px;
    		height:36px;
    		background:#FF2832;
    	}
    	.spans{
    		color:white;
    		position:relative;
    		top:5px;
    	}
    	
    </style>
    <script type="text/javascript">
    	window.setInterval(function(){
			window.location.href="../cc/carCount.action";
		},1000);
    </script>
  </head>
  
  <body>
  	<c:if var="result" test="${counts<=99 }">
   		<div class="cars"><span class="spans">${counts }</span></div>
   	</c:if>
   	<c:if test="{!result}">
   		<div class="cars"><span class="spans">99+</span></div>
   	</c:if>
  </body>
</html>
