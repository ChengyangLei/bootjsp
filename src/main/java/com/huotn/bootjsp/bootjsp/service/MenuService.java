package com.huotn.bootjsp.bootjsp.service;

import com.huotn.bootjsp.bootjsp.mapper.MenuMapper;
import com.huotn.bootjsp.bootjsp.pojo.Menu;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Description: MenuService
 *
 * @Auther: leichengyang
 * @Date: 2019/4/29 0029
 * @Version 1.0
 */
@Service
public class MenuService {

    @Autowired
    private MenuMapper menuMapper;

    public List<Menu> findAll() {
        return menuMapper.findAll();
    }

    public int add(Menu role) {
        return menuMapper.add(role);
    }

    public int delMenu(Menu role) {
        return menuMapper.delMenu(role);

    }

    public Menu getMenuById(String id) {
        return menuMapper.getMenuById(id);
    }

    public int updateMenu(Menu role) {
        return menuMapper.updateMenu(role);
    }
}
