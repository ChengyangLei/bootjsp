package com.huotn.bootjsp.bootjsp.mapper;

import com.huotn.bootjsp.bootjsp.pojo.Menu;
import org.apache.ibatis.annotations.*;

import java.util.List;

/**
 * @Description: MenuMapper
 * @Company: 深圳市东深电子股份有限公司
 * @Auther: leichengyang
 * @Date: 2019/4/29 0029
 * @Version 1.0
 */
@Mapper
public interface MenuMapper {

    @Select("select * from t_menu")
    List<Menu> findAll();

    @Insert("insert into t_menu(name,pid,sort,url)values(#{name},#{pid},#{sort},#{url})")
    int add(Menu role);

    @Delete("delete from t_menu where id=#{id}")
    int delMenu(Menu role);

    @Select("select * from t_menu where name=#{name}")
    Menu getMenu(String rolename);

    @Update("update t_menu set name=#{name} where id=#{id}")
    int updateMenu(Menu role);

    @Select("select * from t_menu where id=#{id}")
    Menu getMenuById(String id);

}
