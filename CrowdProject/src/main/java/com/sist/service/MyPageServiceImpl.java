package com.sist.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sist.mapper.MyPageMapper;
import com.sist.vo.MemberVO;


@Service
public class MyPageServiceImpl implements MyPageService {
	@Autowired
	private MyPageMapper mapper;
	
	@Override
	public MemberVO myInfo(String id) {
		return mapper.myInfo(id);
	}
	
	@Override
	public void myImageInsert(MemberVO vo) {
		mapper.myImageInsert(vo);
	}

	@Override
	public void myInfoUpdate(MemberVO vo) {
		mapper.myInfoUpdate(vo);
	}

	@Override
	public void myProfileUpdate(MemberVO vo) {
		mapper.myProfileUpdate(vo);
	}
}
