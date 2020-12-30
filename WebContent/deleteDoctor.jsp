<%@ page import="Project.ConnectionProvider" %> 
<%@ page import="java.sql.*" %>
<%
String doc_id = request.getParameter("doc_id");
try{
	Connection con=ConnectionProvider.getcon();
	Statement st=con.createStatement();
	System.out.print("\033[H\033[2J");  
	System.out.flush();
	System.out.println(doc_id);
	boolean b = st.execute("delete from doctor where doc_id = '"+doc_id+"'");
	System.out.print(b);
	response.sendRedirect("index.jsp");
}
	
catch(Exception e)
{
	System.out.print(e.getMessage());
	}
%>  