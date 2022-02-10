package com.huotn.bootjsp.bootjsp.service;

import javax.servlet.http.HttpServletRequest;

/**
 * @Description: WechatService
 *
 * @Auther: leichengyang
 * @Date: 2019/4/30 0030
 * @Version 1.0
 */
public interface WechatService {
    String processRequest(HttpServletRequest request);
}
