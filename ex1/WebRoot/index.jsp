<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	
 <link rel="stylesheet" type="text/css" href="nav.css">
<link rel="stylesheet" type="text/css" href="iconfont.css">

<script type="text/javascript" src="jquery.min.js"></script>
<script type="text/javascript" src="nav.js"></script>

</head>
  <body>
 


<div class="nav">
	<div class="nav-top">
		<div id="mini" style="border-bottom:1px solid rgba(255,255,255,.1)"><img src="./picture/mini.png" ></div>
	</div>
	<ul>
		

		<li class="nav-item">
			<a href="gonggao_teacher.jsp" target="mainFrame"><i class="my-icon nav-icon icon_1"></i><span>公告
			</span><i class="my-icon nav-more"></i></i></a>
		</li>

		<li class="nav-item">
			<a href="index.html" target="mainFrame"><i class="my-icon nav-icon icon_2"></i><span></i>评分标准</span><i class="my-icon nav-more"></i></a>
		</li>

		<li class="nav-item">
			<a href="javascript:;"><i class="my-icon nav-icon icon_3"></i><span>题库
			</span><i class="my-icon nav-more"></i></i></a>
		</li>
	
		<li class="nav-item">
			<a href="javascript:;"><i class="my-icon nav-icon icon_3"></i><span>排行榜</span><i class="my-icon nav-more"></i></a>
			<ul>
				
				<li><a href="Paihang.jsp" target="mainFrame"><span>班内排行榜</span></a></li>
				<li><a href="javascript:;"><span>全级排行榜</span></a></li>
			</ul>
		</li>
	</ul>
	</ul>
</div>

<div style="text-align:center;margin:-650px 0; font:normal 14px/24px 'MicroSoft YaHei';">

</div>

  </body>
</html>
