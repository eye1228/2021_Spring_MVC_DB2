package com.ict.dao;

import java.util.List;

import com.ict.vo.VO;

public interface MyDAO {
	//리스트
	List<VO> selectAll() throws Exception;
	//삽입
	int insertGuestBook2(VO vo) throws Exception;
	//상세보기
	VO selectOne(String idx) throws Exception;	
	//수정
	void updateGuestBook2(VO vo)  throws Exception;
	//삭제
	void deleteGuestbook2(String idx) throws Exception;
}
