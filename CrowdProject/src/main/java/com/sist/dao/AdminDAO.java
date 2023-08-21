package com.sist.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Select;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sist.mapper.AdminMapper;
import com.sist.vo.CrowdFundVO;
import com.sist.vo.CrowdStoreVO;

@Repository
public class AdminDAO {
	@Autowired
	private AdminMapper mapper;
	
	public List<CrowdStoreVO> crowdStoreListData(Map map) {
		return mapper.crowdStoreListData(map);
	}

	public List<CrowdFundVO> crowdFundListData(Map map) {
		return mapper.crowdFundListData(map);
	}
	
	public int storeTotalPage() {
		return mapper.storeTotalPage();
	}
	
	public int fundTotalPage() {
		return mapper.fundTotalPage();
	}
	
}
