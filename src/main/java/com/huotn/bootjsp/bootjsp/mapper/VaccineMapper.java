package com.huotn.bootjsp.bootjsp.mapper;

import com.huotn.bootjsp.bootjsp.pojo.Vaccine;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * @Description: VaccineMapper
 *
 * @Auther: leichengyang
 * @Date: 2019/6/28 0028
 * @Version 1.0
 */
@Mapper
public interface VaccineMapper {


    @Select("select * from vaccine")
    List<Vaccine> findAll();

    @Select("select area_name from vaccine group by area_name order by area_name")
    List<String> getAreaList();

    @Select("select * from vaccine where `name` like #{name} and area_name=#{areaName}")
    List<Vaccine> getVaccineList(@Param("name") String name,@Param("areaName") String areaName);
}
