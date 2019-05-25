package com.huotn.bootjsp.bootjsp.service;

import com.huotn.bootjsp.bootjsp.mapper.LandMapper;
import com.huotn.bootjsp.bootjsp.mapper.UserMapper;
import com.huotn.bootjsp.bootjsp.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Description: UserService
 * @Company: 深圳市东深电子股份有限公司
 * @Auther: leichengyang
 * @Date: 2019/4/28 0028
 * @Version 1.0
 */
@Service
public class UserService {

    @Autowired
    private UserMapper userMapper;

    public List<User> findAll() {
        return userMapper.findAll();
    }

    public int add(User user) {
        return userMapper.add(user);
    }

    public int delUser(User user) {
        return userMapper.delUser(user);

    }

    public User getUserById(String id) {
        return userMapper.getUserById(id);
    }

    public int updateUser(User user) {
        return userMapper.updateUser(user);
    }

    public User getUser(String username) {
        return userMapper.getUser(username);
    }
}
