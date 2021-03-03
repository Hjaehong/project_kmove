package com.java.freeboard.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.command.Command;
import com.java.freeboard.dao.GroupEnterFreeBoardDao;

public class GroupEnterFreeBoardDeleteAction implements Command{

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		String board_number = request.getParameter("board_number");
		String pageNumber = request.getParameter("pageNumber");
		int check = GroupEnterFreeBoardDao.getInstance().delete(board_number);
		request.setAttribute("check", check);
		request.setAttribute("pageNumber", pageNumber);
		return "/WEB-INF/views/freeboard/delete.jsp";
	}
 
}
