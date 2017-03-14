<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="include.jsp" %>
<div class="row site-padding">
    <div class="columns large-8">
        <div class="card">
            <div class="card-divider">
                <strong><%= _surveyName %></strong>
                <%= _sex %>您好，请继续完成本次问卷调查
            </div>
            <div class="card-section">
                <form method="post" action="/survey/news/index.jsp?page=3">
                    <div class="row">
                        <div class="columns">
                            <p>请选择您感兴趣的新闻内容（多选）：</p>
                            <%--
                                我说一句，以下这些表单代码实现方式都不是我想写的，是课本的垃圾代码，建议你们去用 Bean ，
                                要不是我交作业交的急我就慢慢写了。
                            --%>
                            <label>
                                <input type="checkbox" name="news0" value="国际时事">
                                国际时事
                            </label>
                            <label>
                                <input type="checkbox" name="news1" value="国内时事">
                                国内时事
                            </label>
                            <label>
                                <input type="checkbox" name="news2" value="体育新闻">
                                体育新闻
                            </label>
                            <label>
                                <input type="checkbox" name="news3" value="娱乐新闻">
                                娱乐新闻
                            </label>
                            <label>
                                <input type="checkbox" name="news4" value="社区新闻">
                                社区新闻
                            </label>
                        </div>
                    </div>
                    <div>
                        <div>
                            <input class="button" type="submit" value="下一步">
                            <input class="button" type="reset" value="重置">
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>