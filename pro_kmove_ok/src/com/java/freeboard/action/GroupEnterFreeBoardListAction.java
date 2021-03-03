package com.java.freeboard.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.command.Command;
import com.java.freeboard.dao.GroupEnterFreeBoardDao;
import com.java.freeboard.dto.GroupEnterFreeBoardDto;


public class GroupEnterFreeBoardListAction implements Command {

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		String pageNumber = request.getParameter("pageNumber");
		if(pageNumber == null) {
			pageNumber = "1";
		}
		int currentPage = Integer.parseInt(pageNumber);
		logger.info(logMsg + "currentPage : " + currentPage);
		
		int boardSize = 20;
		int startRow = (currentPage-1)*boardSize+1; 
		int endRow = (currentPage*boardSize);
		
		int count = GroupEnterFreeBoardDao.getInstance().getCount();
		logger.info(logMsg + "count" + count);
		
		List<GroupEnterFreeBoardDto> freeboardList = null;
		
		if(count > 0) {
			freeboardList = GroupEnterFreeBoardDao.getInstance().getBoardList(startRow, endRow);
			logger.info(logMsg + "listSize: " + freeboardList.size());
		}

		request.setAttribute("boardSize", boardSize);		
		request.setAttribute("currentPage", currentPage);	
		request.setAttribute("freeboardList", freeboardList);		
		request.setAttribute("count", count);
		
		return "/WEB-INF/views/freeboard/freeboardList.jsp";
	}
}
