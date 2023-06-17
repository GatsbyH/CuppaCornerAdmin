package com.cuppacorner.android.service;

import java.util.List;
import com.cuppacorner.android.domain.Banners;

/**
 * 轮播图Service接口
 * 
 * @author zhen
 * @date 2023-06-06
 */
public interface IBannersService 
{
    /**
     * 查询轮播图
     * 
     * @param id 轮播图主键
     * @return 轮播图
     */
    public Banners selectBannersById(Long id);

    /**
     * 查询轮播图列表
     * 
     * @param banners 轮播图
     * @return 轮播图集合
     */
    public List<Banners> selectBannersList(Banners banners);

    /**
     * 新增轮播图
     * 
     * @param banners 轮播图
     * @return 结果
     */
    public int insertBanners(Banners banners);

    /**
     * 修改轮播图
     * 
     * @param banners 轮播图
     * @return 结果
     */
    public int updateBanners(Banners banners);

    /**
     * 批量删除轮播图
     * 
     * @param ids 需要删除的轮播图主键集合
     * @return 结果
     */
    public int deleteBannersByIds(Long[] ids);

    /**
     * 删除轮播图信息
     * 
     * @param id 轮播图主键
     * @return 结果
     */
    public int deleteBannersById(Long id);
}
