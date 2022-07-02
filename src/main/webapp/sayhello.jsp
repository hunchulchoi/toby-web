<%@ page import="org.springframework.context.ApplicationContext" %>
<%@ page import="org.springframework.web.context.support.WebApplicationContextUtils" %>
<%@ page import="tobyweb.temp.HelloSpring" %><%--
  Created by IntelliJ IDEA.
  User: hunchulchoi
  Date: 2022/07/02
  Time: 8:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>Hello Spring mvc</title>
</head>
<body>

    <%
        ApplicationContext context = WebApplicationContextUtils.getWebApplicationContext(request.getSession().getServletContext());
        HelloSpring helloSpring = context.getBean(HelloSpring.class);

        out.println(helloSpring.sayHello("훈철"));
    %>
</body>
</html>
