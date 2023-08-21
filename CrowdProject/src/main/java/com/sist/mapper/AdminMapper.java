package com.sist.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Select;

import com.sist.vo.CrowdFundVO;
import com.sist.vo.CrowdStoreVO;

public interface AdminMapper {
	public List<CrowdStoreVO> crowdStoreListData(Map map);
	
	public List<CrowdFundVO> crowdFundListData(Map map);
	
	@Select("SELECT CEIL(COUNT(*)/10.0) FROM wadiz_store_detail")
	public int storeTotalPage();
	
	@Select("SELECT CEIL(COUNT(*)/10.0) FROM wadiz_fund_detail")
	public int fundTotalPage();
	
}
