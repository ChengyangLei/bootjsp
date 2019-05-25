package com.huotn.bootjsp.bootjsp.mapper;

import com.huotn.bootjsp.bootjsp.pojo.TbGarbage;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

/**
 * @Description: TbGarbageMapper
 * @Company: 深圳市东深电子股份有限公司
 * @Auther: leichengyang
 * @Date: 2019/7/5 0005
 * @Version 1.0
 */
@Mapper
public interface TbGarbageMapper {

    @Select("select * from tb_garbage where name like #{gcName}  LIMIT 1")
    TbGarbage getGCategory(@Param("gcName") String gcName);
}
