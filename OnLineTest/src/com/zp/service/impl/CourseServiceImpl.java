package com.zp.service.impl;

import java.util.List;

import com.zp.dao.impl.CourseDaoImpl;
import com.zp.model.Course;
import com.zp.service.CourseServiceI;

/**
 * 科目信息操作业务层实现类
 * @author blindeagle
 * @version 1.0
 */
public class CourseServiceImpl implements CourseServiceI {

	public List<Course> queryCourseByGradeId(String gradeId) {
		return new CourseDaoImpl().queryCourseNameByGradeId(gradeId);
	}

	@Override
	public Course queryCourseByCourseId(String courseId) {
		return new CourseDaoImpl().queryCourseByCourseId(courseId);
	}

}
