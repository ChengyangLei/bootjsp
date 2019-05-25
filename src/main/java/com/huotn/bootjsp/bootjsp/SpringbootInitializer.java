package com.huotn.bootjsp.bootjsp;

import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Configuration;

/**
 * @Description: 解决问题：打成war包后，访问项目报404
 * @Company: 深圳市东深电子股份有限公司
 * @Auther: leichengyang
 * @Date: 2019/4/26 0026
 * @Version 1.0
 */
@Configuration
public class SpringbootInitializer extends SpringBootServletInitializer  {

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(BootjspApplication.class);
    }

}
