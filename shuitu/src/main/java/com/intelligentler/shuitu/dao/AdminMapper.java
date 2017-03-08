package com.intelligentler.shuitu.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.intelligentler.shuitu.entity.Admin;
import com.intelligentler.shuitu.entity.AdminGroup;
import com.intelligentler.shuitu.vo.AdminGroupVo;

/**
 * admin dao层接口
 * @author ming.zhou
 *
 */
public interface AdminMapper {
	
    public int deleteByPrimaryKey(Integer id);

    public int insert(Admin record);

    public int insertSelective(Admin record);

    public Admin selectByName(@Param("name") String name);
    
    public Admin selectByPrimaryKey(Integer id);
    
    public Admin selectBySid(@Param("sid")String sid);
    
    public Admin selectByIdAndSid(@Param("id")Integer id, @Param("sid")String sid);
    
    /**
     * 分页获取admin表内容
     * @param first
     * @param max
     * @return
     */
    public List<AdminGroupVo> getAllAdmin(@Param("first")int first, @Param("limit") int limit);
    
    public List<AdminGroupVo> getAllAdminByName(@Param("name")String name, @Param("first")int first, @Param("limit") int limit);

    public int getAdminCount();
    
    public int getAdminCountByName(@Param("name")String name);
    
    public List<AdminGroup> getAllGroup(@Param("first")int first, @Param("limit") int limit);
    
    public int getGroupCountByGname(@Param("name")String name);
    
    public List<AdminGroup> getAllGroupByGname(@Param("name")String name, @Param("first")int first, @Param("limit") int limit);
    
    public int getGroupCount();
    
    public int updateSid(@Param("id")Integer id, @Param("sid")String sid);
    
    public int updateByPrimaryKeySelective(Admin record);

    public int updateByPrimaryKey(Admin record);
}