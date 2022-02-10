package com.huotn.bootjsp.bootjsp.mapper;

/**
 * @Description: UserMapper
 *
 * @Auther: leichengyang
 * @Date: 2019/4/28 0028
 * @Version 1.0
 */

import com.huotn.bootjsp.bootjsp.pojo.User;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface UserMapper {

    @Select("select * from t_user")
    List<User> findAll();

    @Insert("insert into t_user(username,password)values(#{username},#{password})")
    int add(User user);

    @Delete("delete from t_user where id=#{id}")
    int delUser(User user);

    @Select("select * from t_user where username=#{username}")
    User getUser(String username);

    @Update("update t_user set username=#{username} where id=#{id}")
    int updateUser(User user);

    @Select("select * from t_user where id=#{id}")
    User getUserById(String id);
}
