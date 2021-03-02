package com.java.member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.java.command.Command;

public class MemberMyMainPageAction implements Command {

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		HttpSession session=request.getSession();
		String id=(String) session.getAttribute("id");
		logger.info(logMsg  + id);
		
		request.setAttribute("id", id);
		
		return "/WEB-INF/views/member/myMainPage.jsp";
	}

}
