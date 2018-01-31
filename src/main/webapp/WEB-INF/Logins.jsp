<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="width:100%;height:100%;overflow:hidden">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录页面</title>

<link rel="stylesheet" type="text/css" href="easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="easyui/themes/icon.css">
<link rel="stylesheet" type="text/css" href="css/main.css">

<script type="text/javascript" src="easyui/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>

<script type="text/javascript">

$(function(){ 
	$('#btn1').bind('click', function(){
	    document.getElementById('LOGINNAME1').value="";
	    document.getElementById('PASSWORD1').value="";
	    $.messager.alert("提示消息", "用户名或密码不能为空！", "info");
	    return;
	});
});

function clearAll123(){
	document.getElementById('LOGINNAME1').value="";
	document.getElementById('PASSWORD1').value="";
	$.messager.alert("提示消息", "用户名或密码不能为空！", "info");
	return;
}

$("#PASSWORD").keydown(function(event){
	if(event.keyCode==13){
		$("#btnLogin").click();
	}
});

$("#btnLogin").click(function(){
	var LOGINNAME = $("#LOGINNAME1").val();
	var PASSWORD = $("#PASSWORD1").val();
	if(LOGINNAME.length==0 || LOGINNAME.length==0){
		document.getElementById('LOGINNAME1').value="";
		document.getElementById('PASSWORD1').value="";
		$.messager.alert("提示消息", "用户名或密码不能为空！", "info");
		return;
	}
	
	var condition = {"LOGINNAME1":LOGINNAME, "PASSWORD1":PASSWORD};
	condition = JSON.stringify(condition);
	condition = escape(encodeURIComponent(condition));
	var url = 'USERLogin.action?condition=' + condition;
	
	$.ajax({
		type:"post",
		url:url,
		contentType:"text/html",
		error:function(event,request,settings){
			$.messager.alert("提示消息", "请求失败！", "info");
		},
		success:function(data){
			if(data.total>0){
				window.location.href="mian.jsp";
			}else{
				$.messager.alert("提示消息", "用户名或密码错误！", "info");
			}
		}
	});
});
</script>
</head>

<body style="height:100%;width:100%;overflow:hidden;border:none;visibility:visible;">
 <div id="mainwindow" class="easyui-window" style="width:500px; height:300px; background:#fafafa; overflow:hidden" title="登录系统" border="false" resizable="true" draggable="true" minimizable="true" maximizable="true">
 <div class="header" style="height:35px;">
 <div class="toptitle" style="margin-top:25px; font-size:20px; margin-left:60px;">
 管理系统
 </div>
 </div>
 <div style="padding:60px 0;">
 <div id="loginForm">
 <div style="padding-left:150px">
 <table cellpadding="0" cellspacing="3">
 <tr>
 <td>登录账号</td>
 <td><input id="LOGINNAME1" style="width:114px;"/></td>
 </tr>
 <tr>
 <td>登录密码</td>
 <td><input id="PASSWORD1" type="password" style="width:114px;"/></td>
 </tr>
 <tr>
 <td>&nbsp;</td>
 </tr>
 <tr>
 <td></td>
 <td>
 <a id="btnLogin" class="easyui-linkbutton" href="javascript:void(0);">登录</a>
 <a class="easyui-linkbutton" onclick="clearAll123();" href="javascript:void(0);">重置</a>
 </td>
 </tr>
 <tr>
 <td>
 <a id="btn1" class="easyui-linkbutton" data-options="iconCls:'icon-search'">easyui</a>
 </td>
 </tr>
 </table>
 </div>
 </div>
 </div>
 </div>

</body>
</html>