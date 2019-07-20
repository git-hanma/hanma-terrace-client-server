package com.hanma.hanmaterraceclientserver.terrace.service.impl;

import com.hanma.hanmaterraceclientserver.terrace.domain.Terrace;
import com.hanma.hanmaterraceclientserver.terrace.service.TerraceService;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by p on 2019/7/15.
 */
@Component
public class TerraceServiceImpl implements TerraceService {

    /**
     * 熔断器   进入错误方法
     * @param stuName
     * @return
     */
    @Override
    public String queryStuName(String stuName) {
        return "进入错误方法";
    }


    /**
     * 根据Id 查询
     * @param terraceId
     * @return
     */

    @Override
    public Terrace getQueryId(Long terraceId) {
        return null;
    }

    @Override
    public void deleteFun(Long merchantId) {

    }

    @Override
    public String updateTerrace(Terrace terrace) {
        return null;
    }


    /**
     * 查询
     * @return
     */
    @Override
    public List<Terrace> terraceQueryList() {
        return null;
    }

    /**
     * 新增
     * @param terrace
     * @return
     */
    @Override
    public String addTerraceSave(Terrace terrace) {
        return null;
    }
}
