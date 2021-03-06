package com.spider.mybatis.mapper;

import com.spider.mybatis.entity.UserWebsite;
import com.spider.mybatis.entity.UserWebsiteExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface UserWebsiteMapper {

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table ptf_user_website
	 * @mbggenerated  Thu Jan 14 16:42:20 GMT+08:00 2016
	 */
	int countByExample(UserWebsiteExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table ptf_user_website
	 * @mbggenerated  Thu Jan 14 16:42:20 GMT+08:00 2016
	 */
	int deleteByExample(UserWebsiteExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table ptf_user_website
	 * @mbggenerated  Thu Jan 14 16:42:20 GMT+08:00 2016
	 */
	int deleteByPrimaryKey(Integer id);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table ptf_user_website
	 * @mbggenerated  Thu Jan 14 16:42:20 GMT+08:00 2016
	 */
	int insert(UserWebsite record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table ptf_user_website
	 * @mbggenerated  Thu Jan 14 16:42:20 GMT+08:00 2016
	 */
	int insertSelective(UserWebsite record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table ptf_user_website
	 * @mbggenerated  Thu Jan 14 16:42:20 GMT+08:00 2016
	 */
	List<UserWebsite> selectByExample(UserWebsiteExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table ptf_user_website
	 * @mbggenerated  Thu Jan 14 16:42:20 GMT+08:00 2016
	 */
	UserWebsite selectByPrimaryKey(Integer id);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table ptf_user_website
	 * @mbggenerated  Thu Jan 14 16:42:20 GMT+08:00 2016
	 */
	int updateByExampleSelective(@Param("record") UserWebsite record,
			@Param("example") UserWebsiteExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table ptf_user_website
	 * @mbggenerated  Thu Jan 14 16:42:20 GMT+08:00 2016
	 */
	int updateByExample(@Param("record") UserWebsite record,
			@Param("example") UserWebsiteExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table ptf_user_website
	 * @mbggenerated  Thu Jan 14 16:42:20 GMT+08:00 2016
	 */
	int updateByPrimaryKeySelective(UserWebsite record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table ptf_user_website
	 * @mbggenerated  Thu Jan 14 16:42:20 GMT+08:00 2016
	 */
	int updateByPrimaryKey(UserWebsite record);
}