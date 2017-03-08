package com.intelligentler.shuitu.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.intelligentler.shuitu.entity.Admin;
import com.intelligentler.shuitu.vo.AdminGroupVo;
import com.intelligentler.shuitu.vo.GroupPowerVo;

/**
 * admin Service接口
 * @author ming.zhou
 *
 */
public interface AdminService {
	
	public static Map<Object, Object> redisMap = new HashMap<Object, Object>();

	public Admin getAdminByName(String name);
	
	public Admin getAdminById(Integer aid);
	
	/**
	 * 分页获取admin表内容
	 * @param first
	 * @param max
	 * @return
	 */
	public List<AdminGroupVo> getAllAdmin(int first, int max);
	
	public List<AdminGroupVo> getAllAdminByName(String name, int first, int max);
	
	public int getAdminCount();
	
    public int getAdminCountByName(String name);
	
	public boolean addAdmin(Admin admin);
	
	public boolean deleteAdmin(Integer aid);
	
	/**
	 * 添加已经登录的管理员redis缓存
	 * @param sessionId
	 * @param aid
	 */
	public void addAdminRedis(String sessionId,Integer aid);
    
	/**
	 * 获取指定sessionId的redis缓存
	 * @param sessionId
	 * @return
	 */
	public Admin getAdminRedis(String sessionId);
	
	public List<GroupPowerVo> getAllGroupPower(int first, int limit);
	
	public int getGroupCount();
	
	public int getGroupCountByGname(String gname);
	
	public List<GroupPowerVo> getAllGroupByGname(String name, int first, int max);

}
