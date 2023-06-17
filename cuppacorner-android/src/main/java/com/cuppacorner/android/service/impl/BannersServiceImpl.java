package com.cuppacorner.android.service.impl;

import java.util.List;
import com.cuppacorner.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.cuppacorner.android.mapper.BannersMapper;
import com.cuppacorner.android.domain.Banners;
import com.cuppacorner.android.service.IBannersService;

/**
 * 轮播图Service业务层处理
 * 
 * @author zhen
 * @date 2023-06-06
 */
@Service
public class BannersServiceImpl implements IBannersService 
{
    @Autowired
    private BannersMapper bannersMapper;

    /**
     * 查询轮播图
     * 
     * @param id 轮播图主键
     * @return 轮播图
     */
    @Override
    public Banners selectBannersById(Long id)
    {
        return bannersMapper.selectBannersById(id);
    }

    /**
     * 查询轮播图列表
     * 
     * @param banners 轮播图
     * @return 轮播图
     */
    @Override
    public List<Banners> selectBannersList(Banners banners)
    {
        return bannersMapper.selectBannersList(banners);
    }

    /**
     * 新增轮播图
     * 
     * @param banners 轮播图
     * @return 结果
     */
    @Override
    public int insertBanners(Banners banners)
    {
        banners.setCreateTime(DateUtils.getNowDate());
        return bannersMapper.insertBanners(banners);
    }

    /**
     * 修改轮播图
     * 
     * @param banners 轮播图
     * @return 结果
     */
    @Override
    public int updateBanners(Banners banners)
    {
        banners.setUpdateTime(DateUtils.getNowDate());
        return bannersMapper.updateBanners(banners);
    }

    /**
     * 批量删除轮播图
     * 
     * @param ids 需要删除的轮播图主键
     * @return 结果
     */
    @Override
    public int deleteBannersByIds(Long[] ids)
    {
        return bannersMapper.deleteBannersByIds(ids);
    }

    /**
     * 删除轮播图信息
     * 
     * @param id 轮播图主键
     * @return 结果
     */
    @Override
    public int deleteBannersById(Long id)
    {
        return bannersMapper.deleteBannersById(id);
    }
}
