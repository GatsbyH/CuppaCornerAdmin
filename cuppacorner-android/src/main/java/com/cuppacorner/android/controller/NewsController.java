package com.cuppacorner.android.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.cuppacorner.common.annotation.Log;
import com.cuppacorner.common.core.controller.BaseController;
import com.cuppacorner.common.core.domain.AjaxResult;
import com.cuppacorner.common.enums.BusinessType;
import com.cuppacorner.android.domain.News;
import com.cuppacorner.android.service.INewsService;
import com.cuppacorner.common.utils.poi.ExcelUtil;
import com.cuppacorner.common.core.page.TableDataInfo;

/**
 * 新闻表Controller
 *
 * @author zhen
 * @date 2023-06-07
 */
@RestController
@RequestMapping("/android/news")
public class NewsController extends BaseController
{
    @Autowired
    private INewsService newsService;

    /**
     * 查询新闻表列表
     */
    @PreAuthorize("@ss.hasPermi('android:news:list')")
    @GetMapping("/list")
    public TableDataInfo list(News news)
    {
        startPage();
        List<News> list = newsService.selectNewsList(news);
        return getDataTable(list);
    }

    /**
     * 导出新闻表列表
     */
    @PreAuthorize("@ss.hasPermi('android:news:export')")
    @Log(title = "新闻表", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, News news)
    {
        List<News> list = newsService.selectNewsList(news);
        ExcelUtil<News> util = new ExcelUtil<News>(News.class);
        util.exportExcel(response, list, "新闻表数据");
    }

    /**
     * 获取新闻表详细信息
     */
    @PreAuthorize("@ss.hasPermi('android:news:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(newsService.selectNewsById(id));
    }

    /**
     * 新增新闻表
     */
    @PreAuthorize("@ss.hasPermi('android:news:add')")
    @Log(title = "新闻表", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody News news)
    {
        return toAjax(newsService.insertNews(news));
    }

    /**
     * 修改新闻表
     */
    @PreAuthorize("@ss.hasPermi('android:news:edit')")
    @Log(title = "新闻表", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody News news)
    {
        return toAjax(newsService.updateNews(news));
    }

    /**
     * 删除新闻表
     */
    @PreAuthorize("@ss.hasPermi('android:news:remove')")
    @Log(title = "新闻表", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(newsService.deleteNewsByIds(ids));
    }
}
