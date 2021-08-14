package com.careeranalysis.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import com.careeranalysis.db.DBCon;
import com.careeranalysis.properties.Assessment;
import com.careeranalysis.properties.CollegeDetails;

public class UserDao {
	public static boolean RegisterDao(String name,String email,String password,String address,String number) {
		boolean res = false;
		Connection con = null;
		try {
			 con = DBCon.getConnection();
			PreparedStatement ps = null;
			int row = 0;
			ps = con.prepareStatement("insert into user_cred(name,email,password,address,number) values(?,?,?,?,?)");
			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, password);
			ps.setString(4, address);
			ps.setString(5, number);
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
	public static int[] loginUser(String email,String pswd) {
		Connection con = null;//DBCon.getConnection();
		//boolean result = false;
		PreparedStatement ps = null;
		int[] result = new int[2];
		try {
			con = DBCon.getConnection();
			ps = con.prepareStatement("select * from user_cred where email = ?");
			ps.setString(1, email);
			//ps.setString(2, pswd);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				System.out.println(rs.getString("password"));					
				if(rs.getString("email").equals(email) && pswd.equals(rs.getString("password"))) {
				result[0] = 1;
				result[1] = rs.getInt("type");
				
			}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {try {
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}
		return result;
	}
	
	public static Vector<String> getStreams(int assessment_id,double marks_received) {
		Vector<String> obj = new Vector<String>();
		Connection con = null;//DBCon.getConnection();
		//boolean result = false;
		PreparedStatement ps = null;
		
		try {
			con = DBCon.getConnection();
			ps = con.prepareStatement("select * from stream_choice_tab where assessment_id = ?");
			ps.setInt(1, assessment_id);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				double opening_average = rs.getDouble("opening_average");
				double closing_average = rs.getDouble("closing_average");
				if(marks_received>=opening_average && marks_received<=closing_average) {
					String stream_name = rs.getString("stream_name");
					obj.add(stream_name);
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
		return obj;
	}
	
	public static Vector<CollegeDetails> getCollegeDetails(String stream){
		Vector<CollegeDetails> vec = new Vector<CollegeDetails>();
		Connection con = null;//DBCon.getConnection();
		//boolean result = false;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			con = DBCon.getConnection();
			ps = con.prepareStatement("select * from college_tab where  stream = ?");
			ps.setString(1, stream);
			rs = ps.executeQuery();
			while(rs.next()) {
				CollegeDetails obj = new CollegeDetails();
				obj.setInstitute_name(rs.getString("institute_name"));
				obj.setCourse(rs.getString("course"));
				obj.setDistrict(rs.getString("district"));
				obj.setLevel(rs.getString("level"));
				obj.setLocality(rs.getString("locality"));
				obj.setType(rs.getString("type"));
				obj.setVillage(rs.getString("village"));
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
	public static Vector<Assessment> GetAssessmentDetails(){
		Vector<Assessment> vec = new Vector<Assessment>();
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try {
			con = DBCon.getConnection();
			ps = con.prepareStatement("select * from assessment_tab");
			rs= ps.executeQuery();
			while(rs.next()) {
				Assessment obj = new Assessment();
				obj.setAssessment_id(rs.getInt("id"));
				obj.setAssessment_name(rs.getString("name"));
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
}
