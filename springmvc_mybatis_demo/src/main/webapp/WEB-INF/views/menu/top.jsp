<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@include file="/static/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/static/common/meta.jsp" %>
<%@ include file="/static/include/common.jsp"%>
<title></title> <%-- 
<link rel="stylesheet" type="text/css" href="${ctx}/theme/dollyfinance/styles/style.css" /> --%>
 <!-- link href="../styles/top.css?1" rel="stylesheet" type="text/css" /-->
 <script language="javascript">
	function ifout() {
		if(confirm("是否要退出系统？")) {
			top.window.location.href="${ctx}/j_spring_security_logout";
		}
	}
	
	function goIndex() {
		parent.mainFrame.location.href = "${ctx}/theme/dollyfinance/index.jsp";
	}
	
	function openwin(){
		parent.mainFrame.location.href ='${ctx}/pub/index/editpassword${sfix}';
	}
	
	
</script>
</head>
<body>
<div class="header">
	<div class="logo_area">
		<a href="###" class="logo"></a>
		<span class="logo_2">&nbsp;</span>
	</div>
	<div style="width: 100%;margin-top:8px;" align="right">
	    <font color="#FFFFFF">用户名：</font><font color="#FFFFFF"></font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    <font color="#FFFFFF">姓名：</font><!-- /状态 --><font color="#FFFFFF"></font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    <font color="#FFFFFF">管理机构：</font><font color="#FFFFFF"></font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    <a href="#" onclick="openwin()" style = "color : #ffffff;margin-right: 15px;">修改密码</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="#" onclick="ifout()" style = "color : #ffffff;margin-right: 15px;">退出</a><!-- 
		<input type="button" id="logout" name="logout" onclick="ifout()" value="退出" /> -->
	</div>
</div>
</body>
</html>
