package com.cuppacorner.api;

import com.cuppacorner.android.domain.Banners;
import com.cuppacorner.android.service.IBannersService;
import com.cuppacorner.common.core.domain.AjaxResult;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * author：AbuCoder QQ:932696181
 * 微信小程序获取轮播图接口
 * Gitee:https://gitee.com/rahman
 */
@RestController
@RequestMapping("/androidapi")
public class AndBannerController {

    @Autowired
    IBannersService bannersService;
    @GetMapping("/loadBaneer")
    public AjaxResult loadBaneer(Banners banners){
        List<Banners> bannerslist = bannersService.selectBannersList(banners);
        return AjaxResult.success(bannerslist);
    }
}
