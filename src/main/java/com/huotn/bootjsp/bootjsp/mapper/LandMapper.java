package com.huotn.bootjsp.bootjsp.mapper;

import com.huotn.bootjsp.bootjsp.pojo.Land;
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
public interface LandMapper {
    @Select("select * from t_land")
    List<Land> findAll();

    @Insert("insert into t_land(name,area,owner)values(#{name},#{area},#{owner})")
    int add(Land land);

    @Delete("delete from t_land where id=#{id}")
    int delLand(Land land);

    @Update("update t_land set name=#{name},area=#{area},owner=#{owner} where id=#{id}")
    int updateLand(Land land);

    @Select("select * from t_land where id=#{id}")
    Land getLandById(String id);
}
