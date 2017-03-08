package com.intelligentler.shuitu.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.intelligentler.shuitu.bean.Result;
import com.intelligentler.shuitu.entity.Admin;
import com.intelligentler.shuitu.service.AdminService;

/**
 * 登录controller
 * @author ming.zhou
 *
 */
@Controller
@RequestMapping({"/","/sign"})
public class SignController extends BasicController{
	
	public static final String CURRENT_ADMIN = "current_admin";
	
	@Autowired
    private AdminService adminService;

	 /**
     * 管理员登录页面
     * @param request
     * @param model
     * @return
     */
    @RequestMapping(value ={"/"},method={RequestMethod.GET,RequestMethod.POST})
    public String in(HttpServletRequest request, Model model,HttpServletResponse response) throws  Exception{
    	//用户设置“记住” 则直接进入系统
    	Cookie[] cookies = request.getCookies();
    	if (cookies!=null) {
    		for (Cookie cookie : cookies) {
	    		if (cookie.getName().equals(CURRENT_ADMIN)) {
					Integer aid = Integer.valueOf(cookie.getValue());
					if (null != adminService.getAdminById(aid)) {
						return  "admin/user/admin";
					}
				}
			}
		}
	    return  "admin/sign";
    }
    
    /**
     * 进行登录操作
     * @param request
     * @param model
     * @return
     */
    @ResponseBody
    @RequestMapping(value ="/in",method={RequestMethod.GET,RequestMethod.POST})
    public Result signIn(HttpServletRequest request, Model model, HttpServletResponse response){
    	//获取用户名
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        String remember = request.getParameter("remember");
        Admin admin = adminService.getAdminByName(name);
        if(null == admin){
        	return new Result(CODE_FAILURE, STATUS_FAILURE, "用户不存在",null);
        }
        if(!password.equals(admin.getPassword())){
        	return new Result(CODE_FAILURE, STATUS_FAILURE, "用户密码输入错误",null);
        }
        
        //登录后将用户信息存储在缓存中
        HttpSession session = request.getSession(true);
        String sessionId = session.getId();
        adminService.addAdminRedis(sessionId,admin.getId());
        
        //记住用户操作
        if(remember.equals("1")){
            Cookie cookie = new Cookie(CURRENT_ADMIN,admin.getId().toString());
            cookie.setPath("/");
            response.addCookie(cookie);
        }
        
        return  new Result(CODE_SUCCESS,STATUS_SUCCESS,"用户登录成功",null);
    }
    
    /**
     * 验证用户
     * @param request
     * @param model
     * @return
     */
    @ResponseBody
    @RequestMapping(value ="/check",method={RequestMethod.GET,RequestMethod.POST})
    public Boolean checkAdminExist(HttpServletRequest request, Model model){
    	//获取用户名
        String name = request.getParameter("name");
        Admin admin = adminService.getAdminByName(name);
        //判断用户名是否存在
        if(null == admin){
            return  false;
        }
        
        //获取密码
        String password = request.getParameter("password");
        //判断密码是否正确
        if(null!=password && !password.equals(admin.getPassword())){
            return  false;
        }
        return  true;
    }
}
