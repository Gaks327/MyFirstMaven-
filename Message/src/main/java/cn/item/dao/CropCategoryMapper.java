package cn.item.dao;

import cn.item.bean.CropCategory;

public interface CropCategoryMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CropCategory record);

    int insertSelective(CropCategory record);

    CropCategory selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CropCategory record);

    int updateByPrimaryKey(CropCategory record);
}