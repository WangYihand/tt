package com.intelligentler.shuitu.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.intelligentler.shuitu.dao.AdminMapper;
import com.intelligentler.shuitu.dao.PowerMapper;
import com.intelligentler.shuitu.entity.Admin;
import com.intelligentler.shuitu.entity.AdminGroup;
import com.intelligentler.shuitu.service.AdminService;
import com.intelligentler.shuitu.vo.AdminGroupVo;
import com.intelligentler.shuitu.vo.GroupPowerVo;


@Service("adminService")
public class AdminServiceImpl implements AdminService {
	
//	private static  final org.apache.log4j.Logger logger = Logger.getLogger(AdminServiceImpl.class);
	
//	private static final String ADMIN_SUFFIX = "101";
	
	@Autowired
    private AdminMapper adminMapper;
	
	@Autowired
    private PowerMapper powerMapper;
	
//	@Autowired
//    protected RedisTemplate<Serializable, Serializable> redisTemplate;
	
	@Override
	public boolean addAdmin(Admin admin) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteAdmin(Integer aid) {
		// TODO Auto-generated method stub
		return false;
	}
	
	@Override
    public Admin getAdminByName(String name) {
        Admin result = null;
        try {
            result = adminMapper.selectByName(name);
        }catch (Exception e){
//            logger.error("[AdminServiceImpl][getAdminByName] name -"+name+e.getCause());
        }
        return result;
    }

	@Override
	public void addAdminRedis(String sessionId, Integer aid) {
//		if(null != sessionId && null != aid){
//			Iterator<Map.Entry<Object, Object>> it = redisMap.entrySet().iterator();
//			while (it.hasNext()) {
//				Map.Entry<Object, Object> entry = it.next();
//			    if (aid == entry.getValue()) {
//					it.remove();
//					break;
//			    }
//			}
//			redisMap.put(sessionId+ADMIN_SUFFIX,aid);
//	    }
		if (null != sessionId && null != aid) {
			adminMapper.updateSid(aid, sessionId);
		}
	}

	@Override
	public Admin getAdminRedis(String sessionId) {
		if(null == sessionId){
            return  null;
        }
//        if(null == redisTemplate.opsForValue().get(sessionId+ADMIN_SUFFIX)){
//        if(null == redisMap.get(sessionId+ADMIN_SUFFIX)){
//            return  null;
//        }
		Admin admin = adminMapper.selectBySid(sessionId);
		if (null == admin) {
			return null;
		}
		//sessionId存在即用户登录过 但sessionId可能发生变化（比如用户换浏览器或session过期）
		Admin sAdmin = adminMapper.selectByIdAndSid(admin.getId(), sessionId);
//		if (null == sAdmin) {//sessionId发生了变化，更新最新的session
//			adminMapper.updateSid(admin.getId(), sessionId);
//		}
		return sAdmin;
//        Integer aid = (Integer)redisMap.get(sessionId+ADMIN_SUFFIX);
//        return adminMapper.selectByPrimaryKey(aid);
	}

	@Override
	public Admin getAdminById(Integer aid) {
		return adminMapper.selectByPrimaryKey(aid);
	}

	@Override
	public List<AdminGroupVo> getAllAdmin(int first, int limit) {
		List<AdminGroupVo> adminGroupVos = adminMapper.getAllAdmin(first, limit);
		for (int i = 0; i < adminGroupVos.size(); i++) {
			adminGroupVos.get(i).setCurrentRow(first+i+1);
		}
		return adminGroupVos;
	}

	@Override
	public List<AdminGroupVo> getAllAdminByName(String name, int first, int limit) {
		List<AdminGroupVo> adminGroupVos = adminMapper.getAllAdminByName(name, first, limit);
		for (int i = 0; i < adminGroupVos.size(); i++) {
			adminGroupVos.get(i).setCurrentRow(first+i+1);
		}
		return adminGroupVos;
	}

	@Override
	public int getAdminCount() {
		return adminMapper.getAdminCount();
	}

	@Override
	public int getAdminCountByName(String name) {
		return adminMapper.getAdminCountByName(name);
	}

	@Override
	public List<GroupPowerVo> getAllGroupPower(int first, int limit) {
		List<GroupPowerVo> result = new ArrayList<GroupPowerVo>();
		List<AdminGroup> groups = adminMapper.getAllGroup(first, limit);
		for (int i=0; i<groups.size(); i++) {
			GroupPowerVo powerVo = new GroupPowerVo();
			List<GroupPowerVo> groupPowerVos = powerMapper.getAllGroupPowerBygid(groups.get(i).getId());
			List<String> powerStr = new ArrayList<String>();
			for (GroupPowerVo groupPowerVo : groupPowerVos) {
				powerStr.add(groupPowerVo.getPname());
			}
			powerVo.setGid(groups.get(i).getId());
			powerVo.setGname(groups.get(i).getName());
			powerVo.setPname(StringUtils.join(powerStr, ","));
			powerVo.setCurrentRow(first+i+1);
			result.add(powerVo);
		}
//		List<GroupPowerVo> groupPowerVos = powerMapper.getAllGroupPower();
//		for (GroupPowerVo groupPowerVo : groupPowerVos) {
//			int gid = groupPowerVo.getGid();
//			
//		}
		return result;
	}

	@Override
	public int getGroupCount() {
		return adminMapper.getGroupCount();
	}

	@Override
	public int getGroupCountByGname(String gname) {
		return adminMapper.getGroupCountByGname(gname);
	}

	@Override
	public List<GroupPowerVo> getAllGroupByGname(String name, int first, int max) {
		List<GroupPowerVo> result = new ArrayList<GroupPowerVo>();
		List<AdminGroup> groups = adminMapper.getAllGroupByGname(name, first, max);
		for (int i=0; i<groups.size(); i++) {
			GroupPowerVo powerVo = new GroupPowerVo();
			List<GroupPowerVo> groupPowerVos = powerMapper.getAllGroupPowerBygid(groups.get(i).getId());
			List<String> powerStr = new ArrayList<String>();
			for (GroupPowerVo groupPowerVo : groupPowerVos) {
				powerStr.add(groupPowerVo.getPname());
			}
			powerVo.setGid(groups.get(i).getId());
			powerVo.setGname(groups.get(i).getName());
			powerVo.setPname(StringUtils.join(powerStr, ","));
			powerVo.setCurrentRow(first+i+1);
			result.add(powerVo);
		}
		return result;
	}


}
