package com.intelligentler.shuitu.controller;

//import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

/**
 * @author ming.zhou
 * 测试
 */
@Controller
public class HomeController {

//    private static  final Logger logger = Logger.getLogger(HomeController.class);

    /**
     * 测试
     * @param request
     * @return
     */
    @RequestMapping(value = {"/main"},method={RequestMethod.GET,RequestMethod.POST})
    public String login(HttpServletRequest request, Model model){
//        logger.info("[HomeController][index]-user");
//        logger.info("[HomeController][index]-sessionId"+request.getRequestedSessionId());
        return "../../home";
    }
    
}
