package com.huotn.bootjsp.bootjsp.config.shiro;

import com.huotn.bootjsp.bootjsp.pojo.User;
import com.huotn.bootjsp.bootjsp.service.UserService;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.List;

/**
 * @Description: AuthRealm
 * @Company: 深圳市东深电子股份有限公司
 * @Auther: leichengyang
 * @Date: 2019/4/28 0028
 * @Version 1.0
 */
public class AuthRealm extends AuthorizingRealm {
    @Autowired
    private UserService userService;
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        User user = (User) principalCollection.fromRealm(this.getClass().getName()).iterator().next();
        List<String> permissionList = new ArrayList<>();
//        Set<Role> roleSet = user.getRoles();
//        List<String> roleNameList = new ArrayList<>();
//        if (!CollectionUtils.isEmpty(roleSet)) {
//            for (Role role : roleSet) {
//                roleNameList.add(role.getRname());
//                Set<Permission> permissions = role.getPermissions();
//                if (!CollectionUtils.isEmpty(permissions)) {
//                    for (Permission permission : permissions) {
//                        permissionList.add(permission.getPname());
//                    }
//                }
//            }
//        }
        SimpleAuthorizationInfo simpleAuthorizationInfo = new SimpleAuthorizationInfo();
        simpleAuthorizationInfo.addStringPermissions(permissionList);
//        simpleAuthorizationInfo.addRoles(roleNameList);
        return simpleAuthorizationInfo;
    }

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        UsernamePasswordToken usernamePasswordToken = (UsernamePasswordToken) authenticationToken;
        String username = usernamePasswordToken.getUsername();
        User user = userService.getUser(username);
        return new SimpleAuthenticationInfo(user, user.getPassword(), this.getClass().getName());
    }
}