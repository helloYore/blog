package com.lee.web.admin;

import com.lee.po.Tag;
import com.lee.service.TagService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;

/**
 * @author helloyore
 * @createTime 2021年12月16日 11:34:00
 * @Description
 */
@Controller
@RequestMapping("/admin")
public class TagController {
    @Autowired
    private TagService tagService;

    /**
     * 查看标签的列表
     * @param pageable
     * @param model
     * @return
     */
    @GetMapping("/tags")
    public String tags(@PageableDefault(size = 3,sort = {"id"},direction = Sort.Direction.DESC)
                               Pageable pageable, Model model) {
        model.addAttribute("page",tagService.listTag(pageable));
        return "admin/tags";
    }
    /**
     * 添加标签
     * @param model
     * @return
     */
    @GetMapping("/tags/input")
    public String input(Model model) {
        model.addAttribute("tag", new Tag());
        return "admin/tags-input";
    }
    /**
     * 更新标签
     * @param id
     * @param model
     * @return
     */
    @GetMapping("/tags/{id}/input")
    public String editInput(@PathVariable Long id, Model model){
        model.addAttribute("tag", tagService.getTag(id));
        return "admin/tags-input";
    }
    /**
     * 添加标签的数据格式（校检）
     * @param tag
     * @param result
     * @param attributes
     * @return
     */
    @PostMapping("/tags")
    public String post(@Valid Tag tag, BindingResult result, RedirectAttributes attributes){
        Tag tagByName = tagService.getTagByName(tag.getName());
        if(tagByName != null){
            result.rejectValue("name", "nameError", "不能添加重复的标签");
        }
        if(result.hasErrors()){
            return "admin/tags-input";
        }
        Tag tag1 = tagService.saveTag(tag);
        if(tag1 == null){
            attributes.addFlashAttribute("message", "新增失败");
        }else{
            attributes.addFlashAttribute("message", "新增成功");
        }
        return "redirect:/admin/tags";
    }
    /**
     * 修改标签的数据格式（校检）
     * @param tag
     * @param result
     * @param id
     * @param attributes
     * @return
     */
    @PostMapping("/tags/{id}")
    public String editPost(@Valid Tag tag, BindingResult result, @PathVariable Long id, RedirectAttributes attributes){
        Tag tagByName = tagService.getTagByName(tag.getName());
        if(tagByName != null){
            result.rejectValue("name","nameError","不能添加重复的标签");
        }
        if(result.hasErrors()){
            return "admin/tags-input";
        }
        Tag tag1 = tagService.updateTag(id, tag);
        if(tag1 == null){
            attributes.addFlashAttribute("message","更新失败");
        }else{
            attributes.addFlashAttribute("message","更新成功");
        }
        return "redirect:/admin/tags";
    }
    /**
     * 删除标签
     * @param id
     * @param attributes
     * @return
     */
    @GetMapping("/tags/{id}/delete")
    public String delete(@PathVariable Long id, RedirectAttributes attributes){
        tagService.deleteTag(id);
        attributes.addFlashAttribute("message","删除成功");
        return "redirect:/admin/tags";
    }
}
