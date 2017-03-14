<%--
  Created by IntelliJ IDEA.
  User: garfi
  Date: 2/21/2017
  Time: 10:45 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="../include/jsp/base_path.jsp" %>
<%
    Base _base = new Base();
    // String tempname = request.getParameter("username");
    // String username = new String(tempname.getBytes("ISO-8859-1"),"UTF-8");
    String username = _base.formatParamBytes(request, "username", "ISO-8859-1", "UTF-8");
    String password = request.getParameter("password");
    String keepLogin = request.getParameter("keepLogin");
%>
<!doctype html>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title><%= username %> - Welcome!</title>
    <base href="<%= basePath %>">
    <%--Include CSS--%>
    <%@ include file="/include/html/styles_link.html" %>
</head>
<body>
<div>
    <%--Include head.html--%>
    <%@ include file="/include/html/head.html" %>
    <p>
        Hello, <%= username %>!
    </p>
    <p>
        Welcome to my website, your input password is: <%= password %>, you checked: <%= keepLogin %>.
    </p>
</div>
</body>
    <%--Include JS--%>
    <%@ include file="/include/html/scripts.html" %>
</html>
