<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<% String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
      <meta http-equiv="pragma" content="no-cache">
      <meta http-equiv="cache-control" content="no-cache">
      <meta http-equiv="expires" content="0">
      <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
      <meta http-equiv="description" content="This is my page">
      <base href="<%=basePath%>">
      <title>My JSP 'login_success.jsp' starting page</title>
  </head>
  
  <body>
    This is my JSP page. <br>
    <center>
         <h1>登陆操作</h1>
         <h2>登陆成功</h2>
         <a href="/logout">退出登录</a>
         <h3>welcome!!!!<font color = "red" ><%= request.getParameter("username") %></font></h3>
    </center>
  </body>
</html>
