package com.cuppacorner.android.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.cuppacorner.common.annotation.Log;
import com.cuppacorner.common.core.controller.BaseController;
import com.cuppacorner.common.core.domain.AjaxResult;
import com.cuppacorner.common.enums.BusinessType;
import com.cuppacorner.android.domain.Food;
import com.cuppacorner.android.service.IFoodService;
import com.cuppacorner.common.utils.poi.ExcelUtil;
import com.cuppacorner.common.core.page.TableDataInfo;

/**
 * 美食Controller
 * 
 * @author zhen
 * @date 2023-06-09
 */
@RestController
@RequestMapping("/android/food")
public class FoodController extends BaseController
{
    @Autowired
    private IFoodService foodService;

    /**
     * 查询美食列表
     */
    @PreAuthorize("@ss.hasPermi('android:food:list')")
    @GetMapping("/list")
    public TableDataInfo list(Food food)
    {
        startPage();
        List<Food> list = foodService.selectFoodList(food);
        return getDataTable(list);
    }

    /**
     * 导出美食列表
     */
    @PreAuthorize("@ss.hasPermi('android:food:export')")
    @Log(title = "美食", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Food food)
    {
        List<Food> list = foodService.selectFoodList(food);
        ExcelUtil<Food> util = new ExcelUtil<Food>(Food.class);
        util.exportExcel(response, list, "美食数据");
    }

    /**
     * 获取美食详细信息
     */
    @PreAuthorize("@ss.hasPermi('android:food:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(foodService.selectFoodById(id));
    }

    /**
     * 新增美食
     */
    @PreAuthorize("@ss.hasPermi('android:food:add')")
    @Log(title = "美食", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Food food)
    {
        return toAjax(foodService.insertFood(food));
    }

    /**
     * 修改美食
     */
    @PreAuthorize("@ss.hasPermi('android:food:edit')")
    @Log(title = "美食", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Food food)
    {
        return toAjax(foodService.updateFood(food));
    }

    /**
     * 删除美食
     */
    @PreAuthorize("@ss.hasPermi('android:food:remove')")
    @Log(title = "美食", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(foodService.deleteFoodByIds(ids));
    }
}
