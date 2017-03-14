<%@ page import="com.graysoft.sdcit.Base" %>
<%--
  Created by IntelliJ IDEA.
  User: garfi
  Date: 3/8/2017
  Time: 8:31 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%
    Base _baseSurveyNews = new Base();
    String _surveyName = _baseSurveyNews.formatParamBytes(request, "surveyName", "ISO-8859-1", "UTF-8");
    String _sex = request.getParameter("sex");
    if (_sex.equals("male")) {
        _sex = "先生";
    } else {
        _sex = "女士";
    }
    session.setAttribute("surveyName", _surveyName);
    session.setAttribute("sex", _sex);
%>
