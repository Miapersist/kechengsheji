<%@ page language="java" import="java.util.*"  pageEncoding="UTF-8"%>
<%@page import="gonggao.AnnoDao,gonggao.Anno,cc.DbUtil"
 %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'readAnno.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<link rel="stylesheet" type="text/css" href="Table.css"/>


  </head>
  
  <body>
     <table id="table-3"> 
     <tr>
     <td>ann_id</td>
     <td>ann_title</td>
     <td>message</td>
     <td>ann_date</td>
     <td>teacher_users_id</td>
     </tr>
     
     <%
     AnnoDao dao = new AnnoDao();
     List<Anno> list= dao.readFirstAnno();
     for(Anno anno:list){
     %>
     <tr>
     <td><%= anno.getAnn_id()%></td>
     <td><%= anno.getAnn_title() %></td>
     <td><%= anno.getMessage()   %></td>
     <td><%= anno.getAnn_time()%></td>
     <td><%= anno.getTeacher_users_id() %></td>
     </tr>
     <%}
     %>
     
     </table>
     
     
  </body>
</html>
