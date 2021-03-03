package com.java.freeboard.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.java.command.Command;
import com.java.freeboard.dto.GroupEnterFreeBoardDto;
import com.java.myBatis.SqlManager;


public class GroupEnterFreeBoardDao {
	private static SqlSessionFactory sqlSessionFactory = SqlManager.getInstance();
	private static SqlSession session;
	private static GroupEnterFreeBoardDao instance = new GroupEnterFreeBoardDao();
	
	public static GroupEnterFreeBoardDao getInstance() {		
		return instance;	
	}
	public int getCount() {
		int count = 0;

		try {
			session = sqlSessionFactory.openSession();
			count = session.selectOne("freeboardCount");
			
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return count;
	}
	
	public List<GroupEnterFreeBoardDto> getBoardList(int startRow,int endRow) {
		HashMap<String, Integer> hMap = new HashMap<String, Integer>();
		hMap.put("startRow", startRow);
		hMap.put("endRow", endRow);
		
		List<GroupEnterFreeBoardDto> valueList = null;
		
		try {
			session = sqlSessionFactory.openSession();
			valueList = session.selectList("freeboardList", hMap);
			
			System.out.println("valueList size : "+valueList.size());
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		
		return valueList;
	}
	
	public int insert(GroupEnterFreeBoardDto groupEnterFreeBoardDto) {
		int check =0;
		
		try {
			session = sqlSessionFactory.openSession();
			check = session.insert("freeboardInsert", groupEnterFreeBoardDto);
			Command.logger.info("check : " +check);
			session.commit();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		
		return check;
	}

	public GroupEnterFreeBoardDto read(int board_number) {
		GroupEnterFreeBoardDto groupEnterFreeBoardDto = null;
		try {
			session = sqlSessionFactory.openSession();
			session.update("boardReadCount", board_number);
			groupEnterFreeBoardDto = session.selectOne("freeBoardRead", board_number);
			
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
			session.rollback();
		}finally {
			session.close();
		}
		
		return groupEnterFreeBoardDto;
		
	}
	public List<GroupEnterFreeBoardDto> search(String contextSearch,String partnum){
		List<GroupEnterFreeBoardDto> exsearch= null;
		HashMap<String, String> hMap = new HashMap<String, String>();
		hMap.put("contextSearch", contextSearch);
		hMap.put("partnum", partnum);
		try {
			session=sqlSessionFactory.openSession();
			exsearch= session.selectList("freeboardsearch", hMap);
			
			System.out.println(exsearch.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return exsearch;		
	}
	public int delete(String board_number) {
		int check =0;
		try {
			session=sqlSessionFactory.openSession();
			check= session.delete("freedelete", board_number);
			session.commit();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return check;
		
	}
	public GroupEnterFreeBoardDto update(String board_number) {
		GroupEnterFreeBoardDto groupEnterFreeBoardDto = null;
		try {
			session=sqlSessionFactory.openSession();
			groupEnterFreeBoardDto= session.selectOne("upsel", board_number);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return groupEnterFreeBoardDto;
	}
	
	public int upgrade(GroupEnterFreeBoardDto groupEnterFreeBoardDto) {
		int check =0;
		try {
			session=sqlSessionFactory.openSession();
			check= session.update("freeupdate", groupEnterFreeBoardDto);
			session.commit();
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return check;
	}
}










