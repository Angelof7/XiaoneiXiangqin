package com.xiangqin.interceptor;

import java.util.Map;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

@SuppressWarnings("serial")
public class IsLoginInterceptor extends AbstractInterceptor {

	@Override
	public String intercept(ActionInvocation actionInvocation) throws Exception {
		Map<String, Object> session = actionInvocation.getInvocationContext()
				.getSession();
		if (session.get("user") == null) {
			return "globallogin";
		} else {
			return actionInvocation.invoke();
		}
	}

}
