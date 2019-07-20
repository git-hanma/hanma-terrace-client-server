package com.hanma.hanmaterraceclientserver.terrace.controller;

import com.hanma.hanmaterraceclientserver.terrace.domain.Terrace;
import com.hanma.hanmaterraceclientserver.terrace.service.TerraceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


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


@Controller
@RequestMapping("terr")
public class TerrController {


    @Autowired
    private TerraceService terraceService;


    /**
     *
     * 调用后台查询方法
     * @return
     */
    @RequestMapping("terraceQueryList")
    @ResponseBody
    public ModelAndView terraceQueryList(){
        ModelAndView mav = new ModelAndView("/reception/view/shopList");
        List<Terrace> list = terraceService.terraceQueryList();
        System.out.println(list.toString());
        mav.addObject("list",list);
        return mav;
    }


    /**
     * 获取添加页面
     * @param
     * @return
     */
    @RequestMapping("addDialog")
    public ModelAndView addDialog(){
        ModelAndView mav = new ModelAndView("/reception/view/addterrace");
        return mav;
    }

    /**
     * 商家新增注入店铺
     * @param terrace
     * @return
     */
    @RequestMapping("addTerraceSave")
    @ResponseBody
    public ModelAndView addTerraceSave(Terrace terrace){
        ModelAndView mav = new ModelAndView("/reception/view/addterrace");
        String add = terraceService.addTerraceSave(terrace);
        mav.addObject("add",add);
        return mav;
    }

    /**
     * 根据Id查询 回显
     * @param terraceId
     * @return
     */
    @RequestMapping(method = RequestMethod.GET,value = "getQueryId",produces = "text/html;charset=UTF-8")
    @ResponseBody
    public ModelAndView getQueryId(@RequestParam(name = "terraceId") Long terraceId){
        ModelAndView mav = new ModelAndView("/reception/view/updateterrace");
        Terrace queryId = terraceService.getQueryId(terraceId);
        Map<String,Terrace> map =new HashMap<String ,Terrace>();
        map.put("queryId",queryId);
        mav.addAllObjects(map);
        System.out.println(queryId);
       // mav.addObject("queryId",queryId);
        return mav;
    }


    @RequestMapping(value = "deleteFun")
    @ResponseBody
    public void   deleteFun(@RequestParam(name = "merchantId") Long merchantId){
        terraceService.deleteFun(merchantId);
    }


    @RequestMapping("updateTerrace")
    @ResponseBody
    public String updateTerrace(Terrace terrace){
        return terraceService.updateTerrace(terrace);
    }

    /**
     * 进入错误方法
     * @param stuName
     * @return
     */
    @RequestMapping("queryStuName")
    @ResponseBody
    public String queryStuName(String stuName){
        return terraceService.queryStuName(stuName);
    }

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
