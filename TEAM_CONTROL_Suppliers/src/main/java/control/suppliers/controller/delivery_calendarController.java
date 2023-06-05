package control.suppliers.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/cal.do")
public class delivery_calendarController extends HttpServlet{
	
	private static final long serialVersionUID = 1L;
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 	//인코딩
		 	request.setCharacterEncoding("UTF-8");
		 	response.setContentType("text/html; charset=UTF-8");
		 	
		 	//요청받을 변수 선언
		 	String command = request.getParameter("command");
		 	
		 	if(command.equals("calendar")) {
		 		response.sendRedirect("delivery_calendar.jsp");
		 	}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}

