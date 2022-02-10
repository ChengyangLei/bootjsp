package com.huotn.bootjsp.bootjsp.service;

import com.huotn.bootjsp.bootjsp.mapper.TbGarbageMapper;
import com.huotn.bootjsp.bootjsp.pojo.TbGarbage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


/**
 * @Description: TbGarbageService
 *
 * @Auther: leichengyang
 * @Date: 2019/7/5 0005
 * @Version 1.0
 */
@Service
public class TbGarbageService {

    @Autowired
    private TbGarbageMapper tbGarbageMapper;


    public TbGarbage getGCategory(String gcName) {
        TbGarbage gCategory = tbGarbageMapper.getGCategory(gcName);
        return gCategory;
    }
}
