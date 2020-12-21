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
    <link rel="stylesheet" href="assets/css/Contact-Form-Clean.css">
    <link rel="stylesheet" href="assets/css/styles.css">
</head>

<body>
    <h1 style="color: rgb(72,115,157);text-align: center;margin: 18px;">Book An Appointment</h1>
    <div class="contact-clean">
        <form method="post" style="padding-top: 40px;padding-right: 40px;padding-bottom: 40px;padding-left: 40px;" action="addAppointment.jsp">
            <div class="form-group"><input class="form-control" type="text" name="name" placeholder="Name"></div>
            <div class="form-group"><input class="form-control is-invalid" type="text" name="phone" placeholder="Phone"></div>
            <div class="form-group"><label>Consultation</label><select class="form-control" name="doctor">
            	<optgroup label="Select the Doctor">
            	<%
            	try{
	Connection con = Project.ConnectionProvider.getcon();
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select * from doctor");
	while(rs.next()){
		System.out.println("Book new app"+rs.getInt(1)+" "+rs.getString(2));
	%>
            		<option ><%=rs.getInt(1) %></option>
            		<% }
}
	catch(Exception e){
		System.out.print("jsp: "+e);
	}
	%>
            	</optgroup>
            </select>
            </div>
            <div class="form-group"><input class="form-control" type="text" name="date" placeholder="Date"></div>
            <div class="form-group">
            <button type="submit" class="btn btn-primary"  style="margin-left: 60px;background: #055ada;width: 97px;height: 50px;text-align: left;padding-bottom: 16px;">Submit&nbsp;</button>
            <a class="btn btn-primary" role="button" href="index.jsp"
                    style="margin-left: 50px;background: linear-gradient(rgb(255,255,255), white), rgb(255,255,255);border: 2px solid rgb(5,90,218);color: rgb(5,90,218);width: 120px;height: 50px;">CANCEL&nbsp;</a></div>
        </form>
    </div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>