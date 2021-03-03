package com.java.member.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.java.command.Command;
import com.java.group.enter.dao.GroupEnterBoardDao;
import com.java.group.enter.dto.GroupEnterBoardDto;
import com.java.group.jjim.dao.GroupJjimBoardDao;
import com.java.group.jjim.dto.GroupJjimBoarDto;
import com.java.trigDao.TrigDao;
import com.java.trigDto.TrigDto;

public class MemberMyMainPageAction implements Command {

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		HttpSession session=request.getSession();
		String id=(String) session.getAttribute("id");
		logger.info(logMsg  + id);
		
		List<GroupEnterBoardDto> myList = GroupEnterBoardDao.getInstance().myBoardList(id);
		// 내가 참여한 게시물 제목 날짜
		List<TrigDto> myEnter = TrigDao.getInstance().myEnterList(id);
		// 내가 찜한 게시물 제목 날짜
		List<GroupJjimBoarDto> list = null;
		list = GroupJjimBoardDao.getInstance().readJjim(id);
		logger.info(logMsg + "listSize: " + list.size());
		
		
		request.setAttribute("id", id);
		request.setAttribute("myList", myList);
		request.setAttribute("myEnter", myEnter);
		request.setAttribute("list", list);
		return "/WEB-INF/views/member/myMainPage.jsp";
	}

}
