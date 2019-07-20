package com.hanma.hanmaterraceclientserver.terrace.server.impl;

import com.hanma.hanmaterraceclientserver.terrace.domain.ResultMsg;
import com.hanma.hanmaterraceclientserver.terrace.domain.TerraceVO;
import com.hanma.hanmaterraceclientserver.terrace.server.TerraceServer;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 小妞 on 2019/7/16.
 */
@Component
public class TerraceServerImpl implements TerraceServer {
    @Override
    public List<TerraceVO> userListYh() {
        return null;
    }

    @Override
    public List<TerraceVO> userYg() {
        return null;
    }

    @Override
    public ResultMsg LogonBy(String staffPhone, String staffPass) {
        return null;
    }


}
