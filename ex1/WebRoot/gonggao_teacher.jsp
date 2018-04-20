<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  
       <title>Cross-browser CSS gradient buttons</title>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="description" content="" />
        <meta name="keywords" content="" />
        <meta name="author" content="" />
        <link rel="shortcut icon" type="image/x-icon" href="/favicon.ico" /> 
		<link rel="stylesheet" type="text/css" href="style.css" />
		
        <link rel="stylesheet" type="text/css" href="http://www.cssmoban.com/statics/css/code-demo.css" />
		
  <!-- 	以上都是button的css配置 -->
    <base href="<%=basePath%>">
    
    <title>My JSP 'Gonggao_teacher.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<script type="text/javascript" >
function reloadPage()
{
window.location.reload();
}

function showUser()
{
// document.getElementById("txtHint").innerHTML="";
 
    if (window.XMLHttpRequest)
    {
           // IE7+, Firefox, Chrome, Opera, Safari 浏览器执行代码
           xmlhttp=new XMLHttpRequest();
     }
     else
     {
           // IE6, IE5 浏览器执行代码
           xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
     }
     xmlhttp.onreadystatechange=function()
     {
          if (xmlhttp.readyState==4 && xmlhttp.status==200)
          {
                document.getElementById("txtHint").innerHTML=xmlhttp.responseText;
          }
     }
     xmlhttp.open("GET","getuser.php",true);
     xmlhttp.send();
}
</script>

  </head>
  
  <body>
  

<h3>公告</h3>
 <a href="add_Anno.jsp" class="button button-black"><span>添加公告</span></a>
 <!-- <button id="add" value="add" type="submit" onclick="location.href='addMessage.html'"> 添加公告  </button>
   -->

<hr/>
<a href="readAnno.jsp" class="button button-black"><span>刷新显示</span></a>
<br />
<div id="txtHint">公告信息将在此处列出 ...</div>

  </body>
</html>
