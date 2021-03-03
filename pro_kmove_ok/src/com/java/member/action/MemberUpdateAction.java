package com.java.member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.java.command.Command;
import com.java.member.dao.MemberDao;
import com.java.member.dto.MemberDto;

public class MemberUpdateAction implements Command {

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		HttpSession session=request.getSession();
		String id=(String) session.getAttribute("id");
		logger.info(logMsg  + id);
		
		MemberDto memberDto=MemberDao.getInstance().updateId(id);
		logger.info(logMsg +memberDto.toString());
		
		request.setAttribute("memberDto", memberDto);
		
		return "/WEB-INF/views/member/update.jsp";
	}
}
