package com.ict.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ict.dao.MyDAO;
import com.ict.vo.VO;

@Service("myServiceImpl")
public class MyServiceImpl implements MyService{
	@Autowired
	private MyDAO myDAO;
	
	@Override
	public List<VO> selectAll() throws Exception {
		
		return myDAO.selectAll();
	}

	@Override
	public int insertGuestBook2(VO vo) throws Exception {
		return myDAO.insertGuestBook2(vo);
		
	}

	@Override
	public VO selectOne(String idx) throws Exception {
		return myDAO.selectOne(idx);
	}

	@Override
	public void updateGuestBook2(VO vo) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteGuestbook2(String idx) throws Exception {
		myDAO.deleteGuestbook2(idx);
		
	}

}
