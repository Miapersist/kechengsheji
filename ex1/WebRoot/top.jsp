<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'top.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

 <style type="text/css">
 
ul {
    list-style-type: none;
    margin: -10px;
    padding:0px;
    overflow: hidden;
    background-color: black;	
}

li {
    float: right;
}
li a {
    display: block;
    color: white;
    text-align: center;
    padding: 15px 10px 15px 25px;
    text-decoration: none;
}

li a:hover {
    background-color: #111;
}
</style>
  </head>
  
  <body>
        <ul>
  <li><a class="active" ><img src="./picture/GeRen.png" width="30" height="30" />个人中心</a></li>
</ul>
  </body>
</html>
