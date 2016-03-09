<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <meta http-equiv="content-type" content="text/html" charset="utf-8"/>
    <title>autentification</title>
    <link href="style_index.css" rel="stylesheet" type="text/css"/>
</head>
<body>

<div class="main_input">
    <p>Для входа введите свои данные:</p>
    <br>
    <form action="AuthenticationServlet" method="post">
        <p>фамилия:
        <select name="name">
            <c:forEach items="${requestScope.users}" var="user">
                <option>${user.name}</option>
            </c:forEach>
        </select>
        </p>
        <p>
        пароль: <input type="password" name="pass" align="center" size="17"> <br>
        </p>
        <input type="submit" value="вход">
        <p class="footer">
            ver.0.8.4 beta
        </p>
    </form>
</div>

</body>
</html>
