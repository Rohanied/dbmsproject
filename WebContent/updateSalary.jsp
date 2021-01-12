<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="Project.ConnectionProvider" %> 
<%@ page import="java.sql.*" %>
<%
String doc_id = request.getParameter("doc_id");
String percent = request.getParameter("raise");
try{
	Connection con=ConnectionProvider.getcon();
	Statement st=con.createStatement();
	System.out.println(doc_id);
	float percentInt = Float.parseFloat(percent)/100;
	ResultSet rs = st.executeQuery("select salary from doctor where doc_id = '"+doc_id+"'");
	rs.next();
	float Sal = rs.getFloat(1) + rs.getFloat(1)*percentInt;
	System.out.println(Sal);
	boolean b = st.execute("update doctor set salary = "+Sal+"where doc_id = '"+doc_id+"'");
	System.out.print(b);
	response.sendRedirect("doctor.jsp");
}
	
catch(Exception e)
{
	System.out.print(e.getMessage());
	response.sendRedirect("errorPage.jsp");
	}
%>  