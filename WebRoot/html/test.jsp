<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'top.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" href="/ZSPT/jc/css/layui.css" type="text/css"></link>
<script type="text/javascript" src="/ZSPT/jc/js/layui.js"></script>
<script type="text/javascript" src="/ZSPT/jc/js/jquery-1.7.2.js"></script>

</head>
<body>
	<div class="layui-input-block">
		<button type="button" class="layui-btn" id="test1">
			<i class="layui-icon">&#xe67c;</i>选择图片（最多选择20张，单张图片最大为10M）
		</button>
		<button type="button" class="layui-btn" id="test9">开始上传</button>
		<button type="button" class="layui-btn" id="cleanImgs">
			<i class="fa fa-trash-o fa-lg"></i>清空图片预览
		</button>
	</div>
	<blockquote class="layui-elem-quote layui-quote-nm"
		style="margin-top: 10px;">
		预览图：
		<div class="layui-upload-list" id="demo2"></div>
	</blockquote>
</body>
</html>
<script type="text/javascript" src="/ZSPT/jc/js/common.js"></script>
<script type="text/javascript" src="/ZSPT/jc/js/goodsMutiUpload.js"></script>
<script>
	//JavaScript代码区域
	layui.use([ 'element', 'form', 'laydate' ], function() {
		var element = layui.element;
		var form = layui.form;
	});
</script>