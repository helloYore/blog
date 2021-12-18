package com.lee.dao;

import com.lee.po.Type;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

/**
 * @author helloyore
 * @createTime 2021年12月15日 19:18:00
 * @Description
 */
public interface TypeRepository extends JpaRepository<Type,Long> {
    Type findByName(String name);
    //根据分页对象里的参数
    @Query("select t from Type t")
    List<Type> findTop(Pageable pageable);
}
