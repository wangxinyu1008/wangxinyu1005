<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/9/30
  Time: 12:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <script src="/static/js/jquery-1.12.4.js"></script>
</head>
<body>
<center>
<table border="1px" width="800px">
    <tr><td colspan="7">人员列表</td></tr>
    <tr style="text-align: center" id="shou">
        <td>编号</td>
        <td>姓名</td>
        <td>性别</td>
        <td>年龄</td>
        <td>等级</td>
        <td>部门</td>
        <td>操作</td>
    </tr>
    <c:if test="${persons.size()>0}">
        <c:forEach items="${persons}" var="item">
            <tr style="text-align: center" class="bian">
                <td>${item.id}</td>
                <td>${item.name}</td>
                <td>${item.sex}</td>
                <td>${item.age}</td>
                <td>
                    <c:if test="${item.rank==1}">
                        <a>1级</a>
                    </c:if>
                    <c:if test="${item.rank==2}">
                        <a>2级</a>
                    </c:if>
                    <c:if test="${item.rank==3}">
                        <a>3级</a>
                    </c:if>
                    <c:if test="${item.rank==4}">
                        <a>4级</a>
                    </c:if>
                    <c:if test="${item.rank==5}">
                        <a>5级</a>
                    </c:if>
                </td>
                <td>${item.department}</td>
                <td><a href="javascript:void(0)" onclick="del(${item.id})">删除</a></td>
            </tr>
        </c:forEach>
    </c:if>
</table>
<form action="/add" method="post">
   <input type="submit" value="添加人员">
</form>
</center>
<script>
    $(document).ready(function () {
        $("tr:even").css("background-color","aqua");
        $("tr:odd").css("background-color","chartreuse");
    })
    function del(id) {
        location.href="/del?id="+id;
    }
</script>
</body>
</html>
