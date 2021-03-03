package com.java.member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.command.Command;
import com.java.member.dao.MemberDao;

public class MemberLoginOkAction implements Command {

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		String id=request.getParameter("id");
		String password=request.getParameter("password");
		logger.info(logMsg + id + "\t" + password);
		
		String grade=MemberDao.getInstance().loginCheck(id, password);
		logger.info(logMsg +grade);
		
		if(grade !=null) {
			request.setAttribute("grade", grade);
			request.setAttribute("id", id);
		}
		
		return "/WEB-INF/views/member/loginOk.jsp";
	}

}
