package cn.item.dao;

import cn.item.bean.Par;

public interface ParMapper {
    int insert(Par record);

    int insertSelective(Par record);
}