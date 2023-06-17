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
import com.cuppacorner.android.domain.Musical;
import com.cuppacorner.android.service.IMusicalService;
import com.cuppacorner.common.utils.poi.ExcelUtil;
import com.cuppacorner.common.core.page.TableDataInfo;

/**
 * 音乐剧Controller
 * 
 * @author zhen
 * @date 2023-06-11
 */
@RestController
@RequestMapping("/android/musical")
public class MusicalController extends BaseController
{
    @Autowired
    private IMusicalService musicalService;

    /**
     * 查询音乐剧列表
     */
    @PreAuthorize("@ss.hasPermi('android:musical:list')")
    @GetMapping("/list")
    public TableDataInfo list(Musical musical)
    {
        startPage();
        List<Musical> list = musicalService.selectMusicalList(musical);
        return getDataTable(list);
    }

    /**
     * 导出音乐剧列表
     */
    @PreAuthorize("@ss.hasPermi('android:musical:export')")
    @Log(title = "音乐剧", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Musical musical)
    {
        List<Musical> list = musicalService.selectMusicalList(musical);
        ExcelUtil<Musical> util = new ExcelUtil<Musical>(Musical.class);
        util.exportExcel(response, list, "音乐剧数据");
    }

    /**
     * 获取音乐剧详细信息
     */
    @PreAuthorize("@ss.hasPermi('android:musical:query')")
    @GetMapping(value = "/{musicalId}")
    public AjaxResult getInfo(@PathVariable("musicalId") Long musicalId)
    {
        return success(musicalService.selectMusicalByMusicalId(musicalId));
    }

    /**
     * 新增音乐剧
     */
    @PreAuthorize("@ss.hasPermi('android:musical:add')")
    @Log(title = "音乐剧", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Musical musical)
    {
        return toAjax(musicalService.insertMusical(musical));
    }

    /**
     * 修改音乐剧
     */
    @PreAuthorize("@ss.hasPermi('android:musical:edit')")
    @Log(title = "音乐剧", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Musical musical)
    {
        return toAjax(musicalService.updateMusical(musical));
    }

    /**
     * 删除音乐剧
     */
    @PreAuthorize("@ss.hasPermi('android:musical:remove')")
    @Log(title = "音乐剧", businessType = BusinessType.DELETE)
	@DeleteMapping("/{musicalIds}")
    public AjaxResult remove(@PathVariable Long[] musicalIds)
    {
        return toAjax(musicalService.deleteMusicalByMusicalIds(musicalIds));
    }
}
