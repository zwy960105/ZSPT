/**
 * ͼƬ�ϴ����������С�ȿ���
 * �����ʼ�ϴ���ť(test9)��ִ���ϴ�
 * 
 */
var success=0;
var fail=0;
var imgurls="";

$(function (){
	var imgsName="";
	layui.use(['upload','layer'],function() {
		var upload = layui.upload;
		var layer=layui.layer;

		upload.render({
			elem: '#test1',
			url: '/ZSPT/upload.do',
			multiple: true,
			auto:false,
//			�ϴ��ĵ���ͼƬ��С
			size:10240,
//			����ϴ�������
			number:20,
//			MultipartFile file ��Ӧ��layuiĬ�Ͼ���file,Ҫ�Ķ�����Ӧ�Ķ�
			field:'file',
			bindAction: '#test9',
			before: function(obj) {
				//Ԥ�������ļ�ʾ������֧��ie8
				obj.preview(function(index, file, result) {
					$('#demo2').append('<img src="' + result 
						+ '" alt="' + file.name 
						+'"height="92px" width="92px" class="layui-upload-img uploadImgPreView">')
				});
			},
			done: function(res, index, upload) {
				//ÿ��ͼƬ�ϴ������Ļص����ɹ��Ļ����Ͱ���ͼƬ�����ֱ�����������Ϊ�����ύ
				console.log(res.code);
				if(res.code=="1"){
					fail++;
				}else{
					success++;
					imgurls=imgurls+""+res.data.src+",";
					$('#imgUrls').val(imgurls);
				}
			},
			allDone:function(obj){
			    layer.msg("�ܹ�Ҫ�ϴ�ͼƬ����Ϊ��"+(fail+success)+"\n"
			    			+"�����ϴ��ɹ�ͼƬ��Ϊ��"+success+"\n"
			    			+"�����ϴ�ʧ��ͼƬ��Ϊ��"+fail
			    		 )
			}
		});

	});
	
	//���Ԥ��ͼƬ
	cleanImgsPreview();
	//������Ʒ
	goodsSave();
});

/**
 * ���Ԥ����ͼƬ
 * ԭ������Ѿ�����Ԥ����ͼƬ�Ļ����ٴε����ѡ��ͼƬʱ��Ԥ��ͼƬ�᲻���ۼ�
 * ���������ϴ��ɹ��ĸ�����0
 */
function cleanImgsPreview(){
	$("#cleanImgs").click(function(){
		success=0;
		fail=0;
		$('#demo2').html("");
		$('#imgUrls').val("");
	});
}

/**
 * ������Ʒ
 */
function goodsSave(){
	$('#btnSubmit').click(function(){
		var tt=$("#title").val();
		var st=$("#smallTit").val();
		var ius=$("#imgUrls").val();
	
		$.ajax({
			   type: "POST",
			   url: "/ZSPT/saveGoods.do",
			   data: {
				   title:tt,
				   smallTit:st,
				   imgUrls:ius,
			   },
			   success: function(msg){
				   if(msg=="1"){
					   alert("����ɹ�");
				   }else{
					   alert("����ʧ��");
				   }
			   }
		});
	});
}