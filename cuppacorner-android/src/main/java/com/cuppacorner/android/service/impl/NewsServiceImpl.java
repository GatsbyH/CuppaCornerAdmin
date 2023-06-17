package com.cuppacorner.android.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.cuppacorner.android.mapper.NewsMapper;
import com.cuppacorner.android.domain.News;
import com.cuppacorner.android.service.INewsService;

/**
 * 新闻表Service业务层处理
 *
 * @author zhen
 * @date 2023-06-07
 */
@Service
public class NewsServiceImpl implements INewsService
{
    @Autowired
    private NewsMapper newsMapper;

    /**
     * 查询新闻表
     *
     * @param id 新闻表主键
     * @return 新闻表
     */
    @Override
    public News selectNewsById(Long id)
    {
        return newsMapper.selectNewsById(id);
    }

    /**
     * 查询新闻表列表
     *
     * @param news 新闻表
     * @return 新闻表
     */
    @Override
    public List<News> selectNewsList(News news)
    {
        return newsMapper.selectNewsList(news);
    }

    /**
     * 新增新闻表
     *
     * @param news 新闻表
     * @return 结果
     */
    @Override
    public int insertNews(News news)
    {
        return newsMapper.insertNews(news);
    }

    /**
     * 修改新闻表
     *
     * @param news 新闻表
     * @return 结果
     */
    @Override
    public int updateNews(News news)
    {
        return newsMapper.updateNews(news);
    }

    /**
     * 批量删除新闻表
     *
     * @param ids 需要删除的新闻表主键
     * @return 结果
     */
    @Override
    public int deleteNewsByIds(Long[] ids)
    {
        return newsMapper.deleteNewsByIds(ids);
    }

    /**
     * 删除新闻表信息
     *
     * @param id 新闻表主键
     * @return 结果
     */
    @Override
    public int deleteNewsById(Long id)
    {
        return newsMapper.deleteNewsById(id);
    }
}
