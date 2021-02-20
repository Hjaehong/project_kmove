package com.java.group.enter.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.java.group.enter.dto.GroupEnterBoardDto;
import com.java.myBatis.SqlManager;


public class GroupEnterBoardDao {
	private static SqlSessionFactory sqlSessionFactory = SqlManager.getInstance();
	private static SqlSession session;
	private static GroupEnterBoardDao instance = new GroupEnterBoardDao();
	
	public static GroupEnterBoardDao getInstance() {		
		
		return instance;	
	}
	public int insert(GroupEnterBoardDto groupEnterboardDto) {
		
		int check = 0;
		//writeNumber(boardDto);
		try {			
			session = sqlSessionFactory.openSession();
			check = session.insert("groupEnterboardInsert", groupEnterboardDto);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return check;
		
	}
	public List<GroupEnterBoardDto> getBoardList(int startRow,int endRow) {
		HashMap<String, Integer> hMap = new HashMap<String, Integer>();
		hMap.put("startRow", startRow);
		hMap.put("endRow", endRow);
		
		List<GroupEnterBoardDto> valueList = null;
		
		try {
			session = sqlSessionFactory.openSession();
			valueList = session.selectList("groupboardList", hMap);
						
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		
		return valueList;
	}

}










