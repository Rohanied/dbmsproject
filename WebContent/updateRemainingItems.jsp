<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="Project.ConnectionProvider" %> 
<%@ page import="java.sql.*" %>
<%
String item = request.getParameter("item");
String value = request.getParameter("value");
try{
	Connection con=ConnectionProvider.getcon();
	Statement st=con.createStatement();
	item.substring(0,1).toUpperCase();
	int valueInt = Integer.parseInt(value);
	boolean b = st.execute("update inventory set remaining_items = remaining_items+"+valueInt+" where item = '"+item+"'");
	response.sendRedirect("Inventory.jsp");
}
	
catch(Exception e)
{
	System.out.print(e.getMessage());
	response.sendRedirect("errorPage.jsp");
	}
%>  