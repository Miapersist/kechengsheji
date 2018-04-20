<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Paihang.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <link rel="stylesheet" href="normalize3.0.2.min.css" /> 
<link rel="stylesheet" href="css.css" />
  
  <body>
   <section id="ranking"> <span id="ranking_title">我的排行：3</span>
  <section id="ranking_list">
  
    <section class="box">
      <section class="col_1" title="1" >1</section>
      <section class="col_2">04151101</section>
      <section class="col_3">史航</section>
      <section class="col_4">20</section>
    </section>
    <section class="box">
      <section class="col_1" title="2">2</section>
      <section class="col_2">04151102</section>
      <section class="col_3">陈海鹏</section>
      <section class="col_4">16</section>
    </section>
    <section class="box cur">
      <section class="col_1" title="3">3</section>
      <section class="col_2">04151123</section>
      <section class="col_3">林月丽</section>
      <section class="col_4">12</section>
    </section>
    <section class="box">
      <section class="col_1">4</section>
      <section class="col_2"></section>
      <section class="col_3"></section>
      <section class="col_4"></section>
    </section>
    <section class="box">
      <section class="col_1">5</section>
      <section class="col_2"></section>
      <section class="col_3"></section>
      <section class="col_4"></section>
    </section>
      <section class="box">
      <section class="col_1"></section>
      <section class="col_2"></section>
      <section class="col_3"></section>
      <section class="col_4"></section>
    </section>
  </section>
  </section>


  </body>
</html>
