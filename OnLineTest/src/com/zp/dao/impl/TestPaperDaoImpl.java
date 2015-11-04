package com.zp.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.zp.dao.TestPaperDaoI;
import com.zp.model.TestPaper;
import com.zp.util.DataTypeConvert;
import com.zp.util.JdbcUtil;

/**
 * 试卷信息数据库操作实现类
 * @author 盲鹰
 * @version 1.0
 */
public class TestPaperDaoImpl extends JdbcUtil implements TestPaperDaoI {

	@Override
	public List<TestPaper> queryTestPaperByCourseId(String courseId) {
		String sql = "select tp_id,tp_name,tp_majorid,tp_createdate,tp_testdate,tp_testTime,tp_score,tp_choicequestioninfo,tp_judgequestioninfo,tp_fillblanksquestioninfo from testpaper where tp_courseid=?";
		String[] params = new String[] {courseId};
		List<TestPaper> testPapers = new ArrayList<TestPaper>();
		TestPaper testPaper = null;
		rs = getQuery(sql, params);
		try {
			while (rs.next()) {
				testPaper = new TestPaper();
				testPaper.setId(rs.getString(1));
				testPaper.setName(rs.getString(2));
				testPaper.setCourseId(courseId);
				testPaper.setMajorId(rs.getString(3));
				testPaper.setCreateDate(DataTypeConvert.dateToString(rs.getDate(4)));
				testPaper.setTestDate(DataTypeConvert.dateToString(rs.getDate(5)));
				testPaper.setTestTime(rs.getInt(6));
				testPaper.setScore(rs.getInt(7));
				testPaper.setChoiceQuestionInfo(rs.getString(8));
				testPaper.setJudgeQuestionInfo(rs.getString(9));
				testPaper.setFillBlanksQuestionInfo(rs.getString(10));
				testPapers.add(testPaper);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeConnection();
		}
		return testPapers;
	}

	@Override
	public TestPaper queryTestPaperByTestPaperId(String testPaperId) {
		String sql = "select tp_name,tp_courseid,tp_majorid,tp_createdate,tp_testdate,tp_testTime,tp_score,tp_choicequestioninfo,tp_judgequestioninfo,tp_fillblanksquestioninfo from testpaper where tp_id=?";
		String[] params = new String[] {testPaperId};
		TestPaper testPaper = null;
		rs = getQuery(sql, params);
		try {
			if (rs.next()) {
				testPaper = new TestPaper();
				testPaper.setId(testPaperId);
				testPaper.setName(rs.getString(1));
				testPaper.setCourseId(rs.getString(2));
				testPaper.setMajorId(rs.getString(3));
				testPaper.setCreateDate(DataTypeConvert.dateToString(rs.getDate(4)));
				testPaper.setTestDate(DataTypeConvert.dateToString(rs.getDate(5)));
				testPaper.setTestTime(rs.getInt(6));
				testPaper.setScore(rs.getInt(7));
				testPaper.setChoiceQuestionInfo(rs.getString(8));
				testPaper.setJudgeQuestionInfo(rs.getString(9));
				testPaper.setFillBlanksQuestionInfo(rs.getString(10));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeConnection();
		}
		return testPaper;
	}

}
