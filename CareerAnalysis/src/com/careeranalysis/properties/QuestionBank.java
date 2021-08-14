package com.careeranalysis.properties;

public class QuestionBank {
	int id;
	String keyword;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	@Override
	public String toString() {
		return "QuestionBank [id=" + id + ", keyword=" + keyword + "]";
	}
}
