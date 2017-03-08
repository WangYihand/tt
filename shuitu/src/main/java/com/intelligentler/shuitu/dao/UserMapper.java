package com.intelligentler.shuitu.dao;

import java.util.List;

import org.springframework.data.repository.query.Param;

import com.intelligentler.shuitu.entity.TblUser;


/**
 * 用户dao接口
 * @author ming.zhou
 *
 */
public interface UserMapper {

	/**
	 * 新增信息
	 * @param user
	 * @return
	 */
	public int insertUser(@Param("user") TblUser user);
	
	/**
	 * 获取用户所有的信息
	 * @param user
	 * @return
	 */
	public List<TblUser> getAllUser();
}
