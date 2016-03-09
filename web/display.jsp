<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="content-type" content="text/html" charset="utf-8"/>
    <title>result</title>
    <link href="style_index.css" rel="stylesheet" type="text/css"/>
    <%--<style>--%>
        <%--table {border-collapse: collapse;}--%>
        <%--td, th {border: 1px solid black;}--%>
    <%--</style>--%>
</head>
<body>

<form method="post" action="IndexServlet">
    <input type="submit" value="выход">
</form>

<table border="1">
    <tr>
        <th>дата</th>
        <th>время</th>
        <th>фамилия</th>
        <th>текст телеграммы</th>
        <th>термин</th>
    </tr>
    <c:forEach items="${requestScope.records}" var="result">
        <tr>
            <td>${result.date}</td>
            <td>${result.time}</td>
            <td>${result.name}</td>
            <td>${result.messageText}</td>
            <td>${result.newDateTime}</td>
        </tr>
    </c:forEach>
</table>
<br>
</body>
</html>
