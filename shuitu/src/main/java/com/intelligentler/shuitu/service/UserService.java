package com.intelligentler.shuitu.service;

import java.util.List;


import com.intelligentler.shuitu.entity.TblUser;

/**
 * 用户Service接口
 * @author ming.zhou
 *
 */
public interface UserService {
	
	/**
	 * 获取用户所有的信息
	 * @param user
	 * @return
	 */
	public List<TblUser> getAllUser();
	
	/**
	 * 新增信息
	 * @param user
	 * @return
	 */
	public int insertUser(TblUser user);

}
