package it.com.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class CharSetFilter implements Filter {

	public void destroy() {
		// TODO Auto-generated method stub

	}

	public void doFilter(ServletRequest arg0, ServletResponse arg1,
			FilterChain arg2) throws IOException, ServletException {
		//乱码过滤
		/**
		 * arg0负责所有的接收（相当于request）；
		 * arg1负责所有的发送（相当于response）；
		 * arg2转向。
		 */
		
		// TODO Auto-generated method stub
		arg0.setCharacterEncoding("utf-8");	//将所有接收来的数据变成UTF-8
		arg1.setCharacterEncoding("utf-8");	//将所有发送的数据变成UTF-8
		arg2.doFilter(arg0, arg1);	//【第一种写法】继续按过滤器执行之前的文件
		//System.out.println("过滤器解决乱码！");
		/*
		 * 【第二种写法】
		HttpServletRequest req=(HttpServletRequest)arg0;
		HttpServletResponse resp=(HttpServletResponse)arg1;
		resp.sendRedirect(location);
		*/
	}

	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub

	}

}
