package com.lee.service;

import com.lee.po.Comment;

import java.util.List;

/**
 * @author helloyore
 * @createTime 2021年12月17日 11:49:00
 * @Description
 */
public interface CommentService {
    List<Comment> listCommentByBlogId(Long blogId);

    Comment saveComment(Comment comment);
}
