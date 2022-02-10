package com.huotn.bootjsp.bootjsp.service;

import com.huotn.bootjsp.bootjsp.mapper.LandMapper;
import com.huotn.bootjsp.bootjsp.pojo.Land;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Description: LandService
 *
 * @Auther: leichengyang
 * @Date: 2019/4/28 0028
 * @Version 1.0
 */
@Service
public class LandService {
    @Autowired
    private LandMapper landMapper;

    public List<Land> findAll(){
        return landMapper.findAll();
    }

    public int add(Land land){

        return landMapper.add(land);

    }

    public int delLand(Land land) {
        return landMapper.delLand(land);
    }

    public int updateLand(Land user) {
        return landMapper.updateLand(user);
    }

    public Land getLandById(String id) {
        return landMapper.getLandById(id);
    }
}
