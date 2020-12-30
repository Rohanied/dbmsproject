<%@ page import="Project.ConnectionProvider" %> 
<%@ page import="java.sql.*" %>
<%
String name=request.getParameter("name");
String phone=request.getParameter("phone");
String gender=request.getParameter("gender");
String department=request.getParameter("department");
String shift=request.getParameter("shift");
String salary=request.getParameter("salary");

try{
	Connection con=ConnectionProvider.getcon();
	Statement st=con.createStatement();
	ResultSet rs = st.executeQuery("select * from staffs");
	String id;
	System.out.println(department+" "+shift);
	System.out.println(rs.last());
	id = rs.getString(1);
	int intId = Integer.parseInt(id.substring(2,4)) + 1;
	String newID = " ";
	if(intId>9){
		 newID = "S0"+Integer.toString(intId);
		 System.out.println(newID);
	}
	else{
		 newID = "S00"+Integer.toString(intId);
		 System.out.println(newID);
	}
	
	st.executeUpdate("insert into Staffs values('"+newID+"','"+name+"',"+Integer.parseInt(phone)+",'"+gender+"','"+department+"','"+shift+"','"+salary+"')");
	response.sendRedirect("Staffs.jsp");
}
catch(Exception e)
{
	System.out.print(e.getMessage());
	response.sendRedirect("errorPage.jsp");

	}
%> 