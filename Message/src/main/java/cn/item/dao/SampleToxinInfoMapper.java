package cn.item.dao;

import cn.item.bean.SampleToxinInfo;

public interface SampleToxinInfoMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(SampleToxinInfo record);

    int insertSelective(SampleToxinInfo record);

    SampleToxinInfo selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SampleToxinInfo record);

    int updateByPrimaryKey(SampleToxinInfo record);
}