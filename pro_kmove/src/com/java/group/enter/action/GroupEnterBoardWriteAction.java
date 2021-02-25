package com.java.group.enter.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.command.Command;

public class GroupEnterBoardWriteAction implements Command {

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		int board_number = 0;
		int group_number = 1;
		int sequence_number = 0;
		int sequence_level = 0;
		int pageNumber = 1;
		
		request.setAttribute("board_number", board_number);
		request.setAttribute("group_number", group_number);
		request.setAttribute("sequence_number", sequence_number);
		request.setAttribute("sequence_level", sequence_level);
		request.setAttribute("pageNumber", pageNumber);
		
		return "/WEB-INF/views/groupPurchase/write.jsp";
	}

}
