package com.zp.service;

import java.util.List;

import com.zp.model.Course;

/**
 * 科目信息操作业务层抽象
 * @author blindeagle
 * @version 1.0
 */
public interface CourseServiceI {

	/**
	 * 根据年级号查询所学课程
	 * @author blindeagle
	 * @param gradeId 年级号
	 * @return 符合年级的课程的集合
	 */
	public List<Course> queryCourseByGradeId(String gradeId);
	
	/**
	 * 根据课程号查询课程信息
	 * @author blindeagle
	 * @param courseId 课程号
	 * @return Course 查询到的课程对象
	 */
	public Course queryCourseByCourseId(String courseId);
	
}
