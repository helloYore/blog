package com.lee.service;

import com.lee.po.Blog;
import com.lee.vo.BlogQuery;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;
import java.util.Map;

/**
 * @author helloyore
 * @createTime 2021年12月16日 13:59:00
 * @Description
 */
public interface BlogService {
    Blog getBlog(Long id);

    Blog getAndConvert(Long id);

    Page<Blog> listBlog(Pageable pageable, BlogQuery blog);

    Page<Blog> listBlog(Pageable pageable);

    Page<Blog> listBlog(Long tagId, Pageable pageable);


    Page<Blog> listBlog(String query, Pageable pageable);


    List<Blog> listRecommendBlogTop(Integer size);

    Blog saveBlog(Blog blog);

    Blog updateBlog(Long id, Blog blog);

    void deleteBlog(Long id);

    Map<String, List<Blog>> archiveBlog();

    Long countBlog();
}
