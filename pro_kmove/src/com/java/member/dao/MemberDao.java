package com.java.member.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.java.member.dto.MemberDto;
import com.java.myBatis.SqlManager;

public class MemberDao {
	private static SqlSessionFactory sqlSessionFactory=SqlManager.getInstance();
	private SqlSession session;
	
	private static MemberDao instance = new MemberDao();
	public static MemberDao getInstance() {
		return instance;
	}
	
	public int insert(MemberDto memberDto) {
		
		int check=0;
		
		try {
			session=sqlSessionFactory.openSession();
			check=session.insert("memberInsert", memberDto);
			session.commit();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		
		return check;
	}
	
	public int idCheck(String id) {
		int check=0;
		
		try {
			session=sqlSessionFactory.openSession();
			String checkId=session.selectOne("memberIdCheck", id);
			if(checkId != null) check=1;
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		
		return check;
	}
	
	
	
	public String loginCheck(String id, String password) {
		String value=null;
		HashMap<String, String> hMap= new HashMap<String, String>();
		hMap.put("id", id);
		hMap.put("password", password);
		
		try {
			session=sqlSessionFactory.openSession();
			value=session.selectOne("memberLoginCheck", hMap);	
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		
		return value;
	}
	
	
	public int delete(String id, String password) {
		int check=0;
		HashMap<String, String> hMap = new HashMap<String, String>();
		hMap.put("id", id);
		hMap.put("password", password);
		
		try {
			session=sqlSessionFactory.openSession();
			check=session.delete("memberDelete", hMap);
			session.commit();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}	
		return check;
	}
	
	public MemberDto updateId(String id) {
		MemberDto memberDto=null;
		
		try {
			session=sqlSessionFactory.openSession();
			memberDto=session.selectOne("memberUpdateId", id);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		
		return memberDto;
	}
	
	public int update(MemberDto memberDto) {
		int check=0;
		
		try {
			session=sqlSessionFactory.openSession();
			check=session.update("memberUpdate", memberDto);
			session.commit();
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return check;
	}
	
	public MemberDto select(String id, String password) {
		MemberDto memberDto=null;
		HashMap<String, String> hMap = new HashMap<String, String>();
		hMap.put("id", id);
		hMap.put("password", password);
		
		try {
			session=sqlSessionFactory.openSession();
			memberDto=session.selectOne("myPageCheck", hMap);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		
		return memberDto;
	}
	
	public String findId(MemberDto memberDto) {
		String id=null;
		
		try {
			session=sqlSessionFactory.openSession();
			id=session.selectOne("findId", memberDto);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		
		return id;
	}
	
	public String findPwd(MemberDto memberDto) {
		String password=null;
		
		try {
			session=sqlSessionFactory.openSession();
			password=session.selectOne("findPwd", memberDto);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		
		return password;
	}
	
}

