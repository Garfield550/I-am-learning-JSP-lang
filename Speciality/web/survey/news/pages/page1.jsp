<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<div class="row site-padding">
    <div class="columns large-8">
        <div class="card">
            <div class="card-divider">欢迎参加网上调查</div>
            <div class="card-section">
                <form method="post" action="/survey/news/index.jsp?page=2">
                    <div class="row">
                        <div class="columns medium-6">
                            <input type="text" name="surveyName" placeholder="请输入您的姓名">
                        </div>
                    </div>
                    <div class="row">
                        <div class="columns label-inline-block">
                            <span>性别：</span>
                            <label><input type="radio" name="sex" value="male" checked><span>男</span></label>
                            <label><input type="radio" name="sex" value="female"><span>女</span></label>
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