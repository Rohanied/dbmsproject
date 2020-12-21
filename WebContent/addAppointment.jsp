<%@ page import="Project.ConnectionProvider" %> 
<%@ page import="java.sql.*" %>
<%
String name=request.getParameter("name");
String phone=request.getParameter("phone");
String doctor=request.getParameter("doctor");
String date=request.getParameter("date");
System.out.println(doctor+" ");

try{
	Connection con=ConnectionProvider.getcon();
	Statement st=con.createStatement();
	//ResultSet rsDoc = st.executeQuery("select * from doctor where name = '"+doctor+"'");
	//rsDoc.next();
	//System.out.print(rsDoc.getString(2));
	ResultSet rs = st.executeQuery("select * from appointments");
	st.executeUpdate("insert into appointments values('"+name+"',"+Integer.parseInt(phone)+",'"+doctor+"','"+date+"')");
	response.sendRedirect("Appointments.jsp");
	
}
catch(Exception e)
{
	System.out.print(e.getMessage());
	}
%> 