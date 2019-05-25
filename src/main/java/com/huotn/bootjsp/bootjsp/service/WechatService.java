package com.huotn.bootjsp.bootjsp.service;

import javax.servlet.http.HttpServletRequest;

/**
 * @Description: WechatService
 * @Company: 深圳市东深电子股份有限公司
 * @Auther: leichengyang
 * @Date: 2019/4/30 0030
 * @Version 1.0
 */
public interface WechatService {
    String processRequest(HttpServletRequest request);
}
