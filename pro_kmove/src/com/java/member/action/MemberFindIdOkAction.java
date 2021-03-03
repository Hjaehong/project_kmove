package com.java.member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.command.Command;
import com.java.member.dao.MemberDao;
import com.java.member.dto.MemberDto;

public class MemberFindIdOkAction implements Command {

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("utf-8");
		
		MemberDto memberDto = new MemberDto();
		memberDto.setName(request.getParameter("name"));
		memberDto.setPhone1(request.getParameter("phone1"));
		memberDto.setPhone2(request.getParameter("phone2"));
		memberDto.setPhone3(request.getParameter("phone3"));
		
		String id=MemberDao.getInstance().findId(memberDto);
		logger.info(logMsg + id + memberDto);
		
		request.setAttribute("memberDto", memberDto);
		request.setAttribute("id", id);
		
		return "/WEB-INF/views/member/findIdOk.jsp";
	}

}
