<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理系统</title>

<link rel="stylesheet" type="text/css" href="easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="easyui/themes/icon.css">
<link rel="stylesheet" type="text/css" href="css/main.css">

<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="easyui/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<script type="text/javascript" src="main.js"></script>

</head>
<body style="overflow:visible;border:none; visibility:visible; width:100%; height:100%;" onload="showTime();">
<div id="cc" class="easyui-layout" style="overflow:visible;width:100%;height:100%;">
<div region="north" style="height:126px; width:100%;">
<div class="header" style="background:#fff url('css/images/banner.jpg') no-repeat center;">
<div style="text-align:right; padding-right:20px; padding-top:30px; padding-bottom:14px;">
<span style="color:#FDFDFD" id="loginuserInfo">欢迎你，王安格</span>
<span style="color:#FDFDFD" id="loginuserArea">,北京地区</span>
<span style="color:#FDFDFD" id="timeInfo"></span>
<a href="Logins" style="color:#FDFDFD;text-decoration:none;">退出</a>
</div>
<div class="maintitle" style="top:12; font-size:20px; color:#FDFDFD; margin-left:5px;">WEB商务系统</div>
</div>
<div id="topmenu" class="topmenu" style="height:34px;background:url('css/images/maintop11.png');color:#fff;font-size:14px;font-weight:bold;">
&nbsp;&nbsp;&nbsp;&nbsp;
<a href="javascript:addTab('首页','main/welcome1')">首&nbsp;&nbsp;页</a>
</div>
</div>
<!-- 布局底部面板 -->
<div region="south" style="height:18px; overflow:visible;">
<center></center>
</div>
<!-- 左侧布局 -->
<div region="west" title="左导航菜单栏" style="width:180px;" data-options="animate:true, dnd:true">
<ul id="ttl" class="easyui-tree"></ul>
</div>
<!-- 主显示区域 -->
<div region="center" style="overflow:visible;">
<div class="easyui-tabs" fit="true" id="tt" style="overflow:visible;">
<div title="首页" style="overflow:visible;">
<iframe height="100%" width="100%" id="iframe" name="iframe" marginheight="0" marginwidth="0" frameborder='0' scrolling="auto" src="main/welcome">
</iframe>
</div>
</div>
</div>
<div id="dd" style="overflow:visible;"></div>  <!-- 保留区域 -->
</div>
</body>
</html>