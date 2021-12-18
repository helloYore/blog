package com.lee.service;

import com.lee.po.Type;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

/**
 * @author helloyore
 * @createTime 2021年12月15日 19:13:00
 */
public interface TypeService {
    Type saveType(Type type);
    Type getType(Long id);
    Type getTypeByName(String name);
    Page<Type> listType(Pageable pageable);
    List<Type> listType();
    //首页显示的几个多的分类
    List<Type> listTypeTop(Integer size);
    Type updateType(Long id, Type type);
    void deleteType(Long id);
}
