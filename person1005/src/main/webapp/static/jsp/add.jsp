<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/9/30
  Time: 13:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="/static/js/jquery-1.12.4.js"></script>
</head>
<body>
<center>
    <form method="post" action="/doadd">
    <table width="400px" border="0">
        <tr align="center">
            <td colspan="2" style="color: red">添加人员</td>
        </tr>
        <tr>
            <td align="center">姓名：</td>
            <td><input type="text" name="name" class="name"><span style="color: red">*</span></td>
        </tr>
        <tr>
            <td align="center">性别：</td>
            <td>
                <select name="sex" class="sex">
                    <option value="请选择">请选择</option>
                    <option value="男">男</option>
                    <option value="女">女</option>
                 </select><span style="color: red">*</span>
            </td>
        </tr>
        <tr>
            <td align="center">年龄：</td>
            <td><input type="text" name="age" class="age"><span style="color: red">*</span></td>
        </tr>
        <tr>
            <td align="center">等级：</td>
            <td>
                <select name="rank" class="rank">
                    <option value="请选择">请选择</option>
                    <option value="1">1级</option>
                    <option value="2">2级</option>
                    <option value="3">3级</option>
                    <option value="4">4级</option>
                    <option value="5">5级</option>
                </select><span style="color: red">*</span>
            </td>
        </tr>
        <tr>
            <td align="center">部门：</td>
            <td>
                <select name="department" class="department">
                    <option value="请选择">请选择</option>
                    <option value="开发部">开发部</option>
                    <option value="支持部">支持部</option>
                    <option value="工程质量部">工程质量部</option>
                </select><span style="color: red">*</span>
            </td>
        </tr>
        <tr align="center">
            <td colspan="2"><input type="submit" value="添加" class="add"></td>
        </tr>
    </table>
    </form>
</center>
<script>
    $(document).ready(function () {
        $("tr:even").css("background-color","aqua");
        $("tr:odd").css("background-color","chartreuse");
        $(".add").click(function () {
            var name=$(".name").val();
            var sex=$(".sex").val();
            var age=$(".age").val();
            var rank=$(".rank").val();
            var department=$(".department").val();
            if(name==""){
                alert("用户名不能为空")
                return false;
            }
            if(sex=="请选择"){
                alert("请选择性别")
                return false;
            }
            if(age==""){
                alert("年龄不能为空")
                return false;
            }
            if(rank=="请选择"){
                alert("请选择等级")
                return false;
            }
            if(department=="请选择"){
                alert("请选择部门")
                return false;
            }
        })
    })
</script>
</body>
</html>
