<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
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
      <title>My JSP 'index.jsp' starting page</title>

      <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
  </head>
  
<body>
This is my JSP page. <br>
<center>
<h1>登陆操作!</h1>
</center>
<hr>

<form action="/login" method="post">
    <table border="1">
        <tr>
            <td colspan="2">用户登陆</td>
        </tr>
        <tr>
            <td>用户名:</td>
            <td><input type="text" name="username"></td>
        </tr>
        <tr>
            <td>登陆密码:</td>
            <td><input type="password" name="password"></td>
        </tr>
        <tr>
            <td colspan="2"><input type="reset" value="重置"></td>
            <td colspan="2"><input type="submit" value="登陆"></td>
        </tr>
    </table>
</form>
</body>

  <script type="text/javascript">
      var xmlHttp;
      function checkName(){
          var name = document.getElementById("username").value;
          if ("" == name.trim()){
              document.getElementById("message").innerHTML = "用户名不能为空!";
          }
          else {
              //如果非空校验通过,则调用自己定义的doAjax函数向Servlet发请求
              doAjax("CheckNameServlet?name=" + name);
          }
      }

      function doAjax(url){
          try {
              //创建向Servlet发送请求的XMLHttpRequest对象
              xmlHttp = new XMLHttpRequest();
          } catch (e) {
              alert(e.message);
          }
          //打开到url指定的Servlet的连接
          xmlHttp.open("GET", url, true);
          //发送请求
          xmlHttp.send(null);
          //设置回调函数
          xmlHttp.onreadystatechange = proResp;
      }

      function proResp(){
          //就绪状态为4
          if (xmlHttp.readyState == 4){
              //Http状态码为200
              if (xmlHttp.status == 200){
                  //xmlHttp.responseText接收到的,是out.print的值
                  var flag = xmlHttp.responseText;
                  if (flag.trim() == "true"){
                      document.getElementById("message").innerHTML = "用户名可以使用!";
                  }
                  else {
                      document.getElementById("message").innerHTML = "用户名已被使用!";
                  }
              }
              else if (xmlHttp.status == 404){
                  document.getElementById("message").innerHTML = "您请求的资源不存在!";
              }
              else {
                  document.getElementById("message").innerHTML = "服务器内部错误!";
              }
          }
      }

      String.prototype.trim = function() {
          var m = this.match(/^\s*(\S+(\s+\S+)*)\s*$/);
          return (m == null) ? "" : m[1];
      }
  </script>
</html>
