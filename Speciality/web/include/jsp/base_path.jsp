<%@ page import="com.graysoft.sdcit.Base" %>
<%--
  Created by IntelliJ IDEA.
  User: garfi
  Date: 2/28/2017
  Time: 1:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%
    /*
    String contextPath = request.getContextPath();
    String scheme = request.getScheme();
    String serverName = request.getServerName();
    int serverPort = request.getServerPort();
    String basePath = scheme + "://" + serverName + ":" + serverPort + contextPath + "/";
    */
    Base base = new Base();
    String basePath = base.getBasePath(request);
%>