package com.java.group.enter.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.command.Command;
import com.java.group.enter.dao.GroupEnterBoardDao;
import com.java.group.enter.dto.GroupEnterBoardDto;

public class GroupEnterBoardWriteOkAction implements Command {

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("utf-8");

		System.out.println("jnafksfskdjfn"+request.getParameter("board_number"));
		GroupEnterBoardDto groupEnterboardDto = new GroupEnterBoardDto();
		groupEnterboardDto.setBoard_number(Integer.parseInt(request.getParameter("board_number")));
		groupEnterboardDto.setGroup_number(Integer.parseInt(request.getParameter("group_number")));
		groupEnterboardDto.setSequence_number(Integer.parseInt(request.getParameter("sequence_number")));
		groupEnterboardDto.setSequence_level(Integer.parseInt(request.getParameter("sequence_level")));
		groupEnterboardDto.setPicture_load(request.getParameter("picture_load"));
		
		//groupEnterboardDto.setId(request.getParameter("id"));
		//groupEnterboardDto.setWriter(request.getParameter("writer"));
		groupEnterboardDto.setSubject(request.getParameter("subject"));
		groupEnterboardDto.setContents(request.getParameter("contents"));
		groupEnterboardDto.setBoard_password(request.getParameter("board_password"));
		groupEnterboardDto.setPrice(Integer.parseInt(request.getParameter("price")));
		groupEnterboardDto.setPeopleCount(Integer.parseInt(request.getParameter("peopleCount")));
		groupEnterboardDto.setKakaoID(request.getParameter("kakaoID"));
		int pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
		
		groupEnterboardDto.setRead_count(0);
		logger.info(logMsg +"투스트링 : " + groupEnterboardDto.toString()); 
//		
//		int check = GroupEnterBoardDao.getInstance().insert(groupEnterboardDto);
//		logger.info(logMsg + check); 
//		
//		request.setAttribute("check", check);
//		request.setAttribute("pageNumber", pageNumber);
		
		return null;
	}

}
