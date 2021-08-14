package com.careeranalysis.controller;

import java.io.IOException;
import java.io.PrintWriter;
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
 * Servlet implementation class AddCollege
 */
@WebServlet("/AddCollege")
public class AddCollege extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddCollege() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String level = request.getParameter("level");
		String type = request.getParameter("type");
		String institute_name = request.getParameter("institute_name");
		String course = request.getParameter("course");
		String locality = request.getParameter("locality");
		String village = request.getParameter("village");
		String district = request.getParameter("district");
		String stream = request.getParameter("Stream");
		Connection con = null;
		PrintWriter out  = response.getWriter();
		try {
			con = DBCon.getConnection();
			PreparedStatement ps = null;
			int row = 0;
			ps = con.prepareStatement("insert into college_tab(institute_name,level,stream,type,course,locality,village,district) values(?,?,?,?,?,?,?,?)");
			ps.setString(1, institute_name);
			ps.setString(2, level);
			ps.setString(3, stream);
			ps.setString(4, type);
			ps.setString(5, course);
			ps.setString(6, locality);
			ps.setString(7, village);
			ps.setString(8, district);
			row = ps.executeUpdate();
			if(row == 1) {
				out.println("<script type=\"text/javascript\">");
				out.println("alert('College Details is Inserted.');");
				out.println("window.location= \"AdminPage.jsp\"");
				out.println("</script>");
			}else {
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Failed to Insert College Details.');");
				out.println("window.location= \"AdminPage.jsp\"");
				out.println("</script>");
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
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
