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
import com.cuppacorner.android.domain.TipInfo;
import com.cuppacorner.android.service.ITipInfoService;
import com.cuppacorner.common.utils.poi.ExcelUtil;
import com.cuppacorner.common.core.page.TableDataInfo;

/**
 * 小贴士Controller
 * 
 * @author zhen
 * @date 2023-06-12
 */
@RestController
@RequestMapping("/android/info")
public class TipInfoController extends BaseController
{
    @Autowired
    private ITipInfoService tipInfoService;

    /**
     * 查询小贴士列表
     */
    @PreAuthorize("@ss.hasPermi('android:info:list')")
    @GetMapping("/list")
    public TableDataInfo list(TipInfo tipInfo)
    {
        startPage();
        List<TipInfo> list = tipInfoService.selectTipInfoList(tipInfo);
        return getDataTable(list);
    }

    /**
     * 导出小贴士列表
     */
    @PreAuthorize("@ss.hasPermi('android:info:export')")
    @Log(title = "小贴士", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, TipInfo tipInfo)
    {
        List<TipInfo> list = tipInfoService.selectTipInfoList(tipInfo);
        ExcelUtil<TipInfo> util = new ExcelUtil<TipInfo>(TipInfo.class);
        util.exportExcel(response, list, "小贴士数据");
    }

    /**
     * 获取小贴士详细信息
     */
    @PreAuthorize("@ss.hasPermi('android:info:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(tipInfoService.selectTipInfoById(id));
    }

    /**
     * 新增小贴士
     */
    @PreAuthorize("@ss.hasPermi('android:info:add')")
    @Log(title = "小贴士", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TipInfo tipInfo)
    {
        return toAjax(tipInfoService.insertTipInfo(tipInfo));
    }

    /**
     * 修改小贴士
     */
    @PreAuthorize("@ss.hasPermi('android:info:edit')")
    @Log(title = "小贴士", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TipInfo tipInfo)
    {
        return toAjax(tipInfoService.updateTipInfo(tipInfo));
    }

    /**
     * 删除小贴士
     */
    @PreAuthorize("@ss.hasPermi('android:info:remove')")
    @Log(title = "小贴士", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(tipInfoService.deleteTipInfoByIds(ids));
    }
}
