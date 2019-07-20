package com.hanma.hanmaterraceclientserver.terrace.controller;

import com.hanma.hanmaterraceclientserver.terrace.domain.TerraceVO;
import com.hanma.hanmaterraceclientserver.terrace.server.TerraceServer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("terrace")
public class TerraceController {

    /**
     * 跳转index
     */
    @RequestMapping("toIndex")
    public String toIndex(){
        return "/reception/index";
    }
    /**
     * 跳转login
     */
    @RequestMapping("toLogin")
    public String toLogin(){
        return "/reception/login";
    }
    /**
     * 通用跳转页面方法
     * @param url
     * @return
     */
    @RequestMapping("{url}")
    public String toUrl(@PathVariable("url") String url){
        return "/reception/view/"+url;
    }


}
