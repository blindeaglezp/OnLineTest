package com.zp.service.impl;

import java.util.ArrayList;
import java.util.List;

import com.zp.dao.impl.ScoreDaoImpl;
import com.zp.model.Score;
import com.zp.model.TestPaper;
import com.zp.service.ScoreServiceI;

/**
 * 成绩管理业务层实现类
 * @author 盲鹰
 *
 */
public class ScoreServiceImpl implements ScoreServiceI {
	private Score scoreObj = null; // 成绩对象
	private List<TestPaper> testPapers; // 试卷集合
	private TestPaper testPaper; // 试卷对象
	private List<Score> scores; // 成绩集合

	@Override
	public List<Score> queryScoreByStudentId(String studentId) {
		return new ScoreDaoImpl().queryScoreByStudentId(studentId);
	}

	@Override
	public int insertScore(String studentId, String testPaperId, float value) {
		scoreObj = new Score();
		scoreObj.setStudentId(studentId);
		scoreObj.setTestpaperId(testPaperId);
		scoreObj.setValue(value);
		return new ScoreDaoImpl().insertScore(scoreObj);
	}

	@Override
	public List<Score> queryScoreByStudentIdAndCourseId(String studentId, String courseId) {
		testPapers = new TestPaperServiceImpl().queryTestPaperByCourseId(courseId);
		if (testPapers != null || testPapers.size() > 0) {
			scores = new ArrayList<Score>();
			for (int i = 0; i < testPapers.size(); i++) {
				testPaper = testPapers.get(i);
				scoreObj = new ScoreDaoImpl().queryScoreByStudentIdAndTestPaperId(studentId, testPaper.getId());
				if (scoreObj != null) {
					scores.add(scoreObj);
				}
			}
		}
		return scores;
	}

	@Override
	public boolean checkScoreIsSubmit(String studentId, String testPaperId) {
		boolean flag = false;
		scoreObj = new ScoreDaoImpl().queryScoreByStudentIdAndTestPaperId(studentId, testPaperId);
		if (scoreObj != null) {
			flag = true;
		}
		return flag;
	}

}
