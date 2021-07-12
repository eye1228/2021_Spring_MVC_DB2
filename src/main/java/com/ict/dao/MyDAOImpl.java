package com.ict.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ict.vo.VO;

@Repository("myDAOImpl")
public class MyDAOImpl implements MyDAO{
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public List<VO> selectAll() throws Exception {
		return sqlSessionTemplate.selectList("guestbook2.list");
	}

	@Override
	public int insertGuestBook2(VO vo) throws Exception {
		return sqlSessionTemplate.insert("guestbook2.insert", vo);
	}

	@Override
	public VO selectOne(String idx) throws Exception {
		return sqlSessionTemplate.selectOne("guestbook2.onelist",idx);
	}

	@Override
	public void updateGuestBook2(VO vo) throws Exception {
		
	}

	@Override
	public void deleteGuestbook2(String idx) throws Exception {
		sqlSessionTemplate.delete("guestbook2.delete",idx);
	}

}
