package com.java.member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.command.Command;
import com.java.member.dao.MemberDao;

public class MemberIdCheckAction implements Command {

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		String id=request.getParameter("id");
		logger.info(logMsg + id);
		
		int check=MemberDao.getInstance().idCheck(id);
		logger.info(logMsg +check);
		
		request.setAttribute("check", check);
		request.setAttribute("id", id);
		
		return "/WEB-INF/views/member/idCheck.jsp";
	}

}
