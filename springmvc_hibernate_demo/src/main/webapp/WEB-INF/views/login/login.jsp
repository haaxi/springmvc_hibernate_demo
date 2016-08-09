<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>  
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 

<%  
    String path = request.getContextPath();  
    String basePath = request.getScheme() + "://"  
            + request.getServerName() + ":" + request.getServerPort()  
            + path + "/";  
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login</title>
<script type="text/javascript">
		checkLogin(){
			
		}
</script>
</head>
<body>
	<div>${sessionScope.SPRING_SECURITY_LAST_EXCEPTION.message}</div>
	<%-- <p style="color: red"><spring:message code="ConcurrentSessionControlStrategy.exceededAllowed"></spring:message></p> --%>
	<form:form action="${pageContext.request.contextPath}/j_spring_security_check" modelAttribute="acctUser" method="post">
		<form:errors path="*" cssStyle="color:red;"/>
		<br/>
		用户：<input type="text" name="nickName" value=""/>
		<br/>
		密码：<input type="password" name="nickPassword" />
		<br/>
		<input type="checkbox" name="_spring_security_remember_me" />两周之内不必登陆<br />
		<button type="submit" onclick="checkLogin();" value="登录" style="width: 80px;height: 30px">登录</button>
		<button type="reset" value="重置" style="width: 80px;height: 30px">重置</button>
	</form:form>
</body>
</html>