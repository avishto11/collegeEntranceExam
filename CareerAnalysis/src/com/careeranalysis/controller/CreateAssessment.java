package com.careeranalysis.controller;

import java.io.IOException;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.careeranalysis.dao.QuestionDao;
import com.careeranalysis.dao.UserDao;
import com.careeranalysis.properties.Assessment;
import com.careeranalysis.properties.QuestionBank;
import com.google.gson.Gson;

/**
 * Servlet implementation class CreateAssessment
 */
@WebServlet("/CreateAssessment")
public class CreateAssessment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateAssessment() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		if(request.getParameter("action").equals("GETQuestions")) {
			Vector<QuestionBank> vec = QuestionDao.GetQuestions();
			String jsonQuestionDetails = new Gson().toJson(vec);
			response.getWriter().print(jsonQuestionDetails);
		}
		else if(request.getParameter("action").equals("SubmitAssessment")){
			if(QuestionDao.CreateAssessment(request)) {
				response.getWriter().print(1);
			}else {
				response.getWriter().print(0);
			}
			
		}
		else {
			System.out.println("Being Called");
			Vector<Assessment> vec = UserDao.GetAssessmentDetails();
			String json = new Gson().toJson(vec);
			System.out.println("JSON::"+json);
			response.getWriter().print(json);
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
