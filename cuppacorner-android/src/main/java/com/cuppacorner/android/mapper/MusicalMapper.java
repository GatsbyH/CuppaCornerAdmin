package com.cuppacorner.android.mapper;

import java.util.List;
import com.cuppacorner.android.domain.Musical;

/**
 * 音乐剧Mapper接口
 * 
 * @author zhen
 * @date 2023-06-11
 */
public interface MusicalMapper 
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
     * 删除音乐剧
     * 
     * @param musicalId 音乐剧主键
     * @return 结果
     */
    public int deleteMusicalByMusicalId(Long musicalId);

    /**
     * 批量删除音乐剧
     * 
     * @param musicalIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteMusicalByMusicalIds(Long[] musicalIds);
}
