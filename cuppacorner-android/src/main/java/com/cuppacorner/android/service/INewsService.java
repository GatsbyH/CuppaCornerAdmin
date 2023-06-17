package com.cuppacorner.android.service;

import java.util.List;
import com.cuppacorner.android.domain.News;

/**
 * 新闻表Service接口
 *
 * @author zhen
 * @date 2023-06-07
 */
public interface INewsService
{
    /**
     * 查询新闻表
     *
     * @param id 新闻表主键
     * @return 新闻表
     */
    public News selectNewsById(Long id);

    /**
     * 查询新闻表列表
     *
     * @param news 新闻表
     * @return 新闻表集合
     */
    public List<News> selectNewsList(News news);

    /**
     * 新增新闻表
     *
     * @param news 新闻表
     * @return 结果
     */
    public int insertNews(News news);

    /**
     * 修改新闻表
     *
     * @param news 新闻表
     * @return 结果
     */
    public int updateNews(News news);

    /**
     * 批量删除新闻表
     *
     * @param ids 需要删除的新闻表主键集合
     * @return 结果
     */
    public int deleteNewsByIds(Long[] ids);

    /**
     * 删除新闻表信息
     *
     * @param id 新闻表主键
     * @return 结果
     */
    public int deleteNewsById(Long id);
}
