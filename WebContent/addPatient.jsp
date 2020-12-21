<%@ page import="Project.ConnectionProvider" %> 
<%@ page import="java.sql.*" %>
<%
String name=request.getParameter("name");
String gender=request.getParameter("gender");
String age=request.getParameter("age");
String address=request.getParameter("address");
String phone=request.getParameter("phone");
String doctor=request.getParameter("doctor");
String ward=request.getParameter("ward");

try{
	Connection con=ConnectionProvider.getcon();
	Statement st=con.createStatement();
	ResultSet rs = st.executeQuery("select * from patients");
	rs.last();
	String id = rs.getString(1);
	int intId = Integer.parseInt(id.substring(2,4)) + 1;
	String newID = " ";
	if(intId>9){
		 newID = "P0"+Integer.toString(intId);
		 System.out.println(newID);
	}
	else{
		 newID = "P00"+Integer.toString(intId);
		 System.out.println(newID);
	}
	
	st.executeUpdate("insert into Patients values('"+newID+"','"+name+"','"+gender+"','"+age+"','"+address+"',"+Integer.parseInt(phone)+",'Admitted','"+doctor+"','"+ward+"')");
	response.sendRedirect("Patients.jsp");
}
catch(Exception e)
{
	System.out.print(e.getMessage());
	}
%> 