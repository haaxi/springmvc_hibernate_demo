<%@ page language='java' pageEncoding='UTF-8' contentType='text/html;charset=UTF-8' %>
<%@ include file='/static/common/taglibs.jsp'%>
<link rel="stylesheet" type="text/css" href="../styles/style.css" />
<%@ include file="/static/include/js/common-js.jsp" %>

<script type="text/javascript">
	function showMenu(op,number){
		$("div[id^=child_]").each(
			function(){
				$(this).hide();
				$(this).parent().removeClass("current");
			}	
		);
		$('#child_'+number).show();
		$('#menu_'+number).parent().parent().addClass("current");
	}
	function thirdMenu(number){
		var sub_sub=document.getElementById("third_"+number);
		if(sub_sub.style.display=='none'){
			sub_sub.style.display='block';
		}else{
			sub_sub.style.display='none';
		}
		
	}
	function go2Url(url,op) {
		$("a[id^=hchild_]").each(
				function(){
					$(this).parent(".sub").removeClass("active");
				}	
		);
		if(url!=''){
			window.parent.frames["mainFrame"].location.href = "${ctx}"+url+"${sfix}";
		}else{
			
		}
		$('#hchild_'+op).parent(".sub").addClass(" active");//.parent("active");
	}
	

</script>
    <body style="background:#fef7e5;">
	<div class="sidebar" style="width:110%\9;">
		<div class="bg_1"></div>
		<ul class="nav">
		<c:forEach var="data" items="${menuList}" varStatus="status">
		<c:if test="${data.parent_code == '-1' }">
			<li >
				<div class="tit"><a onclick="showMenu('menu_',${status.index})" id="menu_${status.index}"  class="text">${data.menu_name}</a></div>
				<div class="con" id="child_${status.index}" style="display:none;">
				<c:forEach var="child" items="${menuList}" varStatus="status">
					<c:if test="${data.menu_code == child.parent_code  && child.menu_url!=null && child.menu_url!=''}">
						<div class="sub">
						   <a href="javascript:void(0);" id="hchild_${status.index}" onclick="go2Url('${child.menu_url}',${status.index})" class="text2">${child.menu_name}&nbsp;
						    <c:forEach var="msg" items="${msgList}">
								      <c:if test="${child.menu_code==msg.menu_code}">
								      <font style="color:blue;" id="${msg.menu_code }">${msg.msgCount }</font>
								      </c:if>
							</c:forEach>
							</a>
						</div>
					</c:if>
					<c:if test="${data.menu_code == child.parent_code  && (child.menu_url==null || child.menu_url=='')}">
					    <div class="sub">
						   <a href="###" id="hchild_${status.index}" onclick="thirdMenu(${status.index})"  class="text2">${child.menu_name}</a>
						    <div class="sub_sub" id ="third_${status.index}" style="display:none;">
						   <c:forEach var="child3" items="${menuList}" varStatus="status">
								<c:if test="${child.menu_code == child3.parent_code && child3.menu_level=='3'}">
								   <a href="javascript:void(0);" id="hchild_${status.index}" onclick="go2Url('${child3.menu_url}',${status.index})" class="ss_text">${child3.menu_name}&nbsp;
								   <c:forEach var="msg" items="${msgList}">
								      <c:if test="${child3.menu_code==msg.menu_code}">
                                        <font style="color:blue;" id="${msg.menu_code }">${msg.msgCount }</font>								      
                                       </c:if>
							        </c:forEach>
								   </a>
								    
								</c:if>
						    </c:forEach>
						    </div>
						</div>
						    
					</c:if>
					
				</c:forEach>
				</div>
			</li>
		</c:if>
		</c:forEach>
	</ul>
</div>
</body>