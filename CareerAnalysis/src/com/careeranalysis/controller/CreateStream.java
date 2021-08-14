package com.careeranalysis.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.careeranalysis.db.DBCon;

/**
 * Servlet implementation class CreateStream
 */
@WebServlet("/CreateStream")
public class CreateStream extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateStream() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		String assessments = request.getParameter("assessments");
		String average_opening = request.getParameter("average_opening");
		String average_closing = request.getParameter("average_closing");
		String level = request.getParameter("level");
		String Choose_Stream = request.getParameter("Choose_Stream");
		System.out.println("Everything Getting Printed::"+assessments+","+average_closing+","+average_opening);
		System.out.println("Choosing Stream::"+Choose_Stream);
		Connection con = null;
		PreparedStatement ps1 = null,ps2 = null;
		int row1 = 0,row2=0;
		try {
			con = DBCon.getConnection();
			ps1 = con.prepareStatement("insert into stream_tab(stream,level) values(?,?)");
			ps1.setString(1, Choose_Stream);
			ps1.setString(2, level);
			row1 = ps1.executeUpdate();
			if(row1 == 1) {
				String assessment[] = assessments.split(",");
				String opening[] = average_opening.split(",");
				String closing[] = average_closing.split(",");
				for(int i=0;i<assessment.length;i++) {
					ps2 = con.prepareStatement("insert into stream_choice_tab(stream_name,assessment_id,opening_average,closing_average) values(?,?,?,?)");
					ps2.setString(1, Choose_Stream);
					ps2.setInt(2, Integer.parseInt(assessment[i]));
					ps2.setDouble(3, Integer.parseInt(opening[i]));
					ps2.setDouble(4, Integer.parseInt(closing[i]));
					row2 = ps2.executeUpdate();
					if(row2 == 1) {
						continue;
					}
				}
				
			}
			response.getWriter().print(1);
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
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
