package com.cuppacorner.api;

import com.cuppacorner.android.domain.Food;
import com.cuppacorner.android.domain.News;
import com.cuppacorner.android.service.IFoodService;
import com.cuppacorner.android.service.INewsService;
import com.cuppacorner.android.utils.JwtUtils;
import com.cuppacorner.common.core.domain.AjaxResult;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/androidapi")
public class AndFoodController {

    @Autowired
    IFoodService foodService;

    @GetMapping("/loadFood")
    public AjaxResult loadFood(Food food){

        List<Food> foodlist = foodService.selectFoodList(food);
        return AjaxResult.success(foodlist);
    }
}
