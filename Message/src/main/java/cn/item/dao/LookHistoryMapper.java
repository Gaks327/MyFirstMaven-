package cn.item.dao;

import cn.item.bean.LookHistory;

public interface LookHistoryMapper {
    int deleteByPrimaryKey(Integer lId);

    int insert(LookHistory record);

    int insertSelective(LookHistory record);

    LookHistory selectByPrimaryKey(Integer lId);

    int updateByPrimaryKeySelective(LookHistory record);

    int updateByPrimaryKey(LookHistory record);
}