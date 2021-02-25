package com.java.group.enter.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.command.Command;
import com.java.group.enter.dao.GroupEnterBoardDao;
import com.java.group.enter.dto.GroupEnterBoardDto;
import com.java.json.action.JsonID;
import com.java.json.dao.EnterID;

public class GroupEnterBoardListAction implements Command {

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		String pageNumber = request.getParameter("pageNumber");
		if(pageNumber == null) {
			pageNumber = "1";
		}
		int currentPage = Integer.parseInt(pageNumber);
		logger.info(logMsg + "currentPage : " + currentPage);
		
		int boardSize = 10;
		int startRow = (currentPage-1)*boardSize+1; 
		int endRow = (currentPage*boardSize);
		
		int count = GroupEnterBoardDao.getInstance().getCount();
		logger.info(logMsg + "count" + count);
		
		List<GroupEnterBoardDto> groupboardList = null;
		
		if(count > 0) {
			groupboardList = GroupEnterBoardDao.getInstance().getBoardList(startRow, endRow);
			logger.info(logMsg + "listSize: " + groupboardList.size());
		}
		
		
		request.setAttribute("boardSize", boardSize);		
		request.setAttribute("currentPage", currentPage);	
		request.setAttribute("groupboardList", groupboardList);		
		request.setAttribute("count", count);
		
		return "/WEB-INF/views/groupPurchase/list.jsp";
	}
}
