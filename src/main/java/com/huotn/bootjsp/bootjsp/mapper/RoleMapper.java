package com.huotn.bootjsp.bootjsp.mapper;

import com.huotn.bootjsp.bootjsp.pojo.Role;
import org.apache.ibatis.annotations.*;

import java.util.List;

/**
 * @Description: RoleMapper
 *
 * @Auther: leichengyang
 * @Date: 2019/4/29 0029
 * @Version 1.0
 */
@Mapper
public interface RoleMapper {

    @Select("select * from t_role")
    List<Role> findAll();

    @Insert("insert into t_role(name,type)values(#{name},#{type})")
    int add(Role role);

    @Delete("delete from t_role where id=#{id}")
    int delRole(Role role);

    @Select("select * from t_role where name=#{name}")
    Role getRole(String rolename);

    @Update("update t_role set name=#{name} where id=#{id}")
    int updateRole(Role role);

    @Select("select * from t_role where id=#{id}")
    Role getRoleById(String id);

}
