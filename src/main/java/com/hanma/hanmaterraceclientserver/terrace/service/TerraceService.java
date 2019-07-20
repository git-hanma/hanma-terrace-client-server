package com.hanma.hanmaterraceclientserver.terrace.service;

import com.hanma.hanmaterraceclientserver.terrace.domain.ResultMsg;
import com.hanma.hanmaterraceclientserver.terrace.domain.TerraceVO;
import com.hanma.hanmaterraceclientserver.terrace.service.impl.TerraceServiceImpl;
import org.springframework.cloud.openfeign.FeignClient;
import com.hanma.hanmaterraceclientserver.terrace.domain.Terrace;
import com.hanma.hanmaterraceclientserver.terrace.service.impl.TerraceServiceImpl;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * Created by p on 2019/7/15.
 */
@FeignClient(value = "HANMA-TERRACE-SERVER",fallback = TerraceServiceImpl.class)
public interface TerraceService {

    /**
     * 调用服务查询接口
     * @return
     */
    @RequestMapping(value = "/terrace/terraceQueryList" ,method = RequestMethod.GET)
    List<Terrace> terraceQueryList();

    /**
     * 调用商户注入接口
     * @param terrace
     * @return
     */
    @RequestMapping(value = "/terrace/addTerraceSave" ,method = RequestMethod.POST)
    String addTerraceSave(Terrace terrace);

    /**
     * 熔断器 进入错误方法
     * @param stuName
     * @return
     */
    @RequestMapping("/terrace/queryStuName")
    public String queryStuName(@RequestParam(value = "stuName") String stuName);


    /**
     * 根据Id回显数据
     * @param
     * @return
     */
    @RequestMapping(value = "/terrace/getQueryId",method = RequestMethod.GET)
    Terrace getQueryId(@RequestParam(name = "id") Long terraceId);

    /**
     *状态删除
     * @param merchantId
     */
    @RequestMapping(value = "/terrace/deleteFun")
    void deleteFun(@RequestParam(name = "merchantId") Long merchantId);


    @RequestMapping(value = "/terrace/updateTerrace")
    String updateTerrace(@RequestBody Terrace terrace);


    @RequestMapping(value = "TerraceController/userListYh",method = RequestMethod.GET)
    List<TerraceVO> userListYh();
    //员工查询
    @RequestMapping(value = "TerraceController/userYg",method = RequestMethod.GET)
    List<TerraceVO> userYg();
    @RequestMapping(value = "TerraceController/LogonBy",method = RequestMethod.GET)
    ResultMsg LogonBy(@RequestParam("staffPhone") String staffPhone, @RequestParam("staffPass") String staffPass);
}
