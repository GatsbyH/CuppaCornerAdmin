package com.cuppacorner.api;

import com.cuppacorner.android.domain.Users;
import com.cuppacorner.android.service.IUsersService;
import com.cuppacorner.android.service.SmsService;
import com.cuppacorner.android.utils.JwtUtils;
import com.cuppacorner.common.core.domain.AjaxResult;
import com.cuppacorner.common.utils.DateUtils;
import java.util.HashMap;
import java.util.Map;

import java.util.concurrent.TimeUnit;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/androidapi")
@CrossOrigin
public class ApiSmsController {
    @Autowired
    private SmsService smsService;
    @Autowired
    private IUsersService usersService;
    @Autowired
    private RedisTemplate redisTemplate;

    @Autowired
    private JwtUtils jwtUtils;
    @GetMapping("/send/{mobile}")
    public AjaxResult send(@PathVariable String mobile){
        // 实际上还要校验一下手机号是否合法，当然这步前端也可以校验
        Map<String,Object> map=new HashMap<>();
//        String fourBitRandom = RandomUtils.getFourBitRandom();// 工具类生成4位随机数
        String fourDigitCode = smsService.generateFourDigitCode();
        map.put("code", fourDigitCode);
        smsService.send(mobile,map);
        //将验证码存入redis
        redisTemplate.opsForValue().set("test:sms:code"+mobile, fourDigitCode, 5, TimeUnit.MINUTES);

        return AjaxResult.success("短信发送成功");
    }

    @PostMapping("/verify")
    public AjaxResult verifyCode(@RequestParam String mobile, @RequestParam String code) {
        String key = "test:sms:code" + mobile;
        String savedCode = (String) redisTemplate.opsForValue().get(key);
        if (savedCode != null && savedCode.equals(code)) {
            redisTemplate.delete(key);
            Users user = usersService.getUserByPhone(mobile);
            if (user != null) {
                user.setLastLoginTime(DateUtils.getNowDate());
                usersService.updateUsers(user);
            } else {
                user = new Users();
                user.setPhone(mobile);
                user.setLastLoginTime(DateUtils.getNowDate());
                usersService.insertUsers(user);
            }
            String token = jwtUtils.generateToken(user.getPhone());
            return AjaxResult.success("验证码正确",token);
        } else {
            return AjaxResult.error("验证码错误");
        }
    }

}
