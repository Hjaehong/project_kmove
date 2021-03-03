package com.java.freeboard.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.command.Command;
import com.java.freeboard.dao.GroupEnterFreeBoardDao;
import com.java.freeboard.dto.GroupEnterFreeBoardDto;


public class GroupEnterFreeBoardWriteOkAction implements Command {

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("utf-8");
		
		GroupEnterFreeBoardDto groupEnterFreeBoardDto = new GroupEnterFreeBoardDto();
		groupEnterFreeBoardDto.setBoard_number(Integer.parseInt(request.getParameter("board_number")));
		groupEnterFreeBoardDto.setGroup_number(Integer.parseInt(request.getParameter("group_number")));
		groupEnterFreeBoardDto.setSequence_number(Integer.parseInt(request.getParameter("sequence_number")));
		groupEnterFreeBoardDto.setSequence_level(Integer.parseInt(request.getParameter("sequence_level")));
		
		groupEnterFreeBoardDto.setWriter(request.getParameter("writer"));
		groupEnterFreeBoardDto.setSubject(request.getParameter("subject"));
		groupEnterFreeBoardDto.setContents(request.getParameter("contents"));
		
		
		int pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
		
		groupEnterFreeBoardDto.setRead_count(0);
		logger.info(logMsg +"제발 : " +groupEnterFreeBoardDto.toString()); 
		
		int check = GroupEnterFreeBoardDao.getInstance().insert(groupEnterFreeBoardDto);
		logger.info(logMsg + check); 
		
		request.setAttribute("check", check);
		request.setAttribute("pageNumber", pageNumber);
		
		return "/WEB-INF/views/freeboard/exwriteOk.jsp";
	}

}