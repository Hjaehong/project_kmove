package com.java.member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.command.Command;
import com.java.member.dao.MemberDao;
import com.java.member.dto.MemberDto;

public class MemberUpdateOkAction implements Command {

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("utf-8");
		
		MemberDto memberDto=new MemberDto();
		memberDto.setMember_number(Integer.parseInt(request.getParameter("member_number")));
		memberDto.setId(request.getParameter("id"));
		memberDto.setPassword(request.getParameter("password"));
		memberDto.setName(request.getParameter("name"));
		memberDto.setNickname(request.getParameter("nickname"));
		memberDto.setPhone1(request.getParameter("phone1"));
		memberDto.setPhone2(request.getParameter("phone2"));
		memberDto.setPhone3(request.getParameter("phone3"));
		
		memberDto.setZipcode(request.getParameter("zipcode"));
		memberDto.setAddress1(request.getParameter("address1"));
		memberDto.setAddress2(request.getParameter("address2"));
		logger.info(logMsg +memberDto.toString());
		
		int check=MemberDao.getInstance().update(memberDto);
		logger.info(logMsg + "check : " + check);
		
		request.setAttribute("check", check);
		request.setAttribute("memberDto", memberDto);
		
		return "/WEB-INF/views/member/updateOk.jsp";
	}

}




















