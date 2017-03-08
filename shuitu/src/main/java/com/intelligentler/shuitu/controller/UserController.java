package com.intelligentler.shuitu.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.intelligentler.shuitu.bean.Result;
import com.intelligentler.shuitu.bean.TblResult;
import com.intelligentler.shuitu.constant.SysConstant;
import com.intelligentler.shuitu.entity.TblUser;
import com.intelligentler.shuitu.service.AdminService;
import com.intelligentler.shuitu.service.UserService;

/**
 * 用户controller
 * @author ming.zhou
 *
 */
@Controller
@RequestMapping(path="User",produces={"application/json"})
public class UserController extends BasicController{
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private AdminService adminService;
	
	/**
	 * 展示管理员管理页面
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping("admin")
	public String showAdmin(HttpServletRequest request, Model model){
		model.addAttribute("page_type", SysConstant.USER_ADMIN);
		return "admin/user/admin";
	}
	
	/**
	 * 展示权限管理页面
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping("power")
	public String showPower(HttpServletRequest request, Model model){
		model.addAttribute("page_type", SysConstant.USER_POWER);
		return "admin/user/power";
	}
	
	@RequestMapping("admin/list")
	@ResponseBody
	public TblResult getAllAdmin(HttpServletRequest request, Model model){
		TblResult result = new TblResult();
		result.setCode(CODE_FAILURE);
		result.setStatus(STATUS_FAILURE);
		result.setMsg("获取管理员信息失败，请重试！");
		
		String queryStr = "";
		try {
			queryStr = request.getParameter("search") != null?java.net.URLDecoder.decode(request.getParameter("search"),"utf-8"):"";
		} catch (UnsupportedEncodingException e) {
		}
		int limit = request.getParameter("limit") != null?Integer.valueOf(request.getParameter("limit")):10;
		int first = request.getParameter("offset") != null?Integer.valueOf(request.getParameter("offset")):0;
		if ("".equals(queryStr)) {
			result.setRows(adminService.getAllAdmin(first, limit));
			result.setTotal(adminService.getAdminCount());
			result.setCode(CODE_SUCCESS);
			result.setStatus(STATUS_SUCCESS);
			result.setMsg("");
		}else {
			result.setRows(adminService.getAllAdminByName("%"+queryStr+"%", first, limit));
			result.setTotal(adminService.getAdminCountByName("%"+queryStr+"%"));
			result.setCode(CODE_SUCCESS);
			result.setStatus(STATUS_SUCCESS);
			result.setMsg("");
		}
		return result;
	}
	
	@RequestMapping("power/list")
	@ResponseBody
	public TblResult getAllGroupPower(HttpServletRequest request, Model model){
		TblResult result = new TblResult();
		result.setCode(CODE_FAILURE);
		result.setStatus(STATUS_FAILURE);
		result.setMsg("获取权限信息失败，请重试！");
		
		String queryStr = "";
		try {
			queryStr = request.getParameter("search") != null?java.net.URLDecoder.decode(request.getParameter("search"),"utf-8"):"";
		} catch (UnsupportedEncodingException e) {
		}
		int limit = request.getParameter("limit") != null?Integer.valueOf(request.getParameter("limit")):10;
		int first = request.getParameter("offset") != null?Integer.valueOf(request.getParameter("offset")):0;
		if ("".equals(queryStr)) {
			result.setRows(adminService.getAllGroupPower(first, limit));
			result.setTotal(adminService.getGroupCount());
			result.setCode(CODE_SUCCESS);
			result.setStatus(STATUS_SUCCESS);
			result.setMsg("");
		}else {
			result.setRows(adminService.getAllGroupByGname("%"+queryStr+"%", first, limit));
			result.setTotal(adminService.getGroupCountByGname("%"+queryStr+"%"));
			result.setCode(CODE_SUCCESS);
			result.setStatus(STATUS_SUCCESS);
			result.setMsg("");
		}
		return result;
	}
	
	@RequestMapping("getAllUserJson")
	@ResponseBody
	public Result getAllUserJson(HttpServletRequest request, Model model){
		List<TblUser> users = userService.getAllUser();
		if (users.size()>0) {
			return new Result(CODE_SUCCESS, STATUS_SUCCESS, "", users);
		}else {
			return new Result(CODE_FAILURE, STATUS_FAILURE, "", users);
		}
		
	}
}
