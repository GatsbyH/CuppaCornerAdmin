package com.cuppacorner.android.utils;

import lombok.Data;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

// 这个类不写也可以，那就在发送短信的方法里直接填容联云的配置值
@ConfigurationProperties(prefix = "rckj") //会从yml中找到对应的配置项，直接赋值给当前类的属性
@Component
@Data
public class SmsProperties implements InitializingBean {
    private String accountSID;
    private String accountToken;
    private String appId;
    private String serverIp;
    private String serverPort;

    public static String ACCOUNT_SID;
    public static String ACCOUNT_Token;
    public static String APP_ID;
    public static String SERVER_IP;
    public static String SERVER_PORT;

    //继承的InitializingBean类，重写这个方法就是当私有属性被赋值之后（from app.yml），才执行的
    @Override
    public void afterPropertiesSet() throws Exception {
        ACCOUNT_SID=accountSID;
        ACCOUNT_Token=accountToken;
        APP_ID=appId;
        SERVER_IP=serverIp;
        SERVER_PORT=serverPort;
    }
}
