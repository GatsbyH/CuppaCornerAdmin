package com.cuppacorner.android.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.cuppacorner.common.annotation.Excel;
import com.cuppacorner.common.core.domain.BaseEntity;

/**
 * 新闻表对象 news
 *
 * @author zhen
 * @date 2023-06-07
 */
public class News extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 序号 */
    private Long id;

    /** 新闻标签 */
    @Excel(name = "新闻标签")
    private String newsTag;

    /** 新闻标题 */
    @Excel(name = "新闻标题")
    private String newsTitle;

    /** 新闻摘要 */
    @Excel(name = "新闻摘要")
    private String newsSummary;

    /** 新闻图片地址 */
    @Excel(name = "新闻图片地址")
    private String newsImageurl;

    /** 新闻详情地址 */
    @Excel(name = "新闻详情地址")
    private String newsDetailurl;

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId()
    {
        return id;
    }
    public void setNewsTag(String newsTag)
    {
        this.newsTag = newsTag;
    }

    public String getNewsTag()
    {
        return newsTag;
    }
    public void setNewsTitle(String newsTitle)
    {
        this.newsTitle = newsTitle;
    }

    public String getNewsTitle()
    {
        return newsTitle;
    }
    public void setNewsSummary(String newsSummary)
    {
        this.newsSummary = newsSummary;
    }

    public String getNewsSummary()
    {
        return newsSummary;
    }
    public void setNewsImageurl(String newsImageurl)
    {
        this.newsImageurl = newsImageurl;
    }

    public String getNewsImageurl()
    {
        return newsImageurl;
    }
    public void setNewsDetailurl(String newsDetailurl)
    {
        this.newsDetailurl = newsDetailurl;
    }

    public String getNewsDetailurl()
    {
        return newsDetailurl;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("newsTag", getNewsTag())
            .append("newsTitle", getNewsTitle())
            .append("newsSummary", getNewsSummary())
            .append("newsImageurl", getNewsImageurl())
            .append("newsDetailurl", getNewsDetailurl())
            .toString();
    }
}
