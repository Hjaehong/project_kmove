package com.java.member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.command.Command;

public class MemberLoginAction implements Command{

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		return "/WEB-INF/views/member/login.jsp";
	}

}