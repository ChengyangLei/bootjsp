package com.huotn.bootjsp.bootjsp.service;

import com.huotn.bootjsp.bootjsp.mapper.VaccineMapper;
import com.huotn.bootjsp.bootjsp.pojo.Vaccine;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Description: VaccineService
 * @Company: 深圳市东深电子股份有限公司
 * @Auther: leichengyang
 * @Date: 2019/6/28 0028
 * @Version 1.0
 */
@Service
public class VaccineService {

    @Autowired
    private VaccineMapper vaccineMapper;

    public List<Vaccine> findAll() {
        return vaccineMapper.findAll();
    }

    public List<String> getAreaList() {
        return vaccineMapper.getAreaList();
    }

    public List<Vaccine> getVaccineList(String name, String areaName) {
        return vaccineMapper.getVaccineList(name,areaName);
    }
}
