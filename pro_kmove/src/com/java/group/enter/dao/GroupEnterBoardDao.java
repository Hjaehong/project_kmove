package com.java.group.enter.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.java.command.Command;
import com.java.group.enter.dto.GroupEnterBoardDto;
import com.java.myBatis.SqlManager;


public class GroupEnterBoardDao {
	private static SqlSessionFactory sqlSessionFactory = SqlManager.getInstance();
	private static SqlSession session;
	private static GroupEnterBoardDao instance = new GroupEnterBoardDao();
	
	public static GroupEnterBoardDao getInstance() {		
		return instance;	
	}
	public int getCount() {
		int count = 0;

		try {
			session = sqlSessionFactory.openSession();
			count = session.selectOne("groupboardCount");
			
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return count;
	}
	
	public List<GroupEnterBoardDto> getBoardList(int startRow,int endRow) {
		HashMap<String, Integer> hMap = new HashMap<String, Integer>();
		hMap.put("startRow", startRow);
		hMap.put("endRow", endRow);
		
		List<GroupEnterBoardDto> valueList = null;
		
		try {
			session = sqlSessionFactory.openSession();
			valueList = session.selectList("groupboardList", hMap);
			
			System.out.println("valueList size : "+valueList.size());
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		
		return valueList;
	}
	
	public int insert(GroupEnterBoardDto groupEnterboardDto) {
		int check =0;
		
		try {
			session = sqlSessionFactory.openSession();
			check = session.insert("boardInsert", groupEnterboardDto);
			Command.logger.info("check : " +check);
			session.commit();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		
		return check;
	}

	public GroupEnterBoardDto read(int board_number) {
		GroupEnterBoardDto groupEnterBoardDto = null;
		try {
			session = sqlSessionFactory.openSession();
			session.update("boardReadCount", board_number);
			groupEnterBoardDto = session.selectOne("groupBoardRead", board_number);
			
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
			session.rollback();
		}finally {
			session.close();
		}
		
		return groupEnterBoardDto;
		
	}
	public int isMine(int board_number, String id) {
		HashMap<Object, Object> hMap = new HashMap<Object, Object>();
		hMap.put("board_number", board_number);
		hMap.put("id", id);
		
		int check=0;
		List<String> list = null;
		
		try {
			session = sqlSessionFactory.openSession();
			list = session.selectList("isMine", hMap);
			check = list.size();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		
		return check;
	}
}










