package cn.item.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.item.bean.User;

public interface UserMapper {
    int deleteByPrimaryKey(@Param("id")Integer id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(@Param("id")Integer id);

    int updateByPrimaryKey(User user);
    
    List<User> selectAll();

	int updateAudit(@Param("checkStatus")Integer checkStatus,@Param("id")Integer id);

	int updateByPrimaryKeySelective(User user);

	List<User> fuzzyselect(@Param("username")String username,@Param("company")String company,@Param("checkStatus")Integer checkStatus);
}