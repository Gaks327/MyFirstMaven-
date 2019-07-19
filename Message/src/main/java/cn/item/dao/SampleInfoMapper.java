package cn.item.dao;

import cn.item.bean.SampleInfo;
import cn.item.bean.SampleInfoWithBLOBs;

public interface SampleInfoMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(SampleInfoWithBLOBs record);

    int insertSelective(SampleInfoWithBLOBs record);

    SampleInfoWithBLOBs selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SampleInfoWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(SampleInfoWithBLOBs record);

    int updateByPrimaryKey(SampleInfo record);
}