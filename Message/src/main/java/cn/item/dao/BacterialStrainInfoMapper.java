package cn.item.dao;

import cn.item.bean.BacterialStrainInfo;

public interface BacterialStrainInfoMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(BacterialStrainInfo record);

    int insertSelective(BacterialStrainInfo record);

    BacterialStrainInfo selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(BacterialStrainInfo record);

    int updateByPrimaryKey(BacterialStrainInfo record);
}