<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<!--优先使用 IE 最新版本和 Chrome-->
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>知识平台</title>
<!--全局公用样式-->
<link rel="stylesheet" href="/ZSPT/diyUpload/css/globle.css"
	type="text/css"></link>
<link rel="stylesheet" href="/ZSPT/jc/css/layui.css" type="text/css"></link>
<script type="text/javascript" src="/ZSPT/jc/js/layui.js"></script>
<script type="text/javascript" src="/ZSPT/jc/js/jquery-1.7.2.js"></script>
<script type="text/javascript" src="/ZSPT/jc/webuploader.js"></script>
<script type="text/javascript" src="/ZSPT/diyUpload/js/diyUpload.js"></script>
<script type="text/javascript"
	src="/ZSPT/diyUpload/js/webuploader.min.js"></script>
</head>
<body>
	<!--<blockquote class="layui-elem-quote layui-quote-nm">
		<i class="layui-icon layui-icon-right"></i>  主页 
		<i class="layui-icon layui-icon-right"></i> 问题录入
	</blockquote> -->
	<div class="layui-form-item">
		<div class="layui-input-block">
			<!--   <button class="layui-btn  layui-btn-primary" id="sjkdj">数据库对接</button> -->
			<!--  <button class="layui-btn  layui-btn-primary"  id="sdsr">   手动输入    </button> -->
		</div>
	</div>
	<div id="tt">
		<div class="layui-form-item">
			<label class="layui-form-label">问题：</label>
			<div class="layui-input-block">
				<input type="text" name="title" required lay-verify="required"
					placeholder="请输入标题" autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">问题类型：</label>
			<div class="layui-input-block">
				<select name="select" id="select" lay-verify="required"
					style="width: 150px;height: 30px;">
					<option value="">请选择</option>
					<option value="1">日常维护</option>
					<option value="2">信息维护申请</option>
					<option value="3">权限申请</option>
					<option value="4">IE配置</option>
				</select>
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">问题图片：</label>
			<div>
				<ul class="upload-ul clearfix">
					<li class="upload-pick">
						<div class="webuploader-container clearfix" id="goodsUpload"></div>
						<input type="hidden" value="${basePath}" id="basepath">
					</li>
				</ul>
			</div>
		</div>

		<div class="layui-form-item">
			<label class="layui-form-label">问题内容</label>
			<div class="layui-input-inline">
				<textarea rows="20" cols="100"></textarea>
			</div>
		</div>

		<div class="layui-form-item">
			<div class="layui-input-block">
				<button class="layui-btn  layui-btn-primary" lay-submit
					lay-filter="formDemo">立即提交</button>
				<button type="reset" class="layui-btn layui-btn-primary" id = "btt">重置</button>
			</div>
		</div>
	</div>
	<div id="rr" style="display: none;margin-left: 50px;">
		请选择对接流程: <select name="select" id="select" lay-verify="required"
			style="width: 150px;height: 30px;margin-left: 20px;">
			<option value="">请选择</option>
			<option value="1">OA</option>
			<option value="2">U9</option>
			<option value="3">CRM</option>
		</select>
		<button class="layui-btn" lay-submit lay-filter="formDemo"
			style="margin-left: 20px;" id="btn">确定</button>
	</div>


</body>
<script type="text/javascript">
	layui.use([ 'table', 'jquery' ], function() {
		var table = layui.table;
		$ = layui.jquery;
		$("#sdsr").click(function() {
			$("#rr").hide();
			$("#tt").show();
		});
		$("#sjkdj").click(function() {
			$("#tt").hide();
			$("#rr").show();
		});

	});
	$(function() {
		 //上传图片
            var $tgaUpload = $('#goodsUpload').diyUpload({
               // swf: '/UILib/WebUploader/Uploader.swf',
               //提交参数
               /*  formData: {
                    MainCate: _MainCate,
                    SubCate: _SubCate,
                    OwnerID: _OwnerID,
                    Folder: _Folder
                }, */
                // 文件接收服务端。
                server: '/ZSPT/wtlr_01.do',
                success: function (data) {
                },
                error: function (err) {
                },
                buttonText: '',
                accept: {
                    title: "Images",
                    extensions: 'gif,jpg,jpeg,bmp,png'
                },
                thumb: {
                    width: 120,
                    height: 90,
                    quality: 100,
                    allowMagnify: true,
                    crop: true,
                    type: "image/jpeg"
                }
            });

            $("#btt").on("click", function () {
            alert(1123);
                $tgaUpload.upload();
            });
	/* 	$("#btt").click(function() {
			//alert(123);
			//alert($("img").val());

		}); */

	});
</script>
<!








</html>