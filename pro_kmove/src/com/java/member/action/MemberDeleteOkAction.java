package com.java.member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.command.Command;
import com.java.member.dao.MemberDao;

public class MemberDeleteOkAction implements Command {

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		String id=request.getParameter("id");
		String password=request.getParameter("password");
		logger.info(logMsg + id + "\t" + password);
		
		int check=MemberDao.getInstance().delete(id, password);
		logger.info(logMsg + check);
		
		request.setAttribute("check", check);
		
		return "/WEB-INF/views/member/deleteOk.jsp";
	}

}
