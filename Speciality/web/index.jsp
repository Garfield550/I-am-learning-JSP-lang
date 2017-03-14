<%--
  Created by IntelliJ IDEA.
  User: garfi
  Date: 2/28/2017
  Time: 10:12 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<% String title = "软件工程系"; %>
<%@ include file="/include/jsp/base_path.jsp" %>
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
<body>
<%--Include head.html--%>
<%@ include file="/include/html/head.html" %>
<%
    /* Get link choice */
    String getChoice = request.getParameter("choice");
    /* If no choice got, set choice is 1 */
    if (getChoice == null) getChoice = "1";
    /* Parse string to int */
    int choice = Integer.parseInt(getChoice);
    /* If user choice is... */
    if (choice == 1) {
%>
        <%@ include file="/html/welcome.html" %>
<%
    }
    if (choice == 2) {
%>
        <%@ include file="/html/special.html" %>
<%
    }
    if (choice == 3) {
%>
        <%@ include file="/html/contact.html" %>
<%
    }
    if (choice == 4) {
%>
        <%@ include file="/html/information.html" %>
<%
    }
%>
</body>
<%--Include JS--%>
<%@ include file="/include/html/scripts.html" %>
</html>
