package com.cuppacorner.api;

import com.cuppacorner.android.domain.News;
import com.cuppacorner.android.domain.TipInfo;
import com.cuppacorner.android.service.ITipInfoService;
import com.cuppacorner.common.core.domain.AjaxResult;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/androidapi")
public class AndTipController {

    @Autowired
    ITipInfoService tipInfoService;
    @GetMapping("/loadTip")
    public AjaxResult loadNews(TipInfo tipInfo){
        List<TipInfo> tipslist = tipInfoService.selectTipInfoList(tipInfo);
        return AjaxResult.success(tipslist);
    }
}
