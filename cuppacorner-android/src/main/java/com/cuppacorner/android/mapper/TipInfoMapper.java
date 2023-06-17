package com.cuppacorner.android.mapper;

import java.util.List;
import com.cuppacorner.android.domain.TipInfo;

/**
 * 小贴士Mapper接口
 * 
 * @author zhen
 * @date 2023-06-12
 */
public interface TipInfoMapper 
{
    /**
     * 查询小贴士
     * 
     * @param id 小贴士主键
     * @return 小贴士
     */
    public TipInfo selectTipInfoById(Long id);

    /**
     * 查询小贴士列表
     * 
     * @param tipInfo 小贴士
     * @return 小贴士集合
     */
    public List<TipInfo> selectTipInfoList(TipInfo tipInfo);

    /**
     * 新增小贴士
     * 
     * @param tipInfo 小贴士
     * @return 结果
     */
    public int insertTipInfo(TipInfo tipInfo);

    /**
     * 修改小贴士
     * 
     * @param tipInfo 小贴士
     * @return 结果
     */
    public int updateTipInfo(TipInfo tipInfo);

    /**
     * 删除小贴士
     * 
     * @param id 小贴士主键
     * @return 结果
     */
    public int deleteTipInfoById(Long id);

    /**
     * 批量删除小贴士
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTipInfoByIds(Long[] ids);
}
