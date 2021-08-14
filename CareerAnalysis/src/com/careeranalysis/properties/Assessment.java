package com.careeranalysis.properties;

public class Assessment {
public String assessment_name;
public int assessment_id;
public String getAssessment_name() {
	return assessment_name;
}
public void setAssessment_name(String assessment_name) {
	this.assessment_name = assessment_name;
}
@Override
public String toString() {
	return "Assessment [assessment_name=" + assessment_name + ", assessment_id=" + assessment_id
			+ ", getAssessment_name()=" + getAssessment_name() + ", getAssessment_id()=" + getAssessment_id()
			+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
}
public int getAssessment_id() {
	return assessment_id;
}
public void setAssessment_id(int assessment_id) {
	this.assessment_id = assessment_id;
}
}
