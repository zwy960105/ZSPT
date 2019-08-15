package it.com.action;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.UUID;

import it.com.service.QuestService;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FilenameUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
	//����ҳ��
	@RequestMapping(value="main.do")
	public ModelAndView main(){
		return new ModelAndView("/html/mainframe.jsp") ;
	}
	//��ѯ��������
	@RequestMapping(value="wtcx_01.do")
	public ModelAndView wtcx_01(HttpSession session){
		List wt = qs.selectWt();
		session.setAttribute("wt", wt);
		return new ModelAndView("/html/wtcx.jsp") ;
	}
	
	//�������
	@RequestMapping(value="wtfl_01.do")
	public ModelAndView wtfl_01(HttpSession session,HttpServletResponse response,HttpServletRequest request){
		List fl = qs.selectWtfl();
		session.setAttribute("wtfl", fl);
		return new ModelAndView("/html/wtfl.jsp") ;
	}
	
	//����¼��
	@RequestMapping(value="wtlr_01.do")
	public ModelAndView wtlr_01(@RequestParam MultipartFile[]  file,HttpSession session,HttpServletResponse response,HttpServletRequest request){
		String wt = request.getParameter("wt");
		String wtlx = request.getParameter("wtlx");
		String wttp  = request.getParameter("wttp");
		String wtnr = request.getParameter("wtnr");
		String tomcat_path = System.getProperty( "user.dir" );
		String path = request.getSession().getServletContext().getRealPath("/picture");
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd ");//�������ڸ�ʽ
		String datetime = df.format(new java.util.Date());
		String picName =null;
		String fileName = "";
		 if (file != null && file.length > 0) {
	         //ѭ����ȡfile�����е��ļ�
	         for (int i = 0; i < file.length; i++) {
	             MultipartFile files = file[i];
	             //�����ļ�
	             String extensionName = files.getOriginalFilename().substring(files.getOriginalFilename().lastIndexOf(".")+1);
	            	 picName =UUID.randomUUID().toString()+"."+extensionName;
	            	 String filePath = FilenameUtils.concat(path, picName);
	            	 fileName += picName+",";
	            	 // ת���ļ�
	            	 try {
	            		 files.transferTo(new File(filePath));
	            	 } catch (IOException e) {
	            		 e.printStackTrace();
	            	 }
	         }
	     }
		int n = qs.insertWtlr(wt,wtlx,wttp,wtnr,);
		session.setAttribute("msg", n);
		return new ModelAndView("/html/wtlr.jsp");
	}
}
