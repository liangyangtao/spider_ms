package com.spider.mybatis.mapper;

import com.spider.mybatis.entity.PtfDayNumWeb;
import com.spider.mybatis.entity.PtfDayNumWebExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface PtfDayNumWebMapper {

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table ptf_day_num_web
	 * @mbggenerated  Thu Jan 14 16:42:20 GMT+08:00 2016
	 */
	int countByExample(PtfDayNumWebExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table ptf_day_num_web
	 * @mbggenerated  Thu Jan 14 16:42:20 GMT+08:00 2016
	 */
	int deleteByExample(PtfDayNumWebExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table ptf_day_num_web
	 * @mbggenerated  Thu Jan 14 16:42:20 GMT+08:00 2016
	 */
	int deleteByPrimaryKey(Integer numId);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table ptf_day_num_web
	 * @mbggenerated  Thu Jan 14 16:42:20 GMT+08:00 2016
	 */
	int insert(PtfDayNumWeb record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table ptf_day_num_web
	 * @mbggenerated  Thu Jan 14 16:42:20 GMT+08:00 2016
	 */
	int insertSelective(PtfDayNumWeb record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table ptf_day_num_web
	 * @mbggenerated  Thu Jan 14 16:42:20 GMT+08:00 2016
	 */
	List<PtfDayNumWeb> selectByExample(PtfDayNumWebExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table ptf_day_num_web
	 * @mbggenerated  Thu Jan 14 16:42:20 GMT+08:00 2016
	 */
	PtfDayNumWeb selectByPrimaryKey(Integer numId);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table ptf_day_num_web
	 * @mbggenerated  Thu Jan 14 16:42:20 GMT+08:00 2016
	 */
	int updateByExampleSelective(@Param("record") PtfDayNumWeb record,
			@Param("example") PtfDayNumWebExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table ptf_day_num_web
	 * @mbggenerated  Thu Jan 14 16:42:20 GMT+08:00 2016
	 */
	int updateByExample(@Param("record") PtfDayNumWeb record,
			@Param("example") PtfDayNumWebExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table ptf_day_num_web
	 * @mbggenerated  Thu Jan 14 16:42:20 GMT+08:00 2016
	 */
	int updateByPrimaryKeySelective(PtfDayNumWeb record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table ptf_day_num_web
	 * @mbggenerated  Thu Jan 14 16:42:20 GMT+08:00 2016
	 */
	int updateByPrimaryKey(PtfDayNumWeb record);
}