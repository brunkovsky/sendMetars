<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <meta http-equiv="content-type" content="text/html" charset="utf-8"/>
    <title>index</title>
    <link href="style_index.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <form method="post" action="Servlet" name="regular">
        <table cellspacing="0" cellpadding="0" width="100%" border="0">
            <tr>
                <td>
                    <input type="text" id="name">
                    <script type="text/javascript">
                        var a = document.getElementById("name");
                        a.value = new Date();
                    </script>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
