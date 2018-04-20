<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
	
	<title>Unique jQuery Placeholder Animations |  Form Animation | FoxHolder</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

      <meta name="description" content="Get the Unique jQuery Placeholder Form Animations for your website with FoxHolder! View the demo of these placeholders & install the one fitting your website now!">
      <meta name="keywords" content="foxholder, jQuery, plugin, CSS3, forms, placeholder,jquery form animation,form animation, unique placeholder animations, form placeholder">
      <!-- Open Graph -->
      <meta property="og:title" content="Foxholder - Unique Placeholder Animations" />
      <meta property="og:description" content="Foxholder is a pack of 15 unique form placeholder animations. Easy to add on your website!" />
      <meta property="og:type" content="article" />
      <meta property="og:url" content="http://foxholder.fox-hover.co.uk/" />
      <meta property="og:image" content="http://foxholder.fox-hover.co.uk/static/img/logo.png" />
      <meta property="og:image:type" content="image/png" />
      <meta property="og:image:width" content="132" />
      <meta property="og:image:height" content="200" />
      <!-- Twitter Card -->
      <meta name="twitter:card" content="summary" />
      <meta name="twitter:title" content="Foxholder - Unique Placeholder Animations" />
      <meta name="twitter:description" content="Foxholder is a pack of 15 unique form placeholder animations. Easy to add on your website!" />
      <meta name="twitter:creator" content="@fox_hover" />
      <meta name="twitter:image:src" content="http://foxholder.fox-hover.co.uk/static/img/logo.png" />
      <meta name="twitter:domain" content="http://foxholder.fox-hover.co.uk/" />

    <link rel="shortcut icon" href="static/img/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.css">
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,700i,900" rel="stylesheet">
    <link rel="stylesheet" href="static/css/bootstrap.min.css" />
    <link rel="stylesheet" href="static/css/help-styles.css" />
    <link rel="stylesheet" href="static/css/prism.css" />
    <link rel="stylesheet" href="static/css/foxholder-styles.css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="static/scripts/bootstrap.min.js"></script>
    <script src="static/scripts/prism.js"></script>
    <script src="static/css/foxholder.js"></script>
    <script src="static/scripts/script.js"></script>
    <script>
      (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

      ga('create', 'UA-66794691-3', 'auto');
      ga('send', 'pageview');

    </script>
  </head>
  
  <body>
  <div class="form-container-12">
              <h3>Add new announcement~</h3>
              
              <form method="post" action="TianjiaServlet">
                <input name="ann_title" type="text" placeholder="标题" required />
                <textarea name="message" placeholder="公告内容"> </textarea>
                <button type="submit">Submit</button>
              </form>
            </div>

  </body>
</html>
