package com.servlets;

import com.dbConnect.*;
import com.javaClasses.Card;
import com.javaClasses.Customer;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/PaymentServlet")
public class PaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html"); 
		
		String nic = request.getParameter("nic");
		String accNo = request.getParameter("accNo");
		String firstName = request.getParameter("fname");
		String lastName = request.getParameter("lname");
		String email = request.getParameter("email");
		String cardNumber = request.getParameter("cardnumber");
		String scode = request.getParameter("scode");
		String pcode = request.getParameter("pcode");
		String amount = request.getParameter("amount");

		
	    boolean isTrue = CustomerDBConncet.makePayment(accNo, firstName, lastName, email, cardNumber, scode, pcode, amount);
	    
	    if(isTrue == true) {
	    	CustomerDBConncet.updatePayment(accNo, amount);
	    	
	    	response.sendRedirect("customerdetails");
	    }
	    else {
	    	out.println("<script type=\"text/javascript\">");
			out.println("alert('Somthing Happened!!! Update Your date is no success');");
			out.println("</script>");
	    }
	}

}
