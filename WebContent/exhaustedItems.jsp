<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
<%@ page import="Project.ConnectionProvider" %> 

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Untitled</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Alatsi">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Alfa+Slab+One">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Almarai">
    <link rel="stylesheet" href="assets/css/styles.css">
</head>

<body style="border-color: rgba(33,37,41,0);">
    <h1 style="color: rgb(72,115,157);font-size: 40;font-family: Almarai, sans-serif;padding: 10px;">Exhausted Items</h1>
    
     <div class="table-responsive" style="background: #ffffff;font-size: 20px;margin-top: 20px;margin-bottom: 10px;padding-right: 10px;padding-left: 10px;">
        <table class="table">
            <thead>
                <tr>
                    <th style="background: #b9e4e1;width: 70px;border: 1px solid #000000 ;">Item</th>
                </tr>
            </thead>
            <tbody style="border: 1px solid #000000 ;">
                <tr style="border: 1px solid #000000 ;"></tr>
                <tr style="border: 1px solid #000000 ;">
                 <%
  
try{
	Connection con = Project.ConnectionProvider.getcon();
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select * from exhauteditems");
	while(rs.next()){
		System.out.println(rs.getString(1));
	%>
                    <td style="border: 1px solid #000000 ;"><%=rs.getString(1) %></td>
                    </tr>
                <% }
}
	catch(Exception e){
		System.out.print("jsp: "+e);
	}
	%>
            </tbody>
        </table>
    </div>
    
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>