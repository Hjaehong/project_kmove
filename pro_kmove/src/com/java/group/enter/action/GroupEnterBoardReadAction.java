package com.java.group.enter.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.command.Command;
import com.java.group.enter.dao.GroupEnterBoardDao;
import com.java.group.enter.dto.GroupEnterBoardDto;

public class GroupEnterBoardReadAction implements Command {

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		int board_number = Integer.parseInt(request.getParameter("board_number"));
		int pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
		logger.info(logMsg + board_number + "," + pageNumber); 
		
//		logger.info(logMsg + boardDto.toString()); 
//		
//		request.setAttribute("boardDto", boardDto);
//		request.setAttribute("pageNumber", pageNumber);
		
		return "/WEB-INF/views/board/read.jsp";
	}

}
