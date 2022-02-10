package com.huotn.bootjsp.bootjsp.service;

import com.huotn.bootjsp.bootjsp.mapper.RoleMapper;
import com.huotn.bootjsp.bootjsp.pojo.Role;
import com.huotn.bootjsp.bootjsp.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Description: RoleService
 *
 * @Auther: leichengyang
 * @Date: 2019/4/29 0029
 * @Version 1.0
 */
@Service
public class RoleService {

    @Autowired
    private RoleMapper roleMapper;

    public List<Role> findAll() {
        return roleMapper.findAll();
    }

    public int add(Role role) {
        return roleMapper.add(role);
    }

    public int delRole(Role role) {
        return roleMapper.delRole(role);

    }

    public Role getRoleById(String id) {
        return roleMapper.getRoleById(id);
    }

    public int updateRole(Role role) {
        return roleMapper.updateRole(role);
    }
}
