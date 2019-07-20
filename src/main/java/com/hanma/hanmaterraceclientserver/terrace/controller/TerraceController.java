package com.hanma.hanmaterraceclientserver.terrace.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

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
