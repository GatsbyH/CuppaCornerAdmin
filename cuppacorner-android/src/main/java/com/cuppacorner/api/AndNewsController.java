package com.cuppacorner.api;

import com.cuppacorner.android.domain.News;
import com.cuppacorner.android.service.INewsService;
import com.cuppacorner.common.core.domain.AjaxResult;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/androidapi")
public class AndNewsController {
    @Autowired
    INewsService newsService;
    @GetMapping("/loadNews")
    public AjaxResult loadNews(News news){
        List<News> newslist = newsService.selectNewsList(news);
        return AjaxResult.success(newslist);
    }
}
