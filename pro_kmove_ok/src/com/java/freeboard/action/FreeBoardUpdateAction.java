package com.java.freeboard.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.command.Command;
import com.java.freeboard.dao.GroupEnterFreeBoardDao;
import com.java.freeboard.dto.GroupEnterFreeBoardDto;


public class FreeBoardUpdateAction  implements Command{

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		String board_number = request.getParameter("board_number");
		String pageNumber = request.getParameter("pageNumber");
		GroupEnterFreeBoardDto groupEnterFreeBoardDto = GroupEnterFreeBoardDao.getInstance().update(board_number);

		request.setAttribute("pageNumber", pageNumber);
		request.setAttribute("groupEnterFreeBoardDto", groupEnterFreeBoardDto);
		
		return "/WEB-INF/views/freeboard/update.jsp";
	}

}