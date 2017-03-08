package com.intelligentler.shuitu.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.intelligentler.shuitu.vo.GroupPowerVo;

public interface PowerMapper {
	
	public List<GroupPowerVo> getAllGroupPowerBygid(@Param("gid")Integer gid);
}
