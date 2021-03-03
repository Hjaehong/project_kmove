package com.java.freeboard.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.command.Command;
import com.java.freeboard.dao.GroupEnterFreeBoardDao;
import com.java.freeboard.dto.GroupEnterFreeBoardDto;

public class GroupEnterFreeBoardReadAction implements Command {

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		int board_number = Integer.parseInt(request.getParameter("board_number"));
		int pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
		logger.info(logMsg + board_number + "," + pageNumber); 
		
		GroupEnterFreeBoardDto groupEnterFreeBoardDto = GroupEnterFreeBoardDao.getInstance().read(board_number);
		logger.info(logMsg + groupEnterFreeBoardDto.toString()); 
		
		request.setAttribute("groupEnterFreeBoardDto", groupEnterFreeBoardDto);
		request.setAttribute("pageNumber", pageNumber);
		
		return "/WEB-INF/views/freeboard/read.jsp";
	}

}
