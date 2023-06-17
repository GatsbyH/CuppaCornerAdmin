package com.cuppacorner.android.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.cuppacorner.android.mapper.TipInfoMapper;
import com.cuppacorner.android.domain.TipInfo;
import com.cuppacorner.android.service.ITipInfoService;

/**
 * 小贴士Service业务层处理
 * 
 * @author zhen
 * @date 2023-06-12
 */
@Service
public class TipInfoServiceImpl implements ITipInfoService 
{
    @Autowired
    private TipInfoMapper tipInfoMapper;

    /**
     * 查询小贴士
     * 
     * @param id 小贴士主键
     * @return 小贴士
     */
    @Override
    public TipInfo selectTipInfoById(Long id)
    {
        return tipInfoMapper.selectTipInfoById(id);
    }

    /**
     * 查询小贴士列表
     * 
     * @param tipInfo 小贴士
     * @return 小贴士
     */
    @Override
    public List<TipInfo> selectTipInfoList(TipInfo tipInfo)
    {
        return tipInfoMapper.selectTipInfoList(tipInfo);
    }

    /**
     * 新增小贴士
     * 
     * @param tipInfo 小贴士
     * @return 结果
     */
    @Override
    public int insertTipInfo(TipInfo tipInfo)
    {
        return tipInfoMapper.insertTipInfo(tipInfo);
    }

    /**
     * 修改小贴士
     * 
     * @param tipInfo 小贴士
     * @return 结果
     */
    @Override
    public int updateTipInfo(TipInfo tipInfo)
    {
        return tipInfoMapper.updateTipInfo(tipInfo);
    }

    /**
     * 批量删除小贴士
     * 
     * @param ids 需要删除的小贴士主键
     * @return 结果
     */
    @Override
    public int deleteTipInfoByIds(Long[] ids)
    {
        return tipInfoMapper.deleteTipInfoByIds(ids);
    }

    /**
     * 删除小贴士信息
     * 
     * @param id 小贴士主键
     * @return 结果
     */
    @Override
    public int deleteTipInfoById(Long id)
    {
        return tipInfoMapper.deleteTipInfoById(id);
    }
}
