package com.zp.model;

/**
 * 成绩实体类
 * @author fer
 * @version 1.0
 */
public class Score {
	private int id;
	private String testpaperId; //试卷号
	private String studentId; //学号
	private float value;	//分数
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTestpaperId() {
		return testpaperId;
	}
	public void setTestpaperId(String testpaperId) {
		this.testpaperId = testpaperId;
	}
	public String getStudentId() {
		return studentId;
	}
	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}
	public float getValue() {
		return value;
	}
	public void setValue(float value) {
		this.value = value;
	}
	
}
