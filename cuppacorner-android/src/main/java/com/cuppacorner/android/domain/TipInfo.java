package com.cuppacorner.android.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.cuppacorner.common.annotation.Excel;
import com.cuppacorner.common.core.domain.BaseEntity;

/**
 * 小贴士对象 tip_info
 * 
 * @author zhen
 * @date 2023-06-12
 */
public class TipInfo extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 序号 */
    private Long id;

    /** 小贴士标题 */
    @Excel(name = "小贴士标题")
    private String tipTitle;

    /** 小贴士内容 */
    @Excel(name = "小贴士内容")
    private String tipContent;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setTipTitle(String tipTitle) 
    {
        this.tipTitle = tipTitle;
    }

    public String getTipTitle() 
    {
        return tipTitle;
    }
    public void setTipContent(String tipContent) 
    {
        this.tipContent = tipContent;
    }

    public String getTipContent() 
    {
        return tipContent;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("tipTitle", getTipTitle())
            .append("tipContent", getTipContent())
            .toString();
    }
}
