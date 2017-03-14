<%--
  Created by IntelliJ IDEA.
  User: garfi
  Date: 3/7/2017
  Time: 8:18 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="/include/jsp/base_path.jsp" %>
<% String title = "问券调查 - 软件工程系"; %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title><%= title %></title>
    <base href="<%= basePath %>">
    <%--Include CSS--%>
    <%@ include file="/include/html/styles_link.html" %>
</head>
<body>
    <%@ include file="/include/html/head.html" %>
    <%
        /* Get link page*/
        String getPage = request.getParameter("page");
        /* If no choice got, set choice is 1 */
        if (getPage == null) getPage = "1";
        /* Parse string to int */
        int choice = Integer.parseInt(getPage);
        /* If user choice is... */
        if (choice == 1) {
    %>
    <%@ include file="/survey/news/pages/page1.jsp" %>
    <%
        }
        if (choice == 2) {
    %>
    <%@ include file="/survey/news/pages/page2.jsp" %>
    <%
        }
        if (choice == 3) {
    %>
    <%@ include file="/survey/news/pages/page3.jsp" %>
    <%
        }
    %>
    <%@ include file="/include/html/scripts.html" %>
</body>
</html>
