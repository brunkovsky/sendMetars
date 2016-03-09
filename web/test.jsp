<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <meta http-equiv="content-type" content="text/html" charset="utf-8"/>
    <title>test</title>
    <style type="text/css">
        INPUT[type="text"] {
            background: #F0F0A0;
        }
        SELECT {
            background: #F0F0A0;
        }
        .colortext {
            color: #000080;
            font-size: 18px;
        }
        .knopka {
            background: #4040ff none repeat scroll 0 0;
            border-color: #0000f0 #000000 #000000 #0000f0;
            border-style: solid;
            border-width: 3px;
            color: #f0f0f0;
            font-weight: bold;
            letter-spacing: 0.1em;
            padding: 1px;
        }
        h1, h2, h3, h4, h5, h6 {
            color: #000080;
            font-family: fantasy;
            font-weight: bold;
            text-align: right;
        }
    </style>
        <link href="style_index.css" rel="stylesheet" type="text/css"/>
</head>

<body>
${requestScope.userName}

<form method="post" action="IndexServlet">
    <input type="submit" value="выход">
</form>

<br>

<c:set var="myName" value="Начальник"/>
<c:if test="${requestScope.userName != myName}">
    <form method="post" action="Servlet" name="regular">
        <input type="text" name="name" value="${requestScope.userName}" hidden>
        <table cellspacing="0" cellpadding="0" width="100%" border="0" bgcolor="#75DFF9">
            <tbody>
            <tr>
                <td><br></td>
            </tr>
            <tr align="right">
                <td colspan="2">
                    <h3>Відправлення регулярного повідомлення</h3>
                </td>
            </tr>
            <tr>
                <td nowrap="" align="left"><b>виберiть тип повiдомлення:</b></td>
                <td align="left"><b>введiть термiн</b> (замiсть $S):</td>
            </tr>
            <tr>
                <td>
                    <script language="javascript">
                        function settype(v) {
                            v = document.regular.Header.value;
                            document.regular.MsgTxt.value = v;
                        }
                    </script>
                    <select onchange="javascript:settype()" name="Header">
                        <option value=""></option>
                        <option value="022 770292/
САУР10 КИХЕ $s
METAR UKOH text=
">METAR часовой
                        </option>
                        <option value="022 770292/
САУР10 КИХЕ $s РРА
METAR UKOH text=
">METAR часовой опоздавший
                        </option>
                        <option value="022 770292/
САУР10 КИХЕ $s ЦЦА
METAR COR UKOH text=
">METAR часовой исправление
                        </option>
                        <option value="022 870292/
САУР40 КИХЕ $s
METAR UKOH text=
">METAR получасовой
                        </option>
                        <option value="022 870292/
САУР40 КИХЕ $s РРА
METAR UKOH text=
">METAR получасовой опоздавший
                        </option>
                        <option value="022 870292/
САУР40 КИХЕ $s  ЦЦА
METAR COR UKOH text=
">METAR получасовой исправление
                        </option>
                        <option value="022 470292/
СПУР10 КИХЕ $s
SPECI UKOH text=
">SPECI
                        </option>
                        <option value="022 470292/
СПУР10 КИХЕ $s ЦЦА
SPECI COR UKOH text=
">SPECI исправление
                        </option>
                        <option value="025 570292/
ФЦУР10 КИХЕ $s
TAF UKOH text=
">Прогноз ФЦ
                        </option>
                        <option value="025 570292/
ФЦУР10 КИХЕ $s РРА
TAF UKOH text=
">Прогноз ФЦ опоздавший
                        </option>
                        <option value="025 570292/
ФЦУР10 КИХЕ $s ЦЦА
TAF COR UKOH text=
">Прогноз ФЦ исправление
                        </option>
                        <option value="025 570292/
ФЦУР10 КИХЕ $s ААА
TAF AMD UKOH text=
">Прогноз ФЦ корректив
                        </option>
                        <option value="010 7000/
ААКИЕВ КИХЕ 020915
текст=
">Служебный Гидромета
                        </option>
                        <option value="010 7007/
ААКИГМ КИХЕ 020915
текст=
">Служебный Кульбиды
                        </option>
                        <option value="ЩЭСМЮ текст=
">Синоптика основной срок
                        </option>
                        <option value="ЩЭСИД текст=
">Синоптика промежуточный срок
                        </option>
                        <option value="ЩЭРЕИ текст=
">Вода1
                        </option>
                        <option value="ЩЭРЕА текст=
">Вода2
                        </option>
                        <option value="ЩЭСГИ текст=
">Снег1
                        </option>
                        <option value="ЩЭСГА текст=
">Снег2
                        </option>
                        <option value="
333
WWUR63 UKOH 020915
STORM
WAREP Text=
">Шторм начало действия
                        </option>
                        <option value="
333
WOUR63 UKOH 020915
AVIA
WAREP Text=
">Шторм об окончании явления
                        </option>
                        <option value="ЩЭОЯА текст=
">Шторм начало с морских станций
                        </option>
                        <option value="ЩЭОЯУ текст=
">Шторм об окончании явления с морских станций
                        </option>
                        <option value="025 6666/
ЗДУР42 КИХЕ 020915
AADD 33862 text=
AADD 33869 text=
AADD 33877 text=
AADD 33902 text=
AADD 33907 text=
AADD 33910 text=
AADD 33915 text=
AADD 33917 text=
AADD 33961 text=
">Агродекада и запасы
                        </option>
                        <option value="025 6666/
ЗЕУР42 КИХЕ 020915
AAEE 33862 text=
AAEE 33869 text=
AAEE 33877 text=
AAEE 33902 text=
AAEE 33907 text=
AAEE 33910 text=
AAEE 33915 text=
AAEE 33917 text=
AAEE 33961 text=
">Агроежедневные
                        </option>
                        <option value="ЩЭГОЛ текст=
">Гидрологический шторм
                        </option>
                        <option value="ЩЭШТЯ текст=
">Агрошторм
                        </option>
                        <option value="ЩЭГМЦ текст=
">Кодированный областной прогноз
                        </option>
                        <option value="ЩЭМРА текст=
">Данные моря
                        </option>
                        <option value="ЩЭРБХ текст=
">Данные РХОБ
                        </option>
                        <option value="ЩЭКЛД текст=
">Климат
                        </option>
                        <option value="010 6666/
ВДУР50 КИХЕ 020915
Донесения СГЯ
Текст=
">Донесения про СГЯ РИП НЯ
                        </option>
                        <option value="025 7777/
ВНУР50 КИХЕ 020915
Текст=
">Шторм-предупреждение открытым текстом
                        </option>
                    </select>
                </td>
                <td nowrap="">
                    <input type="text" id="name" size="10" name="newDateTime" >
                    <script language="javascript" type="text/javascript">
                        var d = new Date();
                        myDay = d.toString().substring(8, 10);
                        if (d.getHours() < 10) {
                            myHours = "0" + d.getHours();
                        } else {
                            myHours = d.getHours();
                        }
                        if (d.getMinutes() < 10) {
                            myMinutes = "0" + d.getMinutes();
                        } else {
                            myMinutes = d.getMinutes();
                        }
//                        document.write(myDay + myHours + myMinutes);
                        var a = document.getElementById("name");
                        a.value = myDay + myHours + myMinutes;
                    </script>
                </td>
            </tr>

            <tr>
                <td><br></td>
            </tr>
            </tbody>
        </table>

        <table cellspacing="0" cellpadding="0" width="100%" border="0" bgcolor="#75DFF9">
            <tbody>
            <tr>
                <td nowrap="">введiть УВАЖНО повiдомлення:</td>
            </tr>

            <tr>
                <td valign="TOP" align="left">
                    <textarea cols="70" rows="10" name="MsgTxt"></textarea>
                </td>
            </tr>

            <tr>
                <td><br></td>
            </tr>

            <tr>
                <td valign="TOP" align="left">
                    <input type="submit" value=" Вiдправити " class="knopka">
                    <input type="reset" value="  Зтерти  " class="knopka">
                </td>
            </tr>
            </tbody>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td><br></td>
            </tr>
        </table>
    </form>
</c:if>

<c:set var="myName" value="Начальник"/>
<c:if test="${requestScope.userName eq myName}">
    <form method="post" action="ReadServlet">
        <input type="submit" value="результаты">
    </form>
</c:if>

</body>
</html>
