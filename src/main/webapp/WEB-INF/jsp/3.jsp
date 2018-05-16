<%--
  Created by IntelliJ IDEA.
  User: Eatin
  Date: 2018/5/15
  Time: 10:56
  To change this template use File | Settings | File Templates.
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>


<body>
    <h1>测试页面</h1>
    <form enctype="multipart/form-data">
        <div class="file-loading">
            <input id="kv-explorer" type="file" multiple>
        </div>
        <br>
        <div class="file-loading">
            <input id="file-0a" class="file" type="file" multiple data-min-file-count="1">
        </div>
        <br>
        <button type="submit" class="btn btn-primary">Submit</button>
        <button type="reset" class="btn btn-default">Reset</button>
    </form>
</body>
</html>
