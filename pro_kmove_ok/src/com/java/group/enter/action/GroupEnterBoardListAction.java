package com.java.group.enter.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.java.command.Command;
import com.java.group.enter.dao.GroupEnterBoardDao;
import com.java.group.enter.dto.GroupEnterBoardDto;
import com.java.trigDao.TrigDao;
import com.java.trigDto.TrigDto;

public class GroupEnterBoardListAction implements Command {

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		String pageNumber = request.getParameter("pageNumber");
		if(pageNumber == null) {
			pageNumber = "1";
		}
		int currentPage = Integer.parseInt(pageNumber);
		logger.info(logMsg + "currentPage : " + currentPage);
		
		int boardSize = 8;
		int startRow = (currentPage-1)*boardSize+1; 
		int endRow = (currentPage*boardSize);
		
		int count = GroupEnterBoardDao.getInstance().getCount();
		logger.info(logMsg + "count" + count);
		
		TrigDao.getInstance().changeDel();
		
		List<GroupEnterBoardDto> groupboardList = null;
		
		if(count > 0) {
			groupboardList = GroupEnterBoardDao.getInstance().getBoardList(startRow, endRow);
			logger.info(logMsg + "listSize: " + groupboardList.size());
		}
		
		HttpSession session=request.getSession();
		String id = (String) session.getAttribute("id");
		
		List<TrigDto> trig = TrigDao.getInstance().allim(id); // 현재 접속된 id 와 같은 알림 받기

		request.setAttribute("trig", trig);
		request.setAttribute("boardSize", boardSize);		
		request.setAttribute("currentPage", currentPage);
		request.setAttribute("groupboardList", groupboardList);		
		request.setAttribute("count", count);
		
		return "/WEB-INF/views/groupPurchase/list.jsp";
	}
}
