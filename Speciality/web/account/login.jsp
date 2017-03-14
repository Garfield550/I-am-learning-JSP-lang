<%--
  Created by IntelliJ IDEA.
  User: garfi
  Date: 2/28/2017
  Time: 6:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="/include/jsp/base_path.jsp" %>
<% String title = "用户登录 - 软件工程系"; %>
<!doctype html>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title><%= title %></title>
    <base href="<%= basePath %>">
    <%--Include CSS--%>
    <%@ include file="/include/html/styles_link.html" %>
</head>
<body class="login-background">
    <%--Include head.html login.html--%>
    <%@ include file="/include/html/head.html" %>
    <%@ include file="/account/html/login.html" %>
</body>
    <%--Include JS--%>
    <%@ include file="/include/html/scripts.html" %>
</html>
