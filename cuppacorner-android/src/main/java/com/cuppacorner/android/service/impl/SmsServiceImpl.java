package com.cuppacorner.android.service.impl;

import com.cloopen.rest.sdk.BodyType;
import com.cloopen.rest.sdk.CCPRestSmsSDK;
import com.cuppacorner.android.service.SmsService;
import com.cuppacorner.android.utils.SmsProperties;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import org.apache.commons.lang3.RandomUtils;
import org.springframework.stereotype.Service;

@Service
public class SmsServiceImpl implements SmsService {


    //短信发送
    @Override
    public void send(String mobile, Map<String, Object> param) {
        CCPRestSmsSDK sdk = new CCPRestSmsSDK();
        // 配置账号信息
        sdk.init(SmsProperties.SERVER_IP, SmsProperties.SERVER_PORT);
        sdk.setAccount(SmsProperties.ACCOUNT_SID, SmsProperties.ACCOUNT_Token);
        sdk.setAppId(SmsProperties.APP_ID);
        sdk.setBodyType(BodyType.Type_JSON);

        //String templateId= "xxxx";   免费测试直接写"1"，付费开通后可以自定义短信模板
        String[] datas = {(String) param.get("code"), "5"}; //短信里的变量，验证码、几分钟内有效
        HashMap<String, Object> result = sdk.sendTemplateSMS(mobile,"1",datas);
        System.out.println("SMS--Result: "+result);
        if("000000".equals(result.get("statusCode"))){
            //正常返回输出data包体信息（map）
            HashMap<String,Object> data = (HashMap<String, Object>) result.get("data");
            Set<String> keySet = data.keySet();
            for(String key:keySet){
                Object object = data.get(key);
                System.out.println(key +" = "+object);
            }
        }else {
            //异常返回输出错误码和错误信息（或log.error 打印到日志）
            System.out.println("错误码=" + result.get("statusCode") + " 错误信息= " + result.get("statusMsg"));
            // 自定义的统一异常处理，如果出错了会发给前端
        }
    }

    public String generateFourDigitCode() {
        long min = 1000L; // 最小的四位数
        long max = 9999L; // 最大的四位数
        long randomNum = RandomUtils.nextLong(min, max + 1); // 生成一个 [min, max] 范围内的随机数
        return String.valueOf(randomNum); // 将随机数转换为字符串返回
    }
}
