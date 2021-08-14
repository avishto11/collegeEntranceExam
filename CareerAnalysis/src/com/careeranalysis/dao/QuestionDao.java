package com.careeranalysis.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;


import javax.servlet.http.HttpServletRequest;

import com.careeranalysis.db.DBCon;
import com.careeranalysis.properties.MCQ;
import com.careeranalysis.properties.QuestionBank;

public class QuestionDao {
	public static boolean InsertQuestion(String question_text,String question_option_a,String question_option_b,String question_option_c,String question_option_d,String question_option_a_weight,String question_option_b_weight,String question_option_c_weight,String question_option_d_weight,String keyword) {
		boolean res = false;
		Connection con = null;
		try {
			 con = DBCon.getConnection();
			PreparedStatement ps = null;
			int row = 0;
			ps = con.prepareStatement("insert into question_tab(text,option_a,option_b,option_c,option_d,op_a_weight,op_b_weight,op_c_weight,op_d_weight,keyword) values(?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1, question_text);
			ps.setString(2, question_option_a);
			ps.setString(3, question_option_b);
			ps.setString(4, question_option_c);
			ps.setString(5, question_option_d);
			ps.setInt(6, Integer.parseInt(question_option_a_weight));
			ps.setInt(7, Integer.parseInt(question_option_b_weight));
			ps.setInt(8, Integer.parseInt(question_option_c_weight));
			ps.setInt(9, Integer.parseInt(question_option_d_weight));
			ps.setString(10, keyword);
			row = ps.executeUpdate();
			if(row == 1) {
				res = true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return res;
	}
	
	public static Vector<QuestionBank> GetQuestions(){
		Vector<QuestionBank> vec = new Vector<>();
		Connection con = null;
		ResultSet rs = null;
		try {
			con = DBCon.getConnection();
			PreparedStatement ps = null;
			ps = con.prepareStatement("select id,keyword from question_tab");
			rs = ps.executeQuery();
			while(rs.next()) {
				QuestionBank obj = new QuestionBank();
				obj.setId(rs.getInt(1));
				obj.setKeyword(rs.getString(2));
				vec.add(obj);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return vec;
	}
	
	
	public static boolean CreateAssessment(HttpServletRequest request) {
		boolean res = false;
		Connection con = null;
		int row = 0;
		
		try {
			con = DBCon.getConnection();
			PreparedStatement ps = null;
			ps = con.prepareStatement("insert into assessment_tab(name,keyword_1,keyword_2,keyword_3,num_of_questions,q_id_string) values(?,?,?,?,?,?)");
			ps.setString(1, request.getParameter("Assesment_name"));
			ps.setString(2, request.getParameter("keyword_1"));
			ps.setString(3, request.getParameter("keyword_2"));
			ps.setString(4, request.getParameter("keyword_3"));
			ps.setString(5, request.getParameter("Num_of_questions"));
			ps.setString(6, request.getParameter("question_bank"));
			row = ps.executeUpdate();
			if(row == 1) {
				res = true;
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return res;
	}
	
	
	public static Vector<MCQ> getallAssessments(String Assessment_Name){
		Vector<MCQ> vec = new Vector<MCQ>();
		Connection con = null;
		ResultSet rs = null,rs2=null;
		String q_id_string = null;int assessment_id = 0;
		try {
			con = DBCon.getConnection();
			PreparedStatement ps = null,ps2 = null;
			ps = con.prepareStatement("select q_id_string,id from assessment_tab where name = ?");
			System.out.println("Test Assessment::"+Assessment_Name);
			ps.setString(1, Assessment_Name);
			rs = ps.executeQuery();
			while(rs.next()) {
				
				q_id_string = rs.getString("q_id_string");
				System.out.println("Q_ID_String::"+q_id_string);
				assessment_id = rs.getInt("id");
			}
			String q_arr[] = q_id_string.split(",");
			for(int i=0;i<q_arr.length;i++) {
				ps2 = con.prepareStatement("select * from question_tab where id = ?");
				ps2.setInt(1, Integer.parseInt(q_arr[i]));
				rs2 = ps2.executeQuery();
				while(rs2.next()) {
					MCQ obj = new MCQ();
					obj.setAssement_id(assessment_id);
					obj.setQuestion_text(rs2.getString("text"));
					obj.setOption_a(rs2.getString("option_a"));
					obj.setOption_b(rs2.getString("option_b"));
					obj.setOption_c(rs2.getString("option_c"));
					obj.setOption_d(rs2.getString("option_d"));
					obj.setOption_a_weight(rs2.getInt("op_a_weight"));
					obj.setOption_b_weight(rs2.getInt("op_b_weight"));
					obj.setOption_c_weight(rs2.getInt("op_c_weight"));
					obj.setOption_d_weight(rs2.getInt("op_d_weight"));
					vec.add(obj);
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return vec;
	}
	
	public static Vector<String> getAssessmentName(){
		Vector<String> obj = new Vector<String>();
		Connection con = null;
		ResultSet rs = null;
		try {
			con = DBCon.getConnection();
			PreparedStatement ps = null;
			ps = con.prepareStatement("select name from assessment_tab");
			rs = ps.executeQuery();
			while(rs.next()) {
				obj.add(rs.getString(1));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
		return obj;
	}


public static Vector<String> getStreamName(){
	Vector<String> vec = new Vector<String>();
	Connection con = null;
	ResultSet rs = null;
	PreparedStatement ps = null;
	try {
		con = DBCon.getConnection();
		ps = con.prepareStatement("select stream from stream_tab");
		rs = ps.executeQuery();
		while(rs.next()) {
			vec.add(rs.getString("stream"));
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}finally {
		try {
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	return vec;
}
}