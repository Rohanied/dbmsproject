<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Test</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/Projects-Horizontal.css">
    <link rel="stylesheet" href="assets/css/styles.css">
</head>

<body>
   <a href="index.jsp"><h1 style="color: rgb(72,115,157);font-size: 40;font-family: Almarai, sans-serif;padding: 10px;">Hospital Database Management System</h1></a>
    <ul class="nav nav-tabs" style="font-size: 30px;font-family: Alatsi, sans-serif;background: #4760b6;color: #ffffff;">
         <li class="nav-item"><a class="nav-link" href="doctor.jsp" style="color: rgb(255,255,255);border-style: solid;border-color: rgba(0,0,0,0);border-right-color: #000000;">Doctors</a></li>
        <li class="nav-item"><a class="nav-link" href="Patients.jsp" style="color: rgb(255,255,255);border-style: solid;border-color: rgba(0,0,0,0);border-right-color: #000000;">Patients</a></li>
        <li class="nav-item"><a class="nav-link" href="Staffs.jsp" style="color: rgb(255,255,255);border-right-style: solid;border-right-color: #000000;">Staffs</a></li>
        <li class="nav-item"><a class="nav-link" href="Wards.jsp" style="border-right-color: #000000;color: rgb(255,255,255);">Wards</a></li>
        <li class="nav-item"><a class="nav-link" href="Appointments.jsp" style="color: rgb(255,255,255);border-right-style: solid;border-right-color: #000000;">Appointments</a></li>
        <li class="nav-item"><a class="nav-link" href="Inventory.jsp" style="color: rgb(255,255,255);border-right-style: solid;border-right-color: #000000;">Inventory</a></li>
    </ul>
    <center><img src="assets/img/Hospital.jpg" margin-left=20px;  style="width: 626px;text-align: right;"></center>
    <div class="projects-horizontal">
        <div class="container">
            <div class="intro">
                <h2 class="text-center">Hospital Database Management System </h2>
                <p class="text-center">A very efficient&nbsp; way to manage the data involved with a Hospital</p>
            </div>
            <div class="row projects">
                <div class="col-sm-6 item">
                    <div class="row">
                        <div class="col-md-12 col-lg-5"><a  ><img class="img-fluid" src="assets/img/Doctor1.jpg"></a></div>
                        <div class="col">
                            <a href="doctor.jsp"><h3 class="name">Doctors</h3></a>
                            <p class="description">It gives detailed information about our doctors(doctor name,ID,Speciality,Address, Salary,Consultation hours)</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 item">
                    <div class="row">
                        <div class="col-md-12 col-lg-5"><a  ><img class="img-fluid" src="assets/img/Patient.jpg"></a></div>
                        <div class="col">
                             <a href="Patients.jsp"><h3 class="name">Patients</h3></a>
                            <p class="description">It keeps track of all the Patients(Patient Name,ID,gender,Age,Address,Phone number,Status,Consulting doctor and ward number</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 item">
                    <div class="row">
                        <div class="col-md-12 col-lg-5"><a  ><img class="img-fluid" src="assets/img/Staff.jpg"></a></div>
                        <div class="col">
                             <a href="Staffs.jsp"><h3 class="name">Staff&nbsp;</h3></a>
                            <p class="description">The staff working in a hospital are as important as any doctors and this shows their details (Staff name, phone number, gender, department, their shifts and salary</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 item">
                    <div class="row">
                        <div class="col-md-12 col-lg-5"><a  ><img class="img-fluid" src="assets/img/Wards.png"></a></div>
                        <div class="col">
                             <a href="Wards.jsp"><h3 class="name">Wards</h3></a>
                            <p class="description">The wards we have are designed such that patients recover as soon as possible(ward no,floor,type,Number of beds,Available beds)</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 item">
                    <div class="row">
                        <div class="col-md-12 col-lg-5"><a  ><img class="img-fluid" src="assets/img/Appointments.jpg"></a></div>
                        <div class="col">
                             <a href="Appointments.jsp"><h3 class="name">Appointment</h3></a>
                            <p class="description">This gives information about the appointments(Name,phone number,Doctor Consulting,Date)</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 item">
                    <div class="row">
                        <div class="col-md-12 col-lg-5"><a  ><img class="img-fluid" src="assets/img/Inventory.png"></a></div>
                        <div class="col">
                             <a href="Inventory.jsp"><h3 class="name">Inventory</h3></a>
                            <p class="description">The Inventory keeps track of all detailed information of all equipments used in the hospital(item name,Quantities,Purchase date, Available Items)</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>