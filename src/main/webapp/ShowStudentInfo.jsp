<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: immin
  Date: 3/9/64
  Time: 2:40 หลังเที่ยง
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %><html>
<head>
    <meta charset="utf-8" />
    <meta charset="tis-620" />
    <title>New Student Info</title>
</head>
<body>
    <H2>New Student Info </H2> <hr>
        Student Id :${requestScope.student.id} <br>
        Student Name : ${requestScope.student.name}<br>
        Gpax : ${requestScope.student.gpax} <br>
    <hr>
    <a href="index.jsp"><button>[ OK ]</button></a> <br>
    <c:forEach begin="1" end="12" varStatus="vs">
        2 x ${vs.count} = ${vs.count*2}<br>
    </c:forEach>

</body>
</html>
