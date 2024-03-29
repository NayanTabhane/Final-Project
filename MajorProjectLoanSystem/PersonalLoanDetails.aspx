﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PersonalLoanDetails.aspx.cs" Inherits="MajorProjectLoanSystem.PersonalLoanDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta content="" name="keywords" />
    <meta content="" name="description" />

    <!-- Favicons -->
    <link href="img/favicon.png" rel="icon" />
    <link href="img/apple-touch-icon.png" rel="apple-touch-icon" />

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Montserrat:300,400,500,700" rel="stylesheet" />

    <!-- Bootstrap CSS File -->
    <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Libraries CSS Files -->
    <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <link href="lib/animate/animate.min.css" rel="stylesheet" />
    <link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet" />
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet" />
    <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet" />

    <!-- Main Stylesheet File -->
    <link href="css/style1.css" rel="stylesheet">
    <link href="css/style2.css" rel="stylesheet" />
    <link href="css/style4.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous" />
    <link href="https://fonts.googleapis.com/css?family=Raleway:100,200,300,400,500,600,700,800&display=swap" rel="stylesheet"/>
    <title>Personal Loan</title>

    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js" type="text/javascript"></script>
    <script>
        function successAlert() {
            var startd = document.getElementById('lblApp_ID').innerHTML;
            swal({
                title: "Great! Application Submitted",
                text: "Application ID : " + startd,
                icon: "success",
                type: "success"
            }).then(function () {
                window.location = "LoanHomePage.aspx";
            });
        }

        function editAlert() {
            swal({
                title: "You have already Applied",
                text: "Do you want to Re-apply with new details ?",
                icon: "warning",
                buttons: true,
                dangerMode: true,
            })
                .then((willEdit) => {
                    if (willEdit) {
                        swal("Do you really want to Re-Apply ?", {
                            icon: "warning",
                        });
                    }
                    else {
                        window.location = "LoanHomePage.aspx";
                    }
                });
        }

        function oopsAlert() {
            swal(

                'Oops...!',
                'Something went wrong!',
                'warning'

            )
        }

        function errorAlert() {
            swal(

                'Oops...!',
                'Something went wrong!',
                'error'

            )
        }
    </script>

    <style type="text/css">
        .auto-style3 {
            width: 257px;
            height: 149px;
            border: 1px solid #dee2e6;
        }
        .auto-style4 {
            width: 154px;
            height: 149px;
            border: 1px solid #dee2e6;
        }
    </style>
</head>
<body>

   <!--==========================
    Header
    ============================-->
    <header id="header" class="fixed-top">
        <div class="container">

            <div class="logo float-left">
                <a href="LoanHomePage.aspx" class="scrollto"><img src="img/logo.png" alt="" class="img-fluid"></a>
            </div>

            <nav class="main-nav float-right d-none d-lg-block">
                <ul>
                    <li class="drop-down">
                        <a href="#" class="login-btn" style="margin-top:0px;"><asp:Label ID="lblProfileId" runat="server" Text="User Profile"></asp:Label></a>
                        <ul>
                            <li><a href="LoanHomePage.aspx">Home</a></li>
                            <li><a href="Profile.aspx">Edit Profile</a></li>
                            <li><a href="HomePage.aspx">Sign out</a></li>
                        </ul>
                    </li>
               </ul>
            </nav><!-- .main-nav -->
        </div>
    </header><!-- #header -->
     <br />
     <br />

    <!-- Form -->
    <form id="EducationLoanDetailsPage" runat="server">

    <!--==========================
     1. Profile  Section
    ============================-->
     <div class="card" style="width: 100%; ">
         
             <div class="container">
                <br />
                <div class="row">
                    <div class="col-md-12">
                        <div id="sub-head">
                            <h3>1. Personal Details</h3>
                        </div>
                    </div>
                </div><br />

                <div class="row">
                    <div class="col-md-2">
                        <br />
                        <label>Applicant Name :</label>
                    </div>
                    <div class="col-md-3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage=" (Invalid Data)" ControlToValidate="txt1ApplicantFirst" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <br />
                        <asp:TextBox ID="txt1ApplicantFirst" runat="server" class="form-control"  placeholder="First Name"  ></asp:TextBox>
                    </div>
                    <div class="col-md-3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage=" (Invalid Data)" ControlToValidate="txt1ApplicantMiddle" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <br />
                        <asp:TextBox ID="txt1ApplicantMiddle" runat="server" class="form-control"  placeholder="Middle Name" ></asp:TextBox>
                    </div>
                    <div class="col-md-3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage=" (Invalid Data)" ControlToValidate="txt1ApplicantLast" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <br />
                        <asp:TextBox ID="txt1ApplicantLast" runat="server" class="form-control"  placeholder="Last Name"  ></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-2">
                        <br />
                        <label>Father/Spous Name :</label>
                    </div>
                    <div class="col-md-3">
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage=" (Invalid Data)" ControlToValidate="txt1FatherFirst" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                       <br />
                       <asp:TextBox ID="txt1FatherFirst" runat="server" class="form-control"  placeholder="First Name"  ></asp:TextBox>
                    </div>
                    <div class="col-md-3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage=" (Invalid Data)" ControlToValidate="txt1FatherMiddle" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <br />
                        <asp:TextBox ID="txt1FatherMiddle" runat="server" class="form-control"  placeholder="Middle Name"  ></asp:TextBox>
                    </div>
                    <div class="col-md-3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ErrorMessage=" (Invalid Data)" ControlToValidate="txt1FatherLast" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <br />
                        <asp:TextBox ID="txt1FatherLast" runat="server" class="form-control"  placeholder="Last Name"  ></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-2">
                        <br />
                        <label>Mother Name :</label>
                    </div>
                    <div class="col-md-3">
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ErrorMessage=" (Invalid Data)" ControlToValidate="txt1MotherFirst" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <br />
                       <asp:TextBox ID="txt1MotherFirst" runat="server" class="form-control"  placeholder="First Name"  ></asp:TextBox>
                    </div>
                    <div class="col-md-3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ErrorMessage=" (Invalid Data)" ControlToValidate="txt1MotherMiddle" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <br />
                        <asp:TextBox ID="txt1MotherMiddle" runat="server" class="form-control"  placeholder="Middle Name"  ></asp:TextBox>
                    </div>
                    <div class="col-md-3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ErrorMessage=" (Invalid Data)" ControlToValidate="txt1MotherLast" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <br />
                        <asp:TextBox ID="txt1MotherLast" runat="server" class="form-control"  placeholder="Last Name"  ></asp:TextBox>
                    </div>
                </div><br/>

              
                <div class="row">
                    <div class="col-md-4">
                        <label>Status :</label><asp:RequiredFieldValidator ID="RequiredFieldValidator110" InitialValue="Choose..." runat="server" ErrorMessage=" (Invalid Data)" Font-Size="Small" ForeColor="Red" SetFocusOnError="True" ControlToValidate="ddl1Status"></asp:RequiredFieldValidator>
                        <br />
                        <asp:DropDownList ID="ddl1Status" runat="server" class="form-control">
                            <asp:ListItem >Choose...</asp:ListItem>
                            <asp:ListItem>Resident Indivisual</asp:ListItem>
                            <asp:ListItem>Non Resident India</asp:ListItem>
                            <asp:ListItem>Foreign National</asp:ListItem>
                            <asp:ListItem>Person Of Indian Origin</asp:ListItem>
                            <asp:ListItem>OCI</asp:ListItem>
                        </asp:DropDownList>
                    </div>

                    <div class="col-md-4">
                        <label>PAN Number :</label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator111" runat="server" ErrorMessage=" (Invalid Data)" ControlToValidate="txt1PAN" ForeColor="Red" Font-Size="Small" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server" ErrorMessage="(Invalid Data)" ControlToValidate="txt1PAN" Font-Size="Small" ForeColor="Red" ValidationExpression="^([a-zA-Z]){5}([0-9]){4}([a-zA-Z]){1}?$" SetFocusOnError="True"></asp:RegularExpressionValidator>
                        <br />
                        <asp:TextBox ID="txt1PAN" runat="server" class="form-control" style="text-transform: uppercase;" placeholder="PAN Number" ></asp:TextBox>
                    </div>
                </div><br/>

                <!--==>>>>>>>>>   proof of identity   <<<<<<<=====-->
                <div class="row">
                    <div class="col-md-4">
                        <label>Select any Document :</label><asp:RequiredFieldValidator ID="RequiredFieldValidator112" InitialValue="Choose..." runat="server" ErrorMessage=" (Invalid Data)" Font-Size="Small" ForeColor="Red" SetFocusOnError="True" ControlToValidate="ddl1Document"></asp:RequiredFieldValidator>

                        <asp:DropDownList ID="ddl1Document" runat="server" class="form-control">
                                <asp:ListItem>Choose...</asp:ListItem>
                                <asp:ListItem>Passport No.</asp:ListItem>
                                <asp:ListItem>Voter ID Card</asp:ListItem>
                                <asp:ListItem>Driving Licence</asp:ListItem>
                                <asp:ListItem>NREGA Job Card</asp:ListItem>
                                <asp:ListItem>Aadhar Number</asp:ListItem>
                        </asp:DropDownList>
                    </div>

                    <div class="col-md-4">
                        <!--document number-->
                        <label>Enter Document Number :</label><asp:RequiredFieldValidator ID="RequiredFieldValidator113" runat="server" ErrorMessage=" (Invalid Data)" Font-Size="Small" ForeColor="Red" SetFocusOnError="True" ControlToValidate="txt1Document"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txt1Document" class="form-control" placeholder="enter card number" runat="server"></asp:TextBox><br />
                    </div>
                    <div class="col-md-4">
                        <label>Expiry of Proof : </label> <i>(if Applicable)</i>
                        <asp:TextBox ID="txt1Expiry" class="form-control" Text='<%# Bind("DateofBirth", "{0:yyyy-MM-dd}") %>' TextMode="Date"  placeholder="YYYY-MM-DD" runat="server" ></asp:TextBox>
                    </div>
                  </div>
                  <br />

                 <div class="row">
                    <div class="col-md-4">
                        <label>CKYC No. :(if available)</label>
                        <asp:TextBox ID="txt1CKYC" class="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-md-4">
                        <label>Date of Birth :</label><asp:RequiredFieldValidator ID="RequiredFieldValidator114" runat="server" ErrorMessage=" (Invalid Data)" ControlToValidate="txt1DOB" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator><br />
                        <asp:TextBox ID="txt1DOB" class="form-control" Text='<%# Bind("DateofBirth", "{0:yyyy-MM-dd}") %>' TextMode="Date" placeholder="YYYY-MM-DD" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-md-4">
                        <label>Gender : </label><asp:RequiredFieldValidator ID="RequiredFieldValidator115" InitialValue="Choose..." runat="server" ErrorMessage=" (Invalid Data)" ControlToValidate="ddl1Gender" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:DropDownList ID="ddl1Gender" runat="server" class="form-control">
                            <asp:ListItem  Value="Choose...">Choose...</asp:ListItem>
                            <asp:ListItem Value="Male">Male</asp:ListItem>
                            <asp:ListItem Value="Female">Female</asp:ListItem>
                            <asp:ListItem Value="Other">Other</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div><br />

                 
                <div class="row">
                    <div class="col-md-4">
                        <label>Nationality :</label><asp:RequiredFieldValidator ID="RequiredFieldValidator116" runat="server" ErrorMessage=" (Invalid Data)" ControlToValidate="txt1Nationality" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txt1Nationality" class="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-md-4">
                         <label>Community :</label><asp:RequiredFieldValidator ID="RequiredFieldValidator117" InitialValue="Choose..." runat="server" ErrorMessage=" (Invalid Data)" Font-Size="Small" ForeColor="Red" SetFocusOnError="True" ControlToValidate="ddl1Community"></asp:RequiredFieldValidator>
                        <asp:DropDownList ID="ddl1Community" runat="server" class="form-control">
                            <asp:ListItem >Choose...</asp:ListItem>
                            <asp:ListItem>Hindu</asp:ListItem>
                            <asp:ListItem>Muslim</asp:ListItem>
                            <asp:ListItem>Sikh</asp:ListItem>
                            <asp:ListItem>Jain</asp:ListItem>
                            <asp:ListItem>Parsi</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>
                        <asp:TextBox ID="txt1Community" placeholder="mention if 'Other'" class="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-md-4">
                         <label>Category :</label><asp:RequiredFieldValidator ID="RequiredFieldValidator118" InitialValue="Choose..." runat="server" ErrorMessage=" (Invalid Data)" Font-Size="Small" ForeColor="Red" SetFocusOnError="True" ControlToValidate="ddl1Category"></asp:RequiredFieldValidator>
                        <asp:DropDownList ID="ddl1Category" runat="server" class="form-control">
                            <asp:ListItem >Choose...</asp:ListItem>
                            <asp:ListItem>SC</asp:ListItem>
                            <asp:ListItem>ST</asp:ListItem>
                            <asp:ListItem>OBC</asp:ListItem>
                            <asp:ListItem>General</asp:ListItem>
                            <asp:ListItem>Minority</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>
                        <asp:TextBox ID="txtCategory" placeholder="mention if 'Other'" class="form-control" runat="server"></asp:TextBox>
                    </div>
                </div><br />    
                  

                <div class="row">
                   <div class="col-md-4">
                    <label dir="ltr">Personal with Disability :</label>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator119" InitialValue="Choose..." runat="server" ErrorMessage=" (Invalid Data)" Font-Size="Small" ForeColor="Red" SetFocusOnError="True" ControlToValidate="ddl1Disability"></asp:RequiredFieldValidator>  
                       <asp:DropDownList ID="ddl1Disability" runat="server" class="form-control">
                            <asp:ListItem >Choose...</asp:ListItem>
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:DropDownList> 
                   </div>
                   
                      <div class="col-md-4">
                         <label>Education :</label><asp:RequiredFieldValidator ID="RequiredFieldValidator120" InitialValue="Choose..." runat="server" ErrorMessage=" (Invalid Data)" Font-Size="Small" ForeColor="Red" SetFocusOnError="True" ControlToValidate="ddl1Education"></asp:RequiredFieldValidator>
                        <asp:DropDownList ID="ddl1Education" runat="server" class="form-control">
                            <asp:ListItem >Choose...</asp:ListItem>
                            <asp:ListItem>Matriculate</asp:ListItem>
                            <asp:ListItem>Undergraduate</asp:ListItem>
                            <asp:ListItem>Graduate</asp:ListItem>
                            <asp:ListItem>Postgraduate</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>
                        <asp:TextBox ID="txt1Education" placeholder="mention if 'Other'" class="form-control" runat="server"></asp:TextBox>
                    </div>
                </div><br />

                 <div class="row">
                    <!--marital status-->
                    <div class="col-md-4">
                        <label>Marital Status : </label><asp:RequiredFieldValidator ID="RequiredFieldValidator121" InitialValue="Choose..." runat="server" ErrorMessage=" (Invalid Data)" ControlToValidate="ddl1Marital" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:DropDownList ID="ddl1Marital" runat="server" class="form-control">
                            <asp:ListItem>Choose...</asp:ListItem>
                            <asp:ListItem Value="Married">Married</asp:ListItem>
                            <asp:ListItem Value="Unmaried">Unmarried</asp:ListItem>
                            <asp:ListItem Value="Other">Other</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-4">
                        <label>No. of Dependents : </label><asp:RequiredFieldValidator ID="RequiredFieldValidator122" runat="server" ErrorMessage=" (Invalid Data)" ControlToValidate="txt1Dependents" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txt1Dependents" class="form-control" runat="server"></asp:TextBox>
                    </div>
                    </div><br />

                <div class="row">
                    <div class="col-md-4">
                        <label>Email ID (Personal):</label><asp:RegularExpressionValidator ID="RegularExpressionValidator12" runat="server" ErrorMessage=" (Invalid Data)" Font-Size="Small" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txt1PersonalEmail"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator123" runat="server" ErrorMessage=" (Invalid Data)" Font-Size="Small" ForeColor="Red" SetFocusOnError="True" ControlToValidate="txt1PersonalEmail"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txt1PersonalEmail" class="form-control" runat="server"></asp:TextBox>
                        <br />
                    </div>
                    <div class="col-md-4">
                        <label>Email ID (Official):</label><asp:RegularExpressionValidator ID="RegularExpressionValidator13" runat="server" ErrorMessage=" (Invalid Data)" Font-Size="Small" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txt1OfficialEmail"></asp:RegularExpressionValidator>
                        <asp:TextBox ID="txt1OfficialEmail" class="form-control" runat="server"></asp:TextBox>
                        <br />
                    </div>
                    <div class="col-md-4">
                        <label>Telephone No(if available) :</label><asp:RegularExpressionValidator ID="RegularExpressionValidator14" runat="server" ErrorMessage="(Invalid Data)" ControlToValidate="txt1Telephone" Font-Size="Small" ForeColor="Red" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
                        <asp:TextBox ID="txt1Telephone" class="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <label>Mobile No :</label><asp:RequiredFieldValidator ID="RequiredFieldValidator124" runat="server" ErrorMessage=" (Invalid Data)" Font-Size="Small" ForeColor="Red" SetFocusOnError="True" ControlToValidate="txt1Mobile"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator15" runat="server" ErrorMessage="(Invalid Data)" ControlToValidate="txt1Mobile" Font-Size="Small" ForeColor="Red" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
                        <asp:TextBox ID="txt1Mobile" class="form-control" runat="server"></asp:TextBox>
                    </div>
               </div><br />

                    
                <!--address details-->
                <label><u>Present Address :</u></label>
                <div class="row">
                    <div class="col-md-4">
                        <label>Address :</label><asp:RequiredFieldValidator ID="RequiredFieldValidator125" runat="server" ErrorMessage=" (Invalid Data)" Font-Size="Small" ForeColor="Red" SetFocusOnError="True" ControlToValidate="txt1PresentAddress"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txt1PresentAddress" class="form-control" runat="server" TextMode="MultiLine" ></asp:TextBox>
                        <br />
                    </div>
                    <div class="col-md-4">
                         <label>Landmark :</label><asp:RequiredFieldValidator ID="RequiredFieldValidator126" runat="server" ErrorMessage=" (Invalid Data)" ControlToValidate="txt1PresentLandmark" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txt1PresentLandmark" class="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-md-4">
                         <label>Postal Code :</label><asp:RequiredFieldValidator ID="RequiredFieldValidator127" runat="server" ErrorMessage=" (Invalid Data)" ControlToValidate="txt1PresentPostal" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator16" runat="server" ErrorMessage="(Invalid Data)" ControlToValidate="txt1PresentPostal" Font-Size="Small" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\d{6}"></asp:RegularExpressionValidator>
                        <asp:TextBox ID="txt1PresentPostal" class="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-md-4">
                         <label>City/Town :</label><asp:RequiredFieldValidator ID="RequiredFieldValidator128" runat="server" ErrorMessage=" (Invalid Data)" ControlToValidate="txt1PresentCity" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txt1PresentCity" class="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-md-4">
                         <label>State :</label><asp:RequiredFieldValidator ID="RequiredFieldValidator129" runat="server" ErrorMessage=" (Invalid Data)" ControlToValidate="txt1PresentState" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txt1PresentState" class="form-control" runat="server"></asp:TextBox>
                    </div>
                </div><br />

                <label><u>Permanent Address :</u></label>
                <div class="row">
                    <div class="col-md-4">
                        <label>Address :</label><asp:RequiredFieldValidator ID="RequiredFieldValidator135" runat="server" ErrorMessage=" (Invalid Data)" Font-Size="Small" ForeColor="Red" SetFocusOnError="True" ControlToValidate="txt1PermanentAddress"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txt1PermanentAddress" class="form-control" runat="server" TextMode="MultiLine" ></asp:TextBox>
                        <br />
                    </div>
                    <div class="col-md-4">
                         <label>Landmark :</label><asp:RequiredFieldValidator ID="RequiredFieldValidator136" runat="server" ErrorMessage=" (Invalid Data)" ControlToValidate="txt1PermanentCity" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txt1PermanentLandmark" class="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-md-4">
                         <label>Postal Code :</label><asp:RequiredFieldValidator ID="RequiredFieldValidator137" runat="server" ErrorMessage=" (Invalid Data)" ControlToValidate="txt1PermanentPostal" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator17" runat="server" ErrorMessage="(Invalid Data)" ControlToValidate="txt1PermanentPostal" Font-Size="Small" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\d{6}"></asp:RegularExpressionValidator>
                        <asp:TextBox ID="txt1PermanentPostal" class="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-md-4">
                         <label>City/Town :</label><asp:RequiredFieldValidator ID="RequiredFieldValidator138" runat="server" ErrorMessage=" (Invalid Data)" ControlToValidate="txt1PermanentCity" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txt1PermanentCity" class="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-md-4">
                         <label>State :</label><asp:RequiredFieldValidator ID="RequiredFieldValidator139" runat="server" ErrorMessage=" (Invalid Data)" ControlToValidate="txt1PermanentState" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txt1PermanentState" class="form-control" runat="server"></asp:TextBox>
                    </div>
                </div><br />
           </div>
  </div>
    
    <!--==========================
      2. GSTIN  Section
    ============================-->
     <div class="card" style="width: 100%; ">
         <div class="container">
                <br />
                <div class="row">
                    <div class="col-md-12">
                        <div id="sub-head">
                            <h3>2. GST Details</h3>
                        </div>
                    </div>
                </div><br />

                <div class="row">
                    <div class="col-md-4">
                        <asp:Label ID="Label1" runat="server" Text="Whether registration under GST"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ErrorMessage="(Invalid Data)" ForeColor="Red" ControlToValidate="ddl21UnderGst" InitialValue="Choose..." SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:DropDownList ID="ddl21UnderGst" runat="server" class="form-control">
                                <asp:ListItem>Choose...</asp:ListItem>
                                <asp:ListItem>Yes</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-4">
                        <asp:Label ID="Label2" runat="server" Text="GST Exemption"></asp:Label>
                        <asp:DropDownList ID="ddl22GstExemption" runat="server" class="form-control">
                                <asp:ListItem>Choose...</asp:ListItem>
                                <asp:ListItem>Yes</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-4">
                        <asp:Label ID="Label3" runat="server" Text="Exemption Reason (If Yes)"></asp:Label>
                        <asp:TextBox ID="txt2ExemptionReason" class="form-control" runat="server"></asp:TextBox>
                    </div>
                </div><br />

                 <div class="row">
                    <div class="col-md-4">
                        <asp:Label ID="Label4" runat="server" Text="Exemption Valid till (if yes)"></asp:Label>
                        <asp:TextBox ID="txt2ExemptionValid" class="form-control" Text='<%# Bind("DateofBirth", "{0:yyyy-MM-dd}") %>' TextMode="Date"  placeholder="YYYY-MM-DD" runat="server" ></asp:TextBox>
                    </div>
                    <div class="col-md-4">
                        <asp:Label ID="Label5" runat="server" Text="GSTIN Registration Date"></asp:Label>
                        <asp:TextBox ID="txt2GstinDate" class="form-control" Text='<%# Bind("DateofBirth", "{0:yyyy-MM-dd}") %>' TextMode="Date"  placeholder="YYYY-MM-DD" runat="server" ></asp:TextBox>
                    </div>
                    <div class="col-md-4">
                        <asp:Label ID="Label6" runat="server" Text="GST Registration Type"></asp:Label>
                        <asp:DropDownList ID="ddl2GstType" runat="server" class="form-control">
                                <asp:ListItem>Choose...</asp:ListItem>
                                <asp:ListItem>Single</asp:ListItem>
                                <asp:ListItem>Multiple</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div><br />

                 <div class="row">
                    <div class="col-md-4">
                        <asp:Label ID="Label7" runat="server" Text="Special Economic Zone"></asp:Label>
                        <asp:TextBox ID="txt2GstZone" class="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-md-4">
                        <asp:Label ID="Label8" runat="server" Text="GSTIN Default"></asp:Label>
                        <asp:TextBox ID="txt2GstinDefault" class="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-md-4">
                        <asp:Label ID="Label9" runat="server" Text="Address registered for GSTIN"></asp:Label>
                        <asp:TextBox ID="txt2GstinAddress" class="form-control" runat="server"></asp:TextBox>
                    </div>
                </div><br />

                 <div class="row">
                    <div class="col-md-4">
                        <asp:Label ID="Label10" runat="server" Text="Pin"></asp:Label>
                        <asp:TextBox ID="txt2Pin" class="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-md-4">
                        <asp:Label ID="Label11" runat="server" Text="City"></asp:Label>
                        <asp:TextBox ID="txt2City" class="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-md-4">
                        <asp:Label ID="Label12" runat="server" Text="State"></asp:Label>
                        <asp:TextBox ID="txt2State" class="form-control" runat="server"></asp:TextBox>
                    </div>
                </div><br />

                 <div class="row">
                    <div class="col-md-4">
                        <asp:Label ID="Label13" runat="server" Text="Country"></asp:Label>
                        <asp:TextBox ID="txt2Country" class="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
           </div><br />
  </div>

    <!--==========================
     3. Employment / Business  Section
    ============================-->
    <div class="card" style="width: 100%; ">
         <div class="container">
                <br />
                <div class="row">
                    <div class="col-md-12">
                        <div id="sub-head">
                            <h3>3. Employment Details&nbsp;&nbsp;&nbsp;&nbsp; (fill if appliacble)</h3>
                        </div>
                    </div>
                </div><br />

                <div class="row mb-2">
                        <div class="col-md-4">
                            <label>Employment Type</label>

                            <asp:DropDownList ID="ddl6EmploymentType" runat="server" class="form-control">
                                <asp:ListItem>Choose...</asp:ListItem>
                                <asp:ListItem>Salaried</asp:ListItem>
                                <asp:ListItem>Self-Employed</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-4">
                            <label>Type of Organisation :</label>

                            <asp:DropDownList ID="ddl6OrganisationType" runat="server" class="form-control">
                                <asp:ListItem>Choose...</asp:ListItem>
                                <asp:ListItem>Pvt. Ltd.</asp:ListItem>
                                <asp:ListItem>Public Ltd.</asp:ListItem>
                                <asp:ListItem>Partnership</asp:ListItem>
                                <asp:ListItem>Proprietorship</asp:ListItem>
                                <asp:ListItem>Other</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-4">
                            <label>if other please specify</label>
                            <asp:TextBox ID="txt6OrganisationTypeOther" class="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>

                <div class="row mb-2">
                        <div class="col-md-6">
                            <label>Name of Current Employer / Business</label>

                            <asp:TextBox ID="txt6EmployerName" class="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-6">
                            <label>Office address</label>

                            <asp:TextBox ID="txt6OfficeAddress" class="form-control" runat="server"></asp:TextBox>
                        </div>
                </div>

                <div class="row mb-2">
                        <div class="col-md-4">
                            <label>City</label>

                            <asp:TextBox ID="txt6City" class="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-4">
                            <label>State</label>

                            <asp:TextBox ID="txt6State" class="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-4">
                            <label>Pin Code</label>

                            <asp:TextBox ID="txt6PinCode" class="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>

                <div class="row mb-2">
                        <div class="col-md-3">
                            <label>Telephone</label>

                            <asp:TextBox ID="txt6Telephone" class="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-3">
                            <label>Designation</label>

                            <asp:TextBox ID="txt6Designation" class="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-6">
                            <label>Total no. of Years in Current Employment / Business</label>

                            <asp:TextBox ID="txt6EmploymentYears" class="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                
         </div>
     </div>

    <!--==========================
     4. Proposed Loan  Section
    ============================-->
    <div class="card" style="width: 100%; ">
         <div class="container">
                <br />
                <div class="row">
                    <div class="col-md-12">
                        <div id="sub-head">
                            <h3>4. Proposed Loan Details</h3>
                        </div>
                    </div>
                </div><br />

                <div class="row mb-2">
                        <div class="col-md-4">
                            <label>Loan Required(Rs.)</label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator41" runat="server" ErrorMessage="(Invalid Data)" ControlToValidate="txt4Amount" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="txt4Amount" class="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-4">
                            <label>Tenure (years)</label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator42" runat="server" ErrorMessage="(Invalid Data)" ControlToValidate="txt4Tenure" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="txt4Tenure" class="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-4">
                        <asp:Label ID="Label19" runat="server" Text="Repayment Mode"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator43" runat="server" ErrorMessage="(Invalid Data)" ForeColor="Red" ControlToValidate="ddl4RepaymentMode" InitialValue="Choose..." SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:DropDownList ID="ddl4RepaymentMode" runat="server" class="form-control">
                                <asp:ListItem>Choose...</asp:ListItem>
                                <asp:ListItem>PDC</asp:ListItem>
                                <asp:ListItem>NACH</asp:ListItem>
                                <asp:ListItem>SI</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    </div> 
           </div><br />
  </div>

    <!--==========================
      5. Financial Details  Section
    ============================-->
    <div class="card" style="width: 100%; ">
         <div class="container">
                <br />
                <div class="row">
                    <div class="col-md-12">
                        <div id="sub-head">
                            <h3>5. Financial Details&nbsp;&nbsp;&nbsp;&nbsp; (fill if applicable)</h3>
                        </div>
                    </div>
                </div><br />

                <div class="row mb-2">
                        <div class="col-md-3">
                            <label>Employment Type</label>
                            <asp:DropDownList ID="ddl5EmploymentType" runat="server" class="form-control">
                            <asp:ListItem>Choose...</asp:ListItem>
                            <asp:ListItem Value="Salaried">Salaried</asp:ListItem>
                            <asp:ListItem Value="Self-Employed">Self-Employed</asp:ListItem>
                            </asp:DropDownList>
                        </div>   
               </div><br />
             
               <div class="row mb-2">
                        <div class="col-md-3">
                            <label>a. Gross Monthly Income</label>

                            <asp:TextBox ID="txt5GrossIncome" class="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-3">
                            <label>b. Net Monthly Income</label>

                            <asp:TextBox ID="txt5NetIncome" class="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-3">
                            <label>c. Other Income</label>

                            <asp:TextBox ID="txt5OtherIncome" class="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-3">
                            <label>d. Total Income (b+C)</label>

                            <asp:TextBox ID="txt5TotalIncome" class="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div><br />

               <div class="row mb-2">
                        <div class="col-md-4">
                            <label>Total Investment In Value :</label>
                            <asp:TextBox ID="txt5TotalInvestment" class="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div><br />

               <div class="row mb-2">
                        <div class="col-md-12">
                            <p><u><b>Bank Account Details</b></u></p>
                            <table class="table table-bordered table-responsive">
                                <thead>
                                    <tr>
                                        <th>Account</th>
                                        <th>Bank Name </th>
                                        <th>Branch</th>
                                        <th>Type of A/c</th>
                                        <th>A/c No.</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th>Account 1 Details</th>
                                        <td>
                                            <asp:TextBox ID="txt5Bank1" class="form-control" runat="server"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txt5Branch1" class="form-control" runat="server"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txt5AccountType1" class="form-control" runat="server"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txt5AccountNo1" class="form-control" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>Account 2 Details</th>
                                        <td>
                                            <asp:TextBox ID="txt5Bank2" class="form-control" runat="server"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txt5Branch2" class="form-control" runat="server"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txt5AccountType2" class="form-control" runat="server"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txt5AccountNo2" class="form-control" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
         </div>
     </div>

    <!--==========================
      6. Purpose of Loan  Section
    ============================-->
     <div class="card" style="width: 100%; ">
         <div class="container">
                <br />
                <div class="row">
                    <div class="col-md-12">
                        <div id="sub-head">
                            <h3>6. Purpose of Loan</h3>
                        </div>
                    </div>
                </div><br />

                <div class="row">
                     <div class="col-md-4">
                        <asp:Label ID="Label18" runat="server" Text="Purpose of Loan"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator61" runat="server" ErrorMessage="(Invalid Data)" ForeColor="Red" ControlToValidate="ddl6LoanPurpose" InitialValue="Choose..." SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:DropDownList ID="ddl6LoanPurpose" runat="server" class="form-control">
                                <asp:ListItem>Choose...</asp:ListItem>
                                <asp:ListItem>Education</asp:ListItem>
                                <asp:ListItem>Home Repairs</asp:ListItem>
                                <asp:ListItem>Farm</asp:ListItem>
                                <asp:ListItem>Personal</asp:ListItem>
                                <asp:ListItem>Medical</asp:ListItem>
                                <asp:ListItem>Business</asp:ListItem>
                                <asp:ListItem>Wedding in family</asp:ListItem>
                                <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-4">
                        <asp:Label ID="Label14" runat="server" Text="if Other please specify"></asp:Label>
                        <br />
                        <asp:TextBox ID="txt6LoanPurposeOther" class="form-control" runat="server"></asp:TextBox>
                    </div>
                 </div><br />
          </div>
    </div>

    <!--==========================
      7. References  Section
    ============================-->
    <div class="card" style="width: 100%; ">
         <div class="container">
                <br />
                <div class="row">
                    <div class="col-md-12">
                        <div id="sub-head">
                            <h3>7. References</h3>
                        </div>
                    </div>
                </div><br />

                <div class="row mb-2">
                        <div class="col-md-12">
                            <table class="table table-bordered table-responsive">
                                <thead>
                                    <tr>
                                        <th style="text-align:center;" colspan="2">Reference 1</th>
                                        <th style="text-align:center;" colspan="2">Reference 2</th>
                                    </tr>
                                </thead>
                                <tbody>
                                   <tr>
                                        <td>Name<asp:RequiredFieldValidator ID="RequiredFieldValidator71" runat="server" ErrorMessage="(Invalid Data)" ControlToValidate="txt7Name1" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator></td>
                                        <td>
                                            <asp:TextBox ID="txt7Name1" class="form-control" runat="server"></asp:TextBox>
                                        </td>
                                        <td>Name</td>
                                        <td>
                                            <asp:TextBox ID="txt7Name2" class="form-control" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Relation<asp:RequiredFieldValidator ID="RequiredFieldValidator72" runat="server" ErrorMessage="(Invalid Data)" ControlToValidate="txt7Relation1" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator></td>
                                        <td>
                                            <asp:TextBox ID="txt7Relation1" class="form-control" runat="server"></asp:TextBox>
                                        </td>
                                        <td>Relation</td>
                                        <td>
                                            <asp:TextBox ID="txt7Relation2" class="form-control" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Address<asp:RequiredFieldValidator ID="RequiredFieldValidator73" runat="server" ErrorMessage="(Invalid Data)" ControlToValidate="txt7Address1" ForeColor="Red"></asp:RequiredFieldValidator></td>
                                        <td>
                                            <asp:TextBox ID="txt7Address1" class="form-control" runat="server"></asp:TextBox>
                                        </td>
                                        <td>Address</td>
                                        <td>
                                            <asp:TextBox ID="txt7Address2" class="form-control" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>City<asp:RequiredFieldValidator ID="RequiredFieldValidator74" runat="server" ErrorMessage="(Invalid Data)" ControlToValidate="txt7City1" ForeColor="Red"></asp:RequiredFieldValidator></td>
                                        <td>
                                            <asp:TextBox ID="txt7City1" class="form-control" runat="server"></asp:TextBox>
                                        </td>
                                        <td>City</td>
                                        <td>
                                            <asp:TextBox ID="txt7City2" class="form-control" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>State<asp:RequiredFieldValidator ID="RequiredFieldValidator75" runat="server" ErrorMessage="(Invalid Data)" ControlToValidate="txt7State1" ForeColor="Red"></asp:RequiredFieldValidator></td>
                                        <td>
                                            <asp:TextBox ID="txt7State1" class="form-control" runat="server"></asp:TextBox>
                                        </td>
                                        <td>State</td>
                                        <td>
                                            <asp:TextBox ID="txt7State2" class="form-control" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Country<asp:RequiredFieldValidator ID="RequiredFieldValidator76" runat="server" ErrorMessage="(Invalid Data)" ControlToValidate="txt7Country1" ForeColor="Red"></asp:RequiredFieldValidator></td>
                                        <td>
                                            <asp:TextBox ID="txt7Country1" class="form-control" runat="server"></asp:TextBox>
                                        </td>
                                        <td>Country</td>
                                        <td>
                                            <asp:TextBox ID="txt7Country2" class="form-control" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>PIN Code<asp:RequiredFieldValidator ID="RequiredFieldValidator77" runat="server" ErrorMessage="(Invalid Data)" ControlToValidate="txt7Pin1" ForeColor="Red"></asp:RequiredFieldValidator></td>
                                        <td>
                                            <asp:TextBox ID="txt7Pin1" class="form-control" runat="server"></asp:TextBox>
                                        </td>
                                        <td>PIN Code</td>
                                        <td>
                                            <asp:TextBox ID="txt7Pin2" class="form-control" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Mobile<asp:RequiredFieldValidator ID="RequiredFieldValidator78" runat="server" ErrorMessage="(Invalid Data)" ControlToValidate="txt7Mobile1" ForeColor="Red"></asp:RequiredFieldValidator></td>
                                        <td>
                                            <asp:TextBox ID="txt7Mobile1" class="form-control" runat="server"></asp:TextBox>
                                        </td>
                                        <td>Mobile</td>
                                        <td>
                                            <asp:TextBox ID="txt7Mobile2" class="form-control" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>E-Mail<asp:RequiredFieldValidator ID="RequiredFieldValidator79" runat="server" ErrorMessage="(Invalid Data)" ControlToValidate="txt7Email1" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator></td>
                                        <td>
                                            <asp:TextBox ID="txt7Email1" class="form-control" runat="server"></asp:TextBox>
                                        </td>
                                        <td>E-Mail</td>
                                        <td>
                                            <asp:TextBox ID="txt7Email2" class="form-control" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div> 
           </div>
  </div>
 
    <!--==========================
      8. Declaration  Section
    ============================-->
    <div class="card" style="width: 100%; ">
         <div class="container">
                <br />
                <div class="row">
                    <div class="col-md-12">
                        <div id="sub-head">
                            <h3>8. Declaration</h3>
                        </div>
                    </div>
                </div><br />

                <div class="row">
                    <div class="col-md-12">
                        <p><i class="fa fa-check-square" style="color: #0026ff;"></i>&nbsp;I/We declare that the particulars and Information given in the Application Form are true, correct, complete and upto date in all respects and I/We have not withheld any information. I/We confirm that I/We have had no insolvency proceeding initiated against me/us nor have I/We ever been adjudicated insolvent. I/We authorise the Loan Trusty to make references and enquiries relative to information. In this application which the Bank considers necessary. I/We authorise the Loan Trusty to exchange, share/part with all information relating to my/our loan details and repayment history information to other Banks/Financial Institutions, etc. as may be required and shall not hold the Bank liable for use of this information. I/We undertake to inform the Bank regarding change in my/our residence/employment and to provide any further information that the Bank may require. I/We agree that my/our loan shall be governed by the rules of the Bank which may be In force from time to time. I/We understand that the Loan Trusty has the right to reject my/our application without providing any reason</p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <label><b><u>Upload Image :</u></b></label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator81" runat="server" ErrorMessage=" (Invalid Data)" ControlToValidate="imageFileUpload" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <br />
                        <asp:FileUpload ID="imageFileUpload"  accept="image/*" class="form-control" onchange="preview_image(event)" runat="server" /><br />
                        <asp:Image ID="output_image" class="auto-style4" runat="server" /><br />
                        <asp:Label ID="imguploadlbl" runat="server"></asp:Label>               
                    </div><br />
                    <div class="col-md-2">
                    </div>
                    <div class="col-md-4">
                        <label><b><u>Upload Signature :</u></b></label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator82" runat="server" ErrorMessage=" (Invalid Data)" ControlToValidate="signFileUpload" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <br />
                        <asp:FileUpload ID="signFileUpload" accept="image/*" class="form-control" onchange="preview_sign(event)"  runat="server" /><br />
                        <asp:Image ID="output_sign" class="auto-style3" runat="server" /><br />
                        <asp:Label ID="signuploadlbl" runat="server"></asp:Label>               
                    </div><br />
                </div><br />
             
                <div class="row">
                    <div class="col-md-12">
                            <table class="table table-bordered table-responsive">
                                <thead>
                                    <tr>
                                        <th style="text-align:center;width:30%;">Document</th>
                                        <th style="text-align:center;width:30%;">Select</th>
                                        <th style="text-align:center;width:30%;">Upload</th>
                                    </tr>
                                </thead>
                                <tbody>
                                   <tr>
                                        <td>
                                            <br />
                                            <asp:Label ID="Label26" runat="server" Text="Proof Of Identity"></asp:Label>
                                        </td>
                                        <td>
                                            <br />
                                            <asp:DropDownList ID="ddl8Identity" runat="server" class="form-control">
                                                <asp:ListItem>Choose...</asp:ListItem>
                                                <asp:ListItem>PAN Card</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ErrorMessage=" (Invalid Data)" ControlToValidate="ddl8Identity" InitialValue="Choose..." Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage=" (Invalid Data)" ControlToValidate="identityFileUpload" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                            <asp:FileUpload ID="identityFileUpload" accept="image/*" class="form-control" runat="server" />
                                            <asp:Label ID="lbl8Identity" runat="server" Text="(Only Images accepted & Max. Size allowed 256 KB)" Font-Size="Small" ForeColor="Blue"></asp:Label>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                </div>
                 <br />

                <div class="row">
                    <div class="col-md-4">
                        <label>Place :</label><asp:RequiredFieldValidator ID="RequiredFieldValidator83" runat="server" ErrorMessage=" (Invalid Data)" ControlToValidate="txt8Place" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txt8Place" class="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-md-4">
                        <label>Date of Declaration :</label><asp:RequiredFieldValidator ID="RequiredFieldValidator84" runat="server" ErrorMessage=" (Invalid Data)" ControlToValidate="txt8DateOfDeclaration" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txt8DateOfDeclaration" class="form-control" Text='<%# Bind("DateofBirth", "{0:yyyy-MM-dd}") %>' TextMode="Date"  placeholder="YYYY-MM-DD" runat="server"></asp:TextBox>
                    </div>
                </div><br />

             <asp:Label ID="lblApp_ID" ForeColor="White" runat="server"></asp:Label>

                <!--Save Data Button-->
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div id="submit" class="text-center">
                            <asp:Button ID="submit6" Class=" btn btn-primary" runat="server" Text="Save" OnClick="submit6_Click" />
                            <br/><br/>
                        </div>
                    </div>
                </div>
           </div>
        </div>
  </div>  


  </form>
    <script>

        function preview_image(event) {
            var reader = new FileReader();
            reader.onload = function () {
                var output = document.getElementById('output_image');
                output.src = reader.result;
            }
            reader.readAsDataURL(event.target.files[0]);
        }

        function preview_sign(event) {
            var reader = new FileReader();
            reader.onload = function () {
                var output = document.getElementById('output_sign');
                output.src = reader.result;
            }
            reader.readAsDataURL(event.target.files[0]);
        }
    </script>

    <!-- Back to Top Button -->
    <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
    <!-- <div id="preloader"></div> -->
    <!-- JavaScript Libraries -->
    <script src="lib/jquery/jquery.min.js"></script>
    <script src="lib/jquery/jquery-migrate.min.js"></script>
    <script src="lib/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/mobile-nav/mobile-nav.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/counterup/counterup.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="lib/isotope/isotope.pkgd.min.js"></script>
    <script src="lib/lightbox/js/lightbox.min.js"></script>
    <!-- Contact Form JavaScript File -->
    <script src="contactform/contactform.js"></script>

    <!-- Template Main Javascript File -->
    <script src="js/main.js"></script>
</body>
</html>

