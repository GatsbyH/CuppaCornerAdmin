package com.cuppacorner.android.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.cuppacorner.common.annotation.Excel;
import com.cuppacorner.common.core.domain.BaseEntity;

/**
 * 美食对象 food
 * 
 * @author zhen
 * @date 2023-06-09
 */
public class Food extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 序号 */
    private Long id;

    /** 美食名称 */
    @Excel(name = "美食名称")
    private String name;

    /** 美食图片地址 */
    @Excel(name = "美食图片地址")
    private String imageUrl;

    /** 美食详情地址 */
    @Excel(name = "美食详情地址")
    private String detailUrl;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setName(String name) 
    {
        this.name = name;
    }

    public String getName() 
    {
        return name;
    }
    public void setImageUrl(String imageUrl) 
    {
        this.imageUrl = imageUrl;
    }

    public String getImageUrl() 
    {
        return imageUrl;
    }
    public void setDetailUrl(String detailUrl) 
    {
        this.detailUrl = detailUrl;
    }

    public String getDetailUrl() 
    {
        return detailUrl;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("name", getName())
            .append("imageUrl", getImageUrl())
            .append("detailUrl", getDetailUrl())
            .toString();
    }
}
