<%@ page import="sit.int202.simpleweb.models.Student" %>
<%@ page import="java.util.Collection" %><%--
  Created by IntelliJ IDEA.
  User: immin
  Date: 27/8/64
  Time: 4:21 หลังเที่ยง
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student List</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <p class="h2">Student List::</p>
    <div class="row">
        <%
            Collection<Student> students = (Collection<Student>) request.getAttribute("students");
            for(Student s : students) {
        %>
        <div class="col-2 p-1 m-2 border border-secondary">
            <div>Student Id: <%=s.getId()%></div>
            <div>Name: <%=s.getName()%></div>
            <div>Gpax: <%=s.getGpax()%></div>
        </div>
        <%}%>
    </div>
</div>

</body>
</html>
