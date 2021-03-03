package com.java.group.enter.action;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.java.command.Command;
import com.java.group.enter.dao.GroupEnterBoardDao;
import com.java.group.enter.dto.GroupEnterBoardDto;

public class GroupEnterBoardWriteOkAction implements Command {

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("utf-8");
		
		GroupEnterBoardDto groupEnterboardDto = new GroupEnterBoardDto();
		groupEnterboardDto.setBoard_number(Integer.parseInt(request.getParameter("board_number")));
		groupEnterboardDto.setGroup_number(Integer.parseInt(request.getParameter("group_number")));
		groupEnterboardDto.setSequence_number(Integer.parseInt(request.getParameter("sequence_number")));
		groupEnterboardDto.setSequence_level(Integer.parseInt(request.getParameter("sequence_level")));
		groupEnterboardDto.setBoard_password(request.getParameter("board_password"));
		groupEnterboardDto.setWriter(request.getParameter("writer"));
		
		Date selectedDate = new SimpleDateFormat("yyyy-MM").parse(request.getParameter("end_date"));
		groupEnterboardDto.setEnd_date(selectedDate);
		
		groupEnterboardDto.setPeoplecount(Integer.parseInt(request.getParameter("peoplecount")));
		groupEnterboardDto.setPrice(Integer.parseInt(request.getParameter("price")));
		groupEnterboardDto.setSubject(request.getParameter("subject"));
		groupEnterboardDto.setKakaoID(request.getParameter("kakaoID"));
		groupEnterboardDto.setContents(request.getParameter("contents"));
		
		HttpSession session=request.getSession();
		String id = (String) session.getAttribute("id");
		groupEnterboardDto.setId(id);
		
		int board_number = Integer.parseInt(request.getParameter("board_number"));
		
		int pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
		
		groupEnterboardDto.setRead_count(0);
		//logger.info(logMsg +"제발 : " +groupEnterboardDto.toString()); 
		
		int check = GroupEnterBoardDao.getInstance().insert(groupEnterboardDto);
		logger.info(logMsg + check); 
		
		request.setAttribute("check", check);
		request.setAttribute("pageNumber", pageNumber);
		
		return "/WEB-INF/views/groupPurchase/writeOk.jsp";
	}

}
