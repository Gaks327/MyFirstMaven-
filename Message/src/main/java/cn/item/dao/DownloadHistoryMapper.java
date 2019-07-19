package cn.item.dao;

import cn.item.bean.DownloadHistory;

public interface DownloadHistoryMapper {
    int deleteByPrimaryKey(Integer dId);

    int insert(DownloadHistory record);

    int insertSelective(DownloadHistory record);

    DownloadHistory selectByPrimaryKey(Integer dId);

    int updateByPrimaryKeySelective(DownloadHistory record);

    int updateByPrimaryKey(DownloadHistory record);
}