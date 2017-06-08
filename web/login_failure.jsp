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
      <title>My JSP 'login_failure.jsp' starting page</title>
  </head>
  
  <body>
      This is my JSP page. <br>
      <center>
          <h1>登陆失败!!!!!!</h1>
          <h2><a href="login.jsp">点击重新登陆!!!!!!!!</a></h2>
      </center>
  </body>
</html>
