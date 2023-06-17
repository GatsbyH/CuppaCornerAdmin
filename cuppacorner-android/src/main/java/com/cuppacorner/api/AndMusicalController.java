package com.cuppacorner.api;

import com.cuppacorner.android.domain.Musical;
import com.cuppacorner.android.domain.News;
import com.cuppacorner.android.service.IMusicalService;
import com.cuppacorner.android.service.INewsService;
import com.cuppacorner.common.core.domain.AjaxResult;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/androidapi")
public class AndMusicalController {
    @Autowired
    IMusicalService musicalService;

    @GetMapping("/loadMusicals")
    public AjaxResult loadMusicals(Musical musical){
        List<Musical> musicallist = musicalService.selectMusicalList(musical);
        return AjaxResult.success(musicallist);
    }
}
