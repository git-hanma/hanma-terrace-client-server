package com.hanma.hanmaterraceclientserver.terrace.controller;

import com.hanma.hanmaterraceclientserver.terrace.domain.ResultMsg;
import com.hanma.hanmaterraceclientserver.terrace.domain.TerraceVO;
import com.hanma.hanmaterraceclientserver.terrace.service.TerraceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 *
 * @author 小妞
 * @date 2019/7/16
 */
@Controller
@RequestMapping("terr")
public class TerrController {
    @Autowired
    private TerraceService terraceService;
    /**
     * 用户查询
     */
    @RequestMapping("userListYh")
    @ResponseBody
    public ModelAndView userListYh(){
        ModelAndView mav = new ModelAndView("/reception/view/userList");
        List<TerraceVO> userList = terraceService.userListYh();
        mav.addObject("user",userList);
        return mav;
    }

    //员工的基本信息
    @RequestMapping("userYg")
    @ResponseBody
    public ModelAndView userYg(){
        ModelAndView mav = new ModelAndView("/reception/view/userListYg");
        List<TerraceVO> userList = terraceService.userYg();
        mav.addObject("user",userList);
        return mav;
    }

    //员工登陆平台
    @RequestMapping("LogonBy")
    @ResponseBody
    public ResultMsg LogonBy(HttpServletRequest request, String staffPhone, String staffPass){
        ResultMsg resultMsg = terraceService.LogonBy(staffPhone,staffPass);
        return resultMsg;
    }


}
