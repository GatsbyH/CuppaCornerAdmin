package com.cuppacorner.android.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.cuppacorner.common.annotation.Excel;
import com.cuppacorner.common.core.domain.BaseEntity;

/**
 * 音乐剧对象 musical
 * 
 * @author zhen
 * @date 2023-06-11
 */
public class Musical extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 序号 */
    private Long musicalId;

    /** 音乐剧名称 */
    @Excel(name = "音乐剧名称")
    private String musicalName;

    /** 音乐剧图片地址 */
    @Excel(name = "音乐剧图片地址")
    private String musicalImageurl;

    /** 音乐剧详情地址 */
    @Excel(name = "音乐剧详情地址")
    private String musicalDetailurl;

    public void setMusicalId(Long musicalId) 
    {
        this.musicalId = musicalId;
    }

    public Long getMusicalId() 
    {
        return musicalId;
    }
    public void setMusicalName(String musicalName) 
    {
        this.musicalName = musicalName;
    }

    public String getMusicalName() 
    {
        return musicalName;
    }
    public void setMusicalImageurl(String musicalImageurl) 
    {
        this.musicalImageurl = musicalImageurl;
    }

    public String getMusicalImageurl() 
    {
        return musicalImageurl;
    }
    public void setMusicalDetailurl(String musicalDetailurl) 
    {
        this.musicalDetailurl = musicalDetailurl;
    }

    public String getMusicalDetailurl() 
    {
        return musicalDetailurl;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("musicalId", getMusicalId())
            .append("musicalName", getMusicalName())
            .append("musicalImageurl", getMusicalImageurl())
            .append("musicalDetailurl", getMusicalDetailurl())
            .toString();
    }
}
