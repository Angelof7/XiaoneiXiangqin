package com.xiangqin.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.xiangqin.ORM.PersonalInfo;

/**
 * prevent null attribute
 * @author TianTian
 *
 */
public class HasPersonalInfoFilter implements Filter{

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse res,
			FilterChain fc) throws IOException, ServletException {
		// TODO Auto-generated method stub
		HttpServletRequest httpReq = (HttpServletRequest) req;
		HttpServletResponse httpRes = (HttpServletResponse) res;
		HttpSession session = httpReq.getSession();
		PersonalInfo pi = (PersonalInfo)session.getAttribute("personalInfo");
		if(pi == null){
			httpRes.sendRedirect(httpReq.getContextPath() + "/login.jsp");
		}else{
			fc.doFilter(req, res);
		}
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		
	}
	
}
