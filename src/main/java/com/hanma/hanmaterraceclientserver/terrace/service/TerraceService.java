package com.hanma.hanmaterraceclientserver.terrace.service;

import com.hanma.hanmaterraceclientserver.terrace.domain.ResultMsg;
import com.hanma.hanmaterraceclientserver.terrace.domain.TerraceVO;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * Created by 小妞 on 2019/7/16.
 */
@FeignClient(value="HANMA-TERRACE-SERVER",fallback = TerraceService.class)
public interface TerraceService {
    @RequestMapping(value = "TerraceController/userListYh",method = RequestMethod.GET)
    List<TerraceVO> userListYh();
    //员工查询
    @RequestMapping(value = "TerraceController/userYg",method = RequestMethod.GET)
    List<TerraceVO> userYg();
    @RequestMapping(value = "TerraceController/LogonBy",method = RequestMethod.GET)
    ResultMsg LogonBy(@RequestParam("staffPhone") String staffPhone, @RequestParam("staffPass") String staffPass);
}
