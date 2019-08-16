package it.com.action;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import it.com.json.ImgResult;
import it.com.service.QuestService;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class QuestAction {
	@Resource
	QuestService qs;

	public QuestService getQs() {
		return qs;
	}

	public void setQs(QuestService qs) {
		this.qs = qs;
	}
	//进入页面
	@RequestMapping(value="main.do")
	public ModelAndView main(){
		return new ModelAndView("/html/mainframe.jsp") ;
	}
	//查询所有问题
	@RequestMapping(value="wtcx_01.do")
	public ModelAndView wtcx_01(HttpSession session){
		List wt = qs.selectWt();
		session.setAttribute("wt", wt);
		return new ModelAndView("/html/wtcx.jsp") ;
	}
	
	//问题分类
	@RequestMapping(value="wtfl_01.do")
	public ModelAndView wtfl_01(HttpSession session,HttpServletResponse response,HttpServletRequest request){
		List fl = qs.selectWtfl();
		session.setAttribute("wtfl", fl);
		return new ModelAndView("/html/wtfl.jsp") ;
	}
	
	//问题录入
	@RequestMapping(value="wtlr_01.do")
	@ResponseBody
	public ModelAndView wtlr_01(@RequestParam MultipartFile[]  file,HttpSession session,HttpServletResponse response,HttpServletRequest request){
		String wt = request.getParameter("wt");
		String wtlx = request.getParameter("wtlx");
		String wttp  = request.getParameter("wttp");
		String wtnr = request.getParameter("wtnr");
		String tomcat_path = System.getProperty( "user.dir" );
		String path = request.getSession().getServletContext().getRealPath("/resource/imgs");
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd ");//设置日期格式
		String datetime = df.format(new java.util.Date());
		String picName =null;
		String fileName = "";
		 if (file != null && file.length > 0) {
	         //循环获取file数组中得文件
	         for (int i = 0; i < file.length; i++) {
	             MultipartFile files = file[i];
	             //保存文件
	             String extensionName = files.getOriginalFilename().substring(files.getOriginalFilename().lastIndexOf(".")+1);
	            	 picName =UUID.randomUUID().toString()+"."+extensionName;
	            	 String filePath = FilenameUtils.concat(path, picName);
	            	 fileName += picName+",";
	            	 System.out.println(fileName);
	            	 // 转存文件
	            	 try {
	            		 files.transferTo(new File(filePath));
	            	 } catch (IOException e) {
	            		 e.printStackTrace();
	            	 }
	         }
	     }
//		int n = qs.insertWtlr(wt,wtlx,wttp,wtnr);
//		session.setAttribute("msg", n);
		return new ModelAndView("/html/wtlr.jsp");
	}
	@ResponseBody
	@RequestMapping(value="saveGoods.do",method=RequestMethod.POST)
	private String saveImgInfo(String title,String smallTit,String imgUrls){
		System.out.println(title);
		System.out.println(smallTit);
		System.out.println(imgUrls);
		String[] urls = imgUrls.split(",");
		for (int i = 0; i < urls.length; i++) {
			System.out.println("图片名称："+urls[i]);
		}
		return "1";
	}
	@SuppressWarnings("deprecation")
	@RequestMapping("upload.do")
	@ResponseBody
	public ImgResult uplpad(@RequestParam MultipartFile file, HttpServletRequest request) {
		String desFilePath = "";
		String oriName = "";
		ImgResult result = new ImgResult();
		Map<String, String> dataMap = new HashMap();
		ImgResult imgResult = new ImgResult();
		try {
			// 1.获取原文件名
			oriName = file.getOriginalFilename();
			// 2.获取原文件图片后缀，以最后的.作为截取(.jpg)
			String extName = oriName.substring(oriName.lastIndexOf("."));
			// 3.生成自定义的新文件名，这里以UUID.jpg|png|xxx作为格式（可选操作，也可以不自定义新文件名）
			String uuid = UUID.randomUUID().toString();
			String newName = uuid + extName;
			// 4.获取要保存的路径文件夹
			String realPath = request.getRealPath("resources/imgs/");
			// 5.保存
			desFilePath = realPath + "\\" + newName;
			File desFile = new File(desFilePath);
			file.transferTo(desFile);
			System.out.println(desFilePath);
			// 6.返回保存结果信息
			result.setCode(0);
			dataMap = new HashMap();
			dataMap.put("src", "resources/imgs/" + newName);
			result.setData(dataMap);
			result.setMsg(oriName + "上传成功！");
			return result;
		} catch (IllegalStateException e) {
			imgResult.setCode(1);
			System.out.println(desFilePath + "图片保存失败");
			return imgResult;
		} catch (IOException e) {
			imgResult.setCode(1);
			System.out.println(desFilePath + "图片保存失败--IO异常");
			return imgResult;
		}
	}
	@RequestMapping("uploadd.do")  
	private String processImg(HttpServletRequest request, String imageDir)  
            throws Exception {  
        String uuid =UUID.randomUUID().toString();
        request.setCharacterEncoding("UTF-8");  
        DiskFileItemFactory factory = new DiskFileItemFactory();  
        ServletFileUpload upload = new ServletFileUpload(factory);  
        List<FileItem> items = upload.parseRequest(request);  
        Iterator<FileItem> itr = items.iterator();  
        while (itr.hasNext()) {  
            FileItem item = (FileItem) itr.next();  
            if (item.isFormField()) {  
                System.out.println("表单参数名:" + item.getFieldName() + "，表单参数值:"  
                        + item.getString("UTF-8"));  
            } else {  
                System.out.println("上传文件的大小:" + item.getSize());  
                System.out.println("上传文件的类型:" + item.getContentType());  
                System.out.println("上传文件的名称:" + item.getName());  
                FileUtils.forceMkdir(new File(imageDir));  
                String file = imageDir + File.separator + uuid + "."  
                        + FilenameUtils.getExtension(item.getName());  
                item.write(new File(file));  
                return uuid + "." + FilenameUtils.getExtension(item.getName());  
            }  
        }  
        return uuid;  
    }  
  
   
}
