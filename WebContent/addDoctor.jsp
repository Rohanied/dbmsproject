<%@ page import="Project.ConnectionProvider" %> 
<%@ page import="java.sql.*" %>
<%
String name=request.getParameter("name");
String phone=request.getParameter("phone");
String speciality=request.getParameter("speciality");
String consultation=request.getParameter("consultation");
String salary=request.getParameter("salary");
try{
	Connection con=ConnectionProvider.getcon();
	Statement st=con.createStatement();
	System.out.println(name);
	ResultSet rs = st.executeQuery("select * from doctor");
	rs.last();
	String id = rs.getString(1);
	int intId = Integer.parseInt(id.substring(2,4)) + 1;
	String newID = " ";
	if(intId>9){
		 newID = "D0"+Integer.toString(intId);
		 System.out.println(newID);
	}
	else{
		 newID = "D00"+Integer.toString(intId);
		 System.out.println(newID);
	}
	
	st.executeUpdate("insert into Doctor values('"+newID+"','"+name+"',"+Double.parseDouble(phone)+",'"+speciality+"','"+consultation+"',"+Integer.parseInt(salary)+")");
	response.sendRedirect("index.jsp");
}
catch(Exception e)
{
	System.out.print(e.getMessage());
	response.sendRedirect("errorPage.jsp");
	}
%>  