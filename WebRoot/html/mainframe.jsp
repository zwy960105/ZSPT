<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title>知识平台</title>
<link rel="stylesheet" href="/ZSPT/jc/css/layui.css" type="text/css"></link>
<script type="text/javascript" src="/ZSPT/jc/js/layui.js"></script>
</head>

<body>


	<div class="layui-layout layui-layout-admin">
		<div class="layui-header">
			<div class="layui-logo">知识平台</div>
			<ul class="layui-nav layui-layout-left">
				<li class="layui-nav-item">
				<a href="/ZSPT/html/wtcx.jsp"target="nr">问题查询</a>
				</li>
				<li class="layui-nav-item">
				<a href="/ZSPT/html/wtfl.jsp" target="nr">问题分类</a>
				</li>
				<li class="layui-nav-item">
				<a href="/ZSPT/html/wtlr.jsp"target="nr">问题录入</a>
				</li>
				<li class="layui-nav-item"><a href="/ZSPT/html/wtgl.jsp"target="nr">问题管理</a>
				</li>
				<!-- <li class="layui-nav-item">
				<a href="/ZSPT/html/rzgl.jsp"target="nr">日志管理</a>
				</li> -->
			</ul>
			
		</div>

		<div class="layui-body">
			<iframe src="/ZSPT/html/wtcx.jsp" frameborder="0" height="100%"
				width="100%" scrolling="auto" name="nr" class="nr" id="nr"></iframe>
		</div>
	</div>
	<script>
		//JavaScript代码区域
		layui.use('element', function() {
			var element = layui.element;

		});
	</script>
</body>

</html>