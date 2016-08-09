<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@include file="/static/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/static/common/meta.jsp" %>
<title>main</title>
</head>
<frameset rows="90,*" cols="*" frameborder="1" border="0" framespacing="0">
  <frame src="${ctx}/main/top${sfix}" name="topFrame" scrolling="No" border="0px" noresize="noresize" id="topFrame" title="topFrame"/>
  <frameset id="menuSet" name="menuSet" rows="*" cols="13%,*" framespacing="0" frameborder="0" border="0px">
    <frame src="${ctx}/main/left${sfix}"  name="leftFrame" scrolling="auto" noresize="noresize" id="leftFrame" border="0px" title="leftFrame" />
    <frame src="" scrolling="auto" name="mainFrame" id="mainFrame" title="mainFrame"  />
  </frameset>
 </frameset>
<noframes>
<body>
</body>
</noframes>
</html>