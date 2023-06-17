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
import com.cuppacorner.android.domain.Banners;
import com.cuppacorner.android.service.IBannersService;
import com.cuppacorner.common.utils.poi.ExcelUtil;
import com.cuppacorner.common.core.page.TableDataInfo;

/**
 * 轮播图Controller
 *
 * @author zhen
 * @date 2023-06-06
 */
@RestController
@RequestMapping("/android/banners")
public class BannersController extends BaseController
{
    @Autowired
    private IBannersService bannersService;

    /**
     * 查询轮播图列表
     */
    @PreAuthorize("@ss.hasPermi('android:banners:list')")
    @GetMapping("/list")
    public TableDataInfo list(Banners banners)
    {
        startPage();
        List<Banners> list = bannersService.selectBannersList(banners);
        System.out.println(list);
        return getDataTable(list);
    }

    /**
     * 导出轮播图列表
     */
    @PreAuthorize("@ss.hasPermi('android:banners:export')")
    @Log(title = "轮播图", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Banners banners)
    {
        List<Banners> list = bannersService.selectBannersList(banners);
        ExcelUtil<Banners> util = new ExcelUtil<Banners>(Banners.class);
        util.exportExcel(response, list, "轮播图数据");
    }

    /**
     * 获取轮播图详细信息
     */
    @PreAuthorize("@ss.hasPermi('android:banners:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(bannersService.selectBannersById(id));
    }

    /**
     * 新增轮播图
     */
    @PreAuthorize("@ss.hasPermi('android:banners:add')")
    @Log(title = "轮播图", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Banners banners)
    {
        return toAjax(bannersService.insertBanners(banners));
    }

    /**
     * 修改轮播图
     */
    @PreAuthorize("@ss.hasPermi('android:banners:edit')")
    @Log(title = "轮播图", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Banners banners)
    {
        return toAjax(bannersService.updateBanners(banners));
    }

    /**
     * 删除轮播图
     */
    @PreAuthorize("@ss.hasPermi('android:banners:remove')")
    @Log(title = "轮播图", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(bannersService.deleteBannersByIds(ids));
    }
}
