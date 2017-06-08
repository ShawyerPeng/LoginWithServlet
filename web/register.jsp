<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/register" method="post">
    <table border="1">
        <tr>
            <td colspan="2">用户登陆</td>
        </tr>
        <tr>
            <td>用户名:</td>
            <td><input type="text" name="reg_username"></td>
        </tr>
        <tr>
            <td>登陆密码:</td>
            <td><input type="text" name="reg_password"></td>
        </tr>
        <tr>
            <td colspan="2"><input type="reset" value = "重置"></td>
            <td colspan="2"><input type="submit" value = "注册"></td>
        </tr>
    </table>
</form>
</body>
</html>
