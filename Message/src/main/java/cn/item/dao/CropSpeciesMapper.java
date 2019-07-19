package cn.item.dao;

import cn.item.bean.CropSpecies;

public interface CropSpeciesMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CropSpecies record);

    int insertSelective(CropSpecies record);

    CropSpecies selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CropSpecies record);

    int updateByPrimaryKey(CropSpecies record);
}