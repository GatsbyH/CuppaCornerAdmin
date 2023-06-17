package com.cuppacorner.android.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.cuppacorner.android.mapper.FoodMapper;
import com.cuppacorner.android.domain.Food;
import com.cuppacorner.android.service.IFoodService;

/**
 * 美食Service业务层处理
 * 
 * @author zhen
 * @date 2023-06-09
 */
@Service
public class FoodServiceImpl implements IFoodService 
{
    @Autowired
    private FoodMapper foodMapper;

    /**
     * 查询美食
     * 
     * @param id 美食主键
     * @return 美食
     */
    @Override
    public Food selectFoodById(Long id)
    {
        return foodMapper.selectFoodById(id);
    }

    /**
     * 查询美食列表
     * 
     * @param food 美食
     * @return 美食
     */
    @Override
    public List<Food> selectFoodList(Food food)
    {
        return foodMapper.selectFoodList(food);
    }

    /**
     * 新增美食
     * 
     * @param food 美食
     * @return 结果
     */
    @Override
    public int insertFood(Food food)
    {
        return foodMapper.insertFood(food);
    }

    /**
     * 修改美食
     * 
     * @param food 美食
     * @return 结果
     */
    @Override
    public int updateFood(Food food)
    {
        return foodMapper.updateFood(food);
    }

    /**
     * 批量删除美食
     * 
     * @param ids 需要删除的美食主键
     * @return 结果
     */
    @Override
    public int deleteFoodByIds(Long[] ids)
    {
        return foodMapper.deleteFoodByIds(ids);
    }

    /**
     * 删除美食信息
     * 
     * @param id 美食主键
     * @return 结果
     */
    @Override
    public int deleteFoodById(Long id)
    {
        return foodMapper.deleteFoodById(id);
    }
}
