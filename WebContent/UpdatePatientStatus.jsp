<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="Project.ConnectionProvider" %> 
<%@ page import="java.sql.*" %>
<%
String patient_id = request.getParameter("patient_id");
String doctor = request.getParameter("status");
try{
	Connection con=ConnectionProvider.getcon();
	Statement st=con.createStatement();
	//System.out.println(doc_id);
	st.executeUpdate("update patients set status = '"+doctor+"' where patient_id = '"+patient_id+"'");
	//System.out.print(b);
	response.sendRedirect("Patients.jsp");
}
	
catch(Exception e)
{
	System.out.print(e.getMessage());
	response.sendRedirect("errorPage.jsp");
	}
%>  