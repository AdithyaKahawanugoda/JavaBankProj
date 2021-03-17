package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import com.dbConnect.*;
import com.javaClasses.Customer;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CustomerInsertServlet")
public class CustomerInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html"); 
		
	    String nic = request.getParameter("nic");
	    String name = request.getParameter("name");
	    String email = request.getParameter("email");
	    String address = request.getParameter("address");   
	    String phone = request.getParameter("phone");
	    String dob = request.getParameter("dob");
	    String gender =  request.getParameter("gender");
	    String password = request.getParameter("password");
	    double accountBalance;
	    int AccNo;
	    
	    int insertValue = CustomerDBConncet.insertcustomer(nic,name,email,address,phone,dob,gender,password);
	    
	    if(insertValue > 0) {
		    List<Customer> cusDetails = CustomerDBConncet.getCustomerDetails(nic);
	        request.setAttribute("cusDetails", cusDetails);
	        AccNo=CustomerDBConncet.getCustomerAccNo(nic);
	        CustomerDBConncet.createAcc(AccNo,nic);
	        accountBalance = CustomerDBConncet.getAccountBalance(nic);
			request.setAttribute("accountBalance", accountBalance);
	        
		    RequestDispatcher dis = request.getRequestDispatcher("userprofile.jsp");
		    dis.forward(request, response);  
	    }
	    else {
	    	out.println("<script type=\"text/javascript\">");
			out.println("alert('Somthing Happened!!! Your NIC is already in the system');");
			out.println("location='insertcustomer.jsp';");
			out.println("</script>");
	    }
	}

}
