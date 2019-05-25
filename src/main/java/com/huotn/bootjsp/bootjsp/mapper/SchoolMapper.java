package com.huotn.bootjsp.bootjsp.mapper;

import com.huotn.bootjsp.bootjsp.pojo.Land;
import com.huotn.bootjsp.bootjsp.pojo.School;
import org.apache.ibatis.annotations.*;

import java.util.List;

/**
 * @Description: LandMapper
 * @Company: 深圳市东深电子股份有限公司
 * @Auther: leichengyang
 * @Date: 2019/4/28 0028
 * @Version 1.0
 */
@Mapper
public interface SchoolMapper {
    @Select("select address from school where 1=1 ")
    List<String> findAll();

    @Select("select * from school where id=#{id}")
    School getSchoolById(String id);

    @Select("select address from school where address like #{name}")
    List<String> getListByName(String name);

    @Select("select * from school")
    List<School> getSchoolList();

    @Select("select * from school where name like #{name}")
    List<School> getSchoolListByParam(@Param("name") String name);
}
