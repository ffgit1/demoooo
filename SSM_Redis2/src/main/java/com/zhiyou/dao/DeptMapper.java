package com.zhiyou.dao;

import com.zhiyou.model.Dept;
import java.util.List;

public interface DeptMapper {
    int insert(Dept record);

    List<Dept> selectAll();
}