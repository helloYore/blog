package com.lee.dao;

import com.lee.po.Comment;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

/**
 * @author helloyore
 * @createTime 2021年12月17日 11:51:00
 * @Description
 */
public interface CommentRepository extends JpaRepository<Comment, Long>{
    List<Comment> findByBlogIdAndParentCommentNull(Long blogId, Sort sort);
}
