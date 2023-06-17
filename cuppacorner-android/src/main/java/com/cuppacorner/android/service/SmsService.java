package com.cuppacorner.android.service;

import java.util.Map;

public interface SmsService {

    //短信发送
    void send(String mobile, Map<String, Object> param);


    String generateFourDigitCode();
}
