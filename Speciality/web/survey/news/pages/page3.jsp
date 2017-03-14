<%@ page import="java.util.ArrayList" %>
<%@ page import="java.nio.charset.Charset" %><%--
  Created by IntelliJ IDEA.
  User: garfi
  Date: 3/8/2017
  Time: 8:26 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%--
    我再说一句，以下这些 JSP 代码实现方式都不是我想写的，是课本的垃圾代码，建议你们去用 Bean ，
    要不是我交作业交的急我就慢慢写了。
--%>
<%
    String[] news = new String[5];
    for (int i = 0; i < news.length; i++) {
        String parame = "news" + i;
        String getParame = request.getParameter(parame);
        if (getParame != null) {
            news[i] = new String(getParame.getBytes(Charset.forName("ISO-8859-1")), Charset.forName("UTF-8"));
            synchronized (application) {
                Integer count = (Integer)application.getAttribute(parame);
                if (count == null) {
                    count = 0;
                }
                count += 1;
                application.setAttribute(parame, count);
            }
        }
    }
%>
<div class="row site-padding">
    <div class="columns large-8">
        <div class="card">
            <div class="card-divider">
                <strong><%= session.getAttribute("surveyName") %></strong>
                <%= session.getAttribute("sex") %>您好，您感兴趣的新闻栏目如下：
            </div>
            <div class="card-section">
                <div class="row">
                    <div class="columns">
                        <ul>
                            <%
                                for (String s : news) {
                                    if (s != null) {
                                        out.print("<li>");
                                        out.print(s);
                                        out.print("</li>");
                                    }
                                }
                            %>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="columns large-4">
        <div class="card">
            <div class="card-divider">当前所有类型选择的人数</div>
            <div class="card-section">
                <div class="cow">
                    <div class="columns">
                        <ul>
                            <%
                                String[] newsName = {"国际时事", "国内时事", "体育新闻", "娱乐新闻", "社区新闻"};
                                for (int i = 0; i < news.length; i++) {
                                    Integer count = (Integer)application.getAttribute("news" + i);
                                    if (count == null) {
                                        count = 0;
                                    }
                                    out.println("<li>" + newsName[i] + "人数为：" + count + "</li>");
                                }
                            %>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>