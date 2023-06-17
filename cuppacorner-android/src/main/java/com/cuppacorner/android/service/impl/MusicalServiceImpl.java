package com.cuppacorner.android.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.cuppacorner.android.mapper.MusicalMapper;
import com.cuppacorner.android.domain.Musical;
import com.cuppacorner.android.service.IMusicalService;

/**
 * 音乐剧Service业务层处理
 * 
 * @author zhen
 * @date 2023-06-11
 */
@Service
public class MusicalServiceImpl implements IMusicalService 
{
    @Autowired
    private MusicalMapper musicalMapper;

    /**
     * 查询音乐剧
     * 
     * @param musicalId 音乐剧主键
     * @return 音乐剧
     */
    @Override
    public Musical selectMusicalByMusicalId(Long musicalId)
    {
        return musicalMapper.selectMusicalByMusicalId(musicalId);
    }

    /**
     * 查询音乐剧列表
     * 
     * @param musical 音乐剧
     * @return 音乐剧
     */
    @Override
    public List<Musical> selectMusicalList(Musical musical)
    {
        return musicalMapper.selectMusicalList(musical);
    }

    /**
     * 新增音乐剧
     * 
     * @param musical 音乐剧
     * @return 结果
     */
    @Override
    public int insertMusical(Musical musical)
    {
        return musicalMapper.insertMusical(musical);
    }

    /**
     * 修改音乐剧
     * 
     * @param musical 音乐剧
     * @return 结果
     */
    @Override
    public int updateMusical(Musical musical)
    {
        return musicalMapper.updateMusical(musical);
    }

    /**
     * 批量删除音乐剧
     * 
     * @param musicalIds 需要删除的音乐剧主键
     * @return 结果
     */
    @Override
    public int deleteMusicalByMusicalIds(Long[] musicalIds)
    {
        return musicalMapper.deleteMusicalByMusicalIds(musicalIds);
    }

    /**
     * 删除音乐剧信息
     * 
     * @param musicalId 音乐剧主键
     * @return 结果
     */
    @Override
    public int deleteMusicalByMusicalId(Long musicalId)
    {
        return musicalMapper.deleteMusicalByMusicalId(musicalId);
    }
}
