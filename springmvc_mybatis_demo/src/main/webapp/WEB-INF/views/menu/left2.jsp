﻿<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" %>
<%-- <%@ include file="/static/common/taglibs.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
    <title>管理</title>
    <%@ include file="/static/include/common.jsp"%>
    <%@ include file="/static/include/css/jquery-ztree-css.jsp"%>
    <%@ include file="/static/include/js/jquery-ztree-js.jsp"%>
    <style type="text/css">
    	li{  
    list-style: none;  
    margin-left: 18px;  
    display: none;  
    }  
	<!--去掉a标签默认的超链接样式-->  
	a:link {   
	    text-decoration:none;   
	    }   
	a:visited {   
	    color: #492318;  
	    text-decoration:none;   
	}   
	a:active {  
	    color: #492318;   
	    text-decoration:none;   
	    } 
    </style>
  </head>
<script type="text/javascript">
	/* function go2Url(event,treeId, node) {
		if(node && node.turl) {
			//$(window.parent.frames['mainFrame'].document).attr('href', ctx_ + node.turl + sfix_);
			if(node.mtype && '3' == node.mtype) {
				window.parent.frames["mainFrame"].location.href = node.turl;
			} else {
				window.parent.frames["mainFrame"].location.href = ctx_ + node.turl + sfix_;
			}
		}
	}

	var setting = {
		async : {
			enable : true,
			url : '${ctx}/theme/dollyfinance/menu/menudata${sfix}',
			cache: false
		},
		callback : {
			onClick : go2Url
		},
		data : {
			simpleData : {
				enable : true
				//rootPId: ""
			}
		},
		view : {
			autoCancelSelected : false,
			expandSpeed : ""
		}
	};
	var zTree;
	$(function() {
		$.fn.zTree.init($("#ztree"), setting);
		zTree = $.fn.zTree.getZTreeObj("ztree");
	}); 
	
	var setFlag = "0";
	function setLeft() {
		if("0" == setFlag){
			setFlag = "1";
			setImg.src = "${ctx}/theme/dollyfinance/images/suo_06.jpg";
			parent.menuSet.cols = "2%,*";
		} else {
			setFlag = "0";
			setImg.src = "${ctx}/theme/dollyfinance/images/suo_03.jpg";
			parent.menuSet.cols = "16%,*";
		}
	} */
    //利用JQuery，当页面加载时注册执行的函数  
    $(document).ready(function(){  
          
        //给a标签注册点击事件  
        $("a").click( function () {  
            //获取与a标签等级的所有li标签  
            var lis = $(this).nextAll("li");   
              
            //切换li标签的显示样式  
            lis.toggle();  
            });  
    });  
</script>
 
</head>
<body style="text-align: center;">

	<ul style="font-size: 18px;margin-top: 20px;"><a href="javascript:void(0)">主菜单1</a>  
        <li><a>子菜单</a></li>  
        <li>子菜单</li>  
        <li>子菜单</li>  
    </ul>  
    <ul style="font-size: 18px;margin-top: 20px;"><a href="javascript:void(0)">主菜单2</a>  
        <li>子菜单</li>  
        <li>子菜单</li>  
        <li>子菜单</li>  
    </ul> 
	<!-- <div class="zTreeDemoBackground left">
		<ul id="ztree" class="ztree"></ul>
	</div> -->
</body>
</html> --%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html><head>
<meta http-equiv=Content-Type content="text/html; charset=UTF-8">
<style>
BODY {
	MARGIN: 0px
}
P {
	MARGIN: 0px
}
BODY {
	COLOR: #000; BACKGROUND-COLOR: #fff
}
BODY {
	FONT-SIZE: 16px; LINE-HEIGHT: 150%; FONT-FAMILY: "Verdana", "Arial", "Helvetica", "sans-serif"
}
TABLE {
	FONT-SIZE: 16px; LINE-HEIGHT: 150%; FONT-FAMILY: "Verdana", "Arial", "Helvetica", "sans-serif"
}
INPUT {
	FONT-SIZE: 16px; FONT-FAMILY: "Verdana", "Arial", "Helvetica", "sans-serif"
}
SELECT {
	FONT-SIZE: 16px; FONT-FAMILY: "Verdana", "Arial", "Helvetica", "sans-serif"
}
TEXTAREA {
	FONT-SIZE: 16px; FONT-FAMILY: "Verdana", "Arial", "Helvetica", "sans-serif"
}
A:link {
	COLOR: #036; TEXT-DECORATION: none
}
A:visited {
	COLOR: #036; TEXT-DECORATION: none
}
A:hover {
	COLOR: #f60; TEXT-DECORATION: underline
}
A.menuChild:link {
	COLOR: #036; TEXT-DECORATION: none
}
A.menuChild:visited {
	COLOR: #036; TEXT-DECORATION: none
}
A.menuChild:hover {
	COLOR: #f60; TEXT-DECORATION: underline
}
A.menuParent:link {
	COLOR: #000; TEXT-DECORATION: none
}
A.menuParent:visited {
	COLOR: #000; TEXT-DECORATION: none
}
A.menuParent:hover {
	COLOR: #f60; TEXT-DECORATION: none
}
TABLE.position {
	WIDTH: 100%
}
TR.position {
	HEIGHT: 25px; BACKGROUND-COLOR: #f4f7fc
}
TD.position {
	BORDER-RIGHT: #adceff 1px solid; PADDING-LEFT: 20px; BORDER-BOTTOM: #adceff 1px solid
}
TABLE.listTable {
	WIDTH: 98%; BACKGROUND-COLOR: #b1ceee
}
TR.listHeaderTr {
	FONT-WEIGHT: bold; HEIGHT: 25px; BACKGROUND-COLOR: #ebf4fd; TEXT-ALIGN: center
}
TR.listTr {
	HEIGHT: 25px; BACKGROUND-COLOR: #fff; TEXT-ALIGN: center
}
TR.listAlternatingTr {
	HEIGHT: 25px; BACKGROUND-COLOR: #fffdf0; TEXT-ALIGN: center
}
TR.listFooterTr {
	HEIGHT: 30px; BACKGROUND-COLOR: #ebf4fd; TEXT-ALIGN: center
}
TABLE.editTable {
	WIDTH: 98%; BACKGROUND-COLOR: #b1ceee
}
TR.editHeaderTr {
	HEIGHT: 25px; BACKGROUND-COLOR: #ebf4fd
}
TD.editHeaderTd {
	PADDING-LEFT: 50px; FONT-WEIGHT: bold
}
TR.editTr {
	HEIGHT: 30px
}
TD.editLeftTd {
	WIDTH: 150px; BACKGROUND-COLOR: #fffdf0; TEXT-ALIGN: center
}
TD.editRightTd {
	PADDING-LEFT: 10px; BACKGROUND-COLOR: #fff
}
TR.editFooterTr {
	HEIGHT: 40px; BACKGROUND-COLOR: #ebf4fd
}
TD.editFooterTd {
	PADDING-LEFT: 150px
}

</style>
<SCRIPT language=javascript>
	function expand(el)
	{
		childObj = document.getElementById("child" + el);

		if (childObj.style.display == 'none')
		{
			childObj.style.display = 'block';
		}
		else
		{
			childObj.style.display = 'none';
		}
		return;
	}
</SCRIPT>
</head>
<BODY>
<TABLE height="100%" cellSpacing=0 cellPadding=0 width=170 
background=/jscss/demoimg/201108/menu_bg.jpg border=0>
  <TR>
    <TD vAlign=top align=middle>
      <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
        
        <TR>
          <TD height=10></TD></TR></TABLE>
      <TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
        
        <TR height=22>
          <TD style="PADDING-LEFT: 30px" background=/jscss/demoimg/201108/menu_bt.jpg><A 
            class=menuParent onclick=expand(1) 
            href="javascript:void(0);">关于我们</A></TD></TR>
        <TR height=4>
          <TD></TD></TR></TABLE>
      <TABLE id=child1 style="DISPLAY: none" cellSpacing=0 cellPadding=0 
      width=150 border=0>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="/jscss/demoimg/201108/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>公司简介</A></TD></TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="/jscss/demoimg/201108/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>荣誉资质</A></TD></TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="/jscss/demoimg/201108/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>分类管理</A></TD></TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="/jscss/demoimg/201108/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>子类管理</A></TD></TR>
        <TR height=4>
          <TD colSpan=2></TD></TR></TABLE>
      <TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
        <TR height=22>
          <TD style="PADDING-LEFT: 30px" background=/jscss/demoimg/201108/menu_bt.jpg><A 
            class=menuParent onclick=expand(2) 
            href="javascript:void(0);">新闻中心</A></TD></TR>
        <TR height=4>
          <TD></TD></TR></TABLE>
      <TABLE id=child2 style="DISPLAY: none" cellSpacing=0 cellPadding=0 
      width=150 border=0>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="/jscss/demoimg/201108/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>公司新闻</A></TD></TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="/jscss/demoimg/201108/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>分类管理</A></TD></TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="/jscss/demoimg/201108/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>子类管理</A></TD></TR>
        <TR height=4>
          <TD colSpan=2></TD></TR></TABLE>
      <TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
        <TR height=22>
          <TD style="PADDING-LEFT: 30px" background=/jscss/demoimg/201108/menu_bt.jpg><A 
            class=menuParent onclick=expand(3) 
            href="javascript:void(0);">产品中心</A></TD></TR>
        <TR height=4>
          <TD></TD></TR></TABLE>
      <TABLE id=child3 style="DISPLAY: none" cellSpacing=0 cellPadding=0 
      width=150 border=0>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="/jscss/demoimg/201108/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>产品展示</A></TD></TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="/jscss/demoimg/201108/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>最新产品</A></TD></TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="/jscss/demoimg/201108/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>分类管理</A></TD></TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="/jscss/demoimg/201108/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>子类管理</A></TD></TR>
        <TR height=4>
          <TD colSpan=2></TD></TR></TABLE>
      <TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
        <TR height=22>
          <TD style="PADDING-LEFT: 30px" background=/jscss/demoimg/201108/menu_bt.jpg><A 
            class=menuParent onclick=expand(4) 
            href="javascript:void(0);">客户服务</A></TD></TR>
        <TR height=4>
          <TD></TD></TR></TABLE>
      <TABLE id=child4 style="DISPLAY: none" cellSpacing=0 cellPadding=0 
      width=150 border=0>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="/jscss/demoimg/201108/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>客户服务</A></TD></TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="/jscss/demoimg/201108/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>分类管理</A></TD></TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="/jscss/demoimg/201108/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>子类管理</A></TD></TR>
        <TR height=4>
          <TD colSpan=2></TD></TR></TABLE>
      <TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
        <TR height=22>
          <TD style="PADDING-LEFT: 30px" background=/jscss/demoimg/201108/menu_bt.jpg><A 
            class=menuParent onclick=expand(5) 
            href="javascript:void(0);">经典案例</A></TD></TR>
        <TR height=4>
          <TD></TD></TR></TABLE>
      <TABLE id=child5 style="DISPLAY: none" cellSpacing=0 cellPadding=0 
      width=150 border=0>
        
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="/jscss/demoimg/201108/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>分类管理</A></TD></TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="/jscss/demoimg/201108/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>子类管理</A></TD></TR>
        <TR height=4>
          <TD colSpan=2></TD></TR></TABLE>
      <TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
        
        <TR height=22>
          <TD style="PADDING-LEFT: 30px" background=/jscss/demoimg/201108/menu_bt.jpg><A 
            class=menuParent onclick=expand(6) 
            href="javascript:void(0);">高级管理</A></TD></TR>
        <TR height=4>
          <TD></TD></TR></TABLE>
      <TABLE id=child6 style="DISPLAY: none" cellSpacing=0 cellPadding=0 
      width=150 border=0>
        
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="/jscss/demoimg/201108/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>广告管理</A></TD></TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="/jscss/demoimg/201108/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>访问统计</A></TD></TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="/jscss/demoimg/201108/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>邮件发送设置</A></TD></TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="/jscss/demoimg/201108/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>联系部门</A></TD></TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="/jscss/demoimg/201108/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>用户留言</A></TD></TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="/jscss/demoimg/201108/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>招聘职位</A></TD></TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="/jscss/demoimg/201108/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>应聘人员</A></TD></TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="/jscss/demoimg/201108/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>留言簿</A></TD></TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="/jscss/demoimg/201108/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>产品订购</A></TD></TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="/jscss/demoimg/201108/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>链接管理</A></TD></TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="/jscss/demoimg/201108/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>文件管理</A></TD></TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="/jscss/demoimg/201108/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>信息转移</A></TD></TR>
        <TR height=4>
          <TD colSpan=2></TD></TR></TABLE>
      <TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
        
        <TR height=22>
          <TD style="PADDING-LEFT: 30px" background=/jscss/demoimg/201108/menu_bt.jpg><A 
            class=menuParent onclick=expand(7) 
            href="javascript:void(0);">系统管理</A></TD></TR>
        <TR height=4>
          <TD></TD></TR></TABLE>
      <TABLE id=child7 style="DISPLAY: none" cellSpacing=0 cellPadding=0 
      width=150 border=0>
        
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="/jscss/demoimg/201108/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>基本设置</A></TD></TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="/jscss/demoimg/201108/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>样式管理</A></TD></TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="/jscss/demoimg/201108/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>栏目管理</A></TD></TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="/jscss/demoimg/201108/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>功能管理</A></TD></TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="/jscss/demoimg/201108/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>菜单管理</A></TD></TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="/jscss/demoimg/201108/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>首页设置</A></TD></TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="/jscss/demoimg/201108/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>管理员列表</A></TD></TR>
        <TR height=4>
          <TD colSpan=2></TD></TR></TABLE>
      <TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
        
        <TR height=22>
          <TD style="PADDING-LEFT: 30px" background=/jscss/demoimg/201108/menu_bt.jpg><A 
            class=menuParent onclick=expand(0) 
            href="javascript:void(0);">个人管理</A></TD></TR>
        <TR height=4>
          <TD></TD></TR></TABLE>
      <TABLE id=child0 style="DISPLAY: none" cellSpacing=0 cellPadding=0 
      width=150 border=0>
        
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="/jscss/demoimg/201108/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="#" 
            target=main>修改口令</A></TD></TR>
        <TR height=20>
          <TD align=middle width=30>&nbsp;&nbsp;&nbsp;&nbsp;</TD>
          <TD>&nbsp;&nbsp;&nbsp;&nbsp;<A class=menuChild 
            onclick="if (confirm('确定要退出吗？')) return true; else return false;" 
            href="http://www.codefans.net" 
            target=_top>退出系统</A></TD></TR></TABLE></TD>
    <TD width=1 bgColor=#d1e6f7></TD></TR></TABLE></BODY></html>
