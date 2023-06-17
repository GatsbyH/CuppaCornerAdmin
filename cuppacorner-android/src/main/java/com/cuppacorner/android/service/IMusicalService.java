package com.cuppacorner.android.service;

import java.util.List;
import com.cuppacorner.android.domain.Musical;

/**
 * 音乐剧Service接口
 * 
 * @author zhen
 * @date 2023-06-11
 */
public interface IMusicalService 
{
    /**
     * 查询音乐剧
     * 
     * @param musicalId 音乐剧主键
     * @return 音乐剧
     */
    public Musical selectMusicalByMusicalId(Long musicalId);

    /**
     * 查询音乐剧列表
     * 
     * @param musical 音乐剧
     * @return 音乐剧集合
     */
    public List<Musical> selectMusicalList(Musical musical);

    /**
     * 新增音乐剧
     * 
     * @param musical 音乐剧
     * @return 结果
     */
    public int insertMusical(Musical musical);

    /**
     * 修改音乐剧
     * 
     * @param musical 音乐剧
     * @return 结果
     */
    public int updateMusical(Musical musical);

    /**
     * 批量删除音乐剧
     * 
     * @param musicalIds 需要删除的音乐剧主键集合
     * @return 结果
     */
    public int deleteMusicalByMusicalIds(Long[] musicalIds);

    /**
     * 删除音乐剧信息
     * 
     * @param musicalId 音乐剧主键
     * @return 结果
     */
    public int deleteMusicalByMusicalId(Long musicalId);
}
