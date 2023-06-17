package com.cuppacorner.android.mapper;

import java.util.List;
import com.cuppacorner.android.domain.Food;

/**
 * 美食Mapper接口
 * 
 * @author zhen
 * @date 2023-06-09
 */
public interface FoodMapper 
{
    /**
     * 查询美食
     * 
     * @param id 美食主键
     * @return 美食
     */
    public Food selectFoodById(Long id);

    /**
     * 查询美食列表
     * 
     * @param food 美食
     * @return 美食集合
     */
    public List<Food> selectFoodList(Food food);

    /**
     * 新增美食
     * 
     * @param food 美食
     * @return 结果
     */
    public int insertFood(Food food);

    /**
     * 修改美食
     * 
     * @param food 美食
     * @return 结果
     */
    public int updateFood(Food food);

    /**
     * 删除美食
     * 
     * @param id 美食主键
     * @return 结果
     */
    public int deleteFoodById(Long id);

    /**
     * 批量删除美食
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteFoodByIds(Long[] ids);
}
