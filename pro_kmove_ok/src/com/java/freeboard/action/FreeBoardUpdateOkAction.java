package com.java.freeboard.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.command.Command;
import com.java.freeboard.dao.GroupEnterFreeBoardDao;
import com.java.freeboard.dto.GroupEnterFreeBoardDto;


public class FreeBoardUpdateOkAction implements Command {

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("utf-8");
		int bn = Integer.parseInt(request.getParameter("board_number"));
		logger.info("bnbnbnbnbn :: " +bn);
		GroupEnterFreeBoardDto groupEnterFreeBoardDto = new GroupEnterFreeBoardDto();
		groupEnterFreeBoardDto.setBoard_number(Integer.parseInt(request.getParameter("board_number")));
		groupEnterFreeBoardDto.setSubject(request.getParameter("subject"));
		groupEnterFreeBoardDto.setContents(request.getParameter("contents"));
		
		
		int pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
		
		int check = GroupEnterFreeBoardDao.getInstance().upgrade(groupEnterFreeBoardDto);
		logger.info(logMsg + check); 
		
		request.setAttribute("check", check);
		request.setAttribute("pageNumber", pageNumber);
		
		return "/WEB-INF/views/freeboard/updateOk.jsp";
	}

}