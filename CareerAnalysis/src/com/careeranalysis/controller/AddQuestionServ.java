package com.careeranalysis.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.careeranalysis.dao.QuestionDao;

/**
 * Servlet implementation class AddQuestionServ
 */
@WebServlet("/AddQuestionServ")
public class AddQuestionServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddQuestionServ() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String question_text =  request.getParameter("q_text");
		String question_option_a = request.getParameter("q_op_a");
		String question_option_b = request.getParameter("q_op_b");
		String question_option_c = request.getParameter("q_op_c");
		String question_option_d = request.getParameter("q_op_d");
		String question_option_a_weight = request.getParameter("q_op_a_weight");
		String question_option_b_weight = request.getParameter("q_op_b_weight");
		String question_option_c_weight = request.getParameter("q_op_c_weight");
		String question_option_d_weight = request.getParameter("q_op_d_weight");
		String question_keyword = request.getParameter("q_keyword");
		PrintWriter out  = response.getWriter();
		if(QuestionDao.InsertQuestion(question_text, question_option_a, question_option_b, question_option_c, question_option_d, question_option_a_weight, question_option_b_weight, question_option_c_weight, question_option_d_weight, question_keyword)) {
			out.println("<script type=\"text/javascript\">");
			out.println("alert('QA is Inserted.');");
			out.println("window.location= \"AdminPage.jsp\"");
			out.println("</script>");
		}else {
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Failed to Insert QA.');");
			out.println("window.location= \"AdminPage.jsp\"");
			out.println("</script>");
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
