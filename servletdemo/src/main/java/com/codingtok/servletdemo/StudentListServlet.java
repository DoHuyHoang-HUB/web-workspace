package com.codingtok.servletdemo;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/StudentListServlet")
public class StudentListServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2201273395056461915L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String[] students = {"Xuan Xuan", "Ha Ha", "Thu Thu", "Dong Dong"};
		req.setAttribute("student_list", students);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view-students.jsp");
		
		dispatcher.forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
