<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" %>
<%@ include file="/static/common/taglibs.jsp"%>
<html>
<head>
	<title>bootstrap</title>
	<link href="${ctx}/static/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <%@ include file="/static/include/common.jsp"%>
    <script src="${ctx}/static/bootstrap/js/bootstrap.min.js"></script>
</head>
<body style="background-color: #ccffff;">
	<div class="container">
        <h1 class="page-header">登录</h1>
        <form action="" method="post">
            <div class="row">
            <div class="form-group col-sm-3">
        <label for="user">账号</label>
        <input type="text" class="form-control" id="user" placeholder="请输入账号">
    	</div></div>
            <div class="row">
        <div class="form-group col-sm-3">
        <label for="Password1">密码</label>
        <input type="password" class="form-control" id="Password1" placeholder="请输入密码">
		</div></div>
            <div class="row" style="margin-left: 20px;"><input type="submit" class="btn btn-info btn-lg col-sm-1" value="登录">
    		</div><br/>
            <!-- <div class="row"><a class="btn btn-danger btn-lg col-sm-3" href="http://www.baidu.com">注册</a>
    		</div> -->
    	</form>
    </div>
</body>
</html>
<%-- <jsp:forward page="main/main.htmls"></jsp:forward> --%>