package com.cuppacorner.api;

import com.cuppacorner.common.core.domain.AjaxResult;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
@Controller("androidTestController")
@RestController
@RequestMapping("/androidapi/")
public class AndTestController {
    @GetMapping("test")
    public AjaxResult test(){
        return AjaxResult.success("安卓api调试成功");
    }
}
