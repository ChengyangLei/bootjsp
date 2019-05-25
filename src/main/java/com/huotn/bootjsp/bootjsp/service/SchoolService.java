package com.huotn.bootjsp.bootjsp.service;

import com.huotn.bootjsp.bootjsp.mapper.LandMapper;
import com.huotn.bootjsp.bootjsp.mapper.SchoolMapper;
import com.huotn.bootjsp.bootjsp.pojo.Land;
import com.huotn.bootjsp.bootjsp.pojo.School;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Description: SchoolService
 * @Company: 深圳市东深电子股份有限公司
 * @Auther: leichengyang
 * @Date: 2019/5/24
 * @Version 1.0
 */
@Service
public class SchoolService {
    @Autowired
    private SchoolMapper schoolMapper;

    public List<String> findAll(){
        return schoolMapper.findAll();
    }

    public List<String> getListByName(String name) {
        return schoolMapper.getListByName(name);
    }

    public List<School> getSchoolList() {
        return schoolMapper.getSchoolList();
    }

    public List<School> getSchoolListByParam(String name) {
        return schoolMapper.getSchoolListByParam(name);
    }
}
