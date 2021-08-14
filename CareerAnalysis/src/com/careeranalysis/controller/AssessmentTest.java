package com.careeranalysis.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Vector;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.careeranalysis.dao.UserDao;
import com.careeranalysis.db.DBCon;

/**
 * Servlet implementation class AssessmentTest
 */
@WebServlet("/AssessmentTest")
public class AssessmentTest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AssessmentTest() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int size = Integer.parseInt(request.getParameter("size"));
		int sum = 0;double average = 0;int  assessment_id = 0;
		String assessment_name = request.getParameter("assessment_name");
		Connection con = null;
		HttpSession session = request.getSession();
		String username = (String) session.getAttribute("uname");
		PrintWriter out  = response.getWriter();
		for(int i=1;i<=size;i++) {
			String option = request.getParameter("option_a_"+i);
			 assessment_id = Integer.parseInt(request.getParameter("assessment_id"));
			int option_weight = Integer.parseInt(option);
			sum = sum+option_weight;
		}
		average = sum/size;
		try {
			 con = DBCon.getConnection();
			PreparedStatement ps = con.prepareStatement("insert into assessment_response_tab(assessment_id,user,marks_obtained) values(?,?,?)");
			ps.setInt(1, assessment_id);
			ps.setString(2, username);
			ps.setDouble(3, average);
			int row = ps.executeUpdate();
			if(row == 1) {
				Vector<String> vec = UserDao.getStreams(assessment_id, average);
				RequestDispatcher rd = request.getRequestDispatcher("TestShower.jsp");
				request.setAttribute("assessment_name", assessment_name);
				request.setAttribute("average_received",average);
				request.setAttribute("Streams", vec);
				rd.forward(request, response);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Failed to Show Stream.');");
			out.println("window.location= \"UserPage.jsp\"");
			out.println("</script>");
			
		} finally {
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
