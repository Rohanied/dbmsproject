<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="Project.ConnectionProvider" %> 
<%@ page import="java.sql.*" %>
<%
String doc_id = request.getParameter("doc_id");
try{
	Connection con=ConnectionProvider.getcon();
	Statement st=con.createStatement();
	System.out.println(doc_id);
	boolean b = st.execute("delete from staffs where staff_id ="+Integer.parseInt(doc_id));
	response.sendRedirect("Staffs.jsp");
}
	
catch(Exception e)
{
	System.out.print(e.getMessage());
	}
%>  