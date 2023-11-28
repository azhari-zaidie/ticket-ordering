<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ticketing.aspx.vb" Inherits="KLbirdPark.ticketing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/progresbar.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/popper.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-sm">   
            <div class="jumbotron ">
                <div class="container">
                    <div class="text-center">
                        <div id="dd" style="margin-left:0px; font-size:40px;font-family:'Comic Sans MS';">KL Bird Park</div>
                            <img src="../image/logo.png" />
                        </div>
                    </div>
                <br /><br />
                     <div class="container-md">
                        <div class="row row-cols-sm-1">
                            <div class="shadow p-3 mb-10 bg-white">
                        <h3>Admission</h3> 
                                    <br />
                        *Senior Citizen (with Mykad) from 60 years old and above.<br />
                        *Child from 3 - 11 years old (bo in 2009 - 2017). <br /><br />

                        <strong>Opening Hours</strong> <br /> <br />

                        The Park is open daily from 9.00am to 6.00pm including Public Holidays and School Holidays. <br />
                        ------------------------------------------------------------------------------------------------------------------------------- <br />
                        Peacock Gift Shop
                        9.00am to 6.00pm daily<br />
                        ------------------------------------------------------------------------------------------------------------------------------- <br />
                        Hobill Gift Shop
                        9.00am to 6.00pm daily<br />
                        ------------------------------------------------------------------------------------------------------------------------------- <br />
                        Feathered Friends Photo Booth
                        10.00am to 5.00pm daily<br />
                        ------------------------------------------------------------------------------------------------------------------------------- <br />
                        Flamingo Kiosk
                        9.00am to 6.00pm daily<br />
                        ------------------------------------------------------------------------------------------------------------------------------- <br />
                        Parrot Kiosk
                        9.00am to 6.00pm daily<br />
                        ------------------------------------------------------------------------------------------------------------------------------- <br />
                        Sandwich Bar
                        9.00am to 6.00pm daily<br />
                        ------------------------------------------------------------------------------------------------------------------------------- <br />
                        Hobill Restaurant & Café 
                        9.00am to 8.00pm daily<br />
                        ------------------------------------------------------------------------------------------------------------------------------- <br />           
                        <br />
                
                        Documentary or commercial filming requires approval from management. Kindly email your request to <asp:HyperLink  NavigateUrl="https://www.klbirdpark.com/" runat="server">info@klbirdpark.com.</asp:HyperLink>
                        <br />
                        A minimum of 3 working days of advance notice is required for filming. <br /><br /><br />

                        <h3>Tickets Price</h3>        
                           <table class="table table-striped">
                              <tr>
                                <th></th>
                                <th>Adult (RM)</th>
                                <th>Child (RM)</th>
                                 <th>Senior Citizen (RM)</th>
                              </tr>
                              <tr>
                                <td>Standard</td>
                                <td>63.00</td>
                                <td>42.00</td>
                                 <td>  -  </td>
                              </tr>
                              <tr>
                                <td>Mykad</td>
                                <td>25.00</td>
                                <td>6.00</td>
                                <td>6.00</td>
                              </tr>
                             </table>
                                <br />
                                <br />
                                <a href="bookingTicket.aspx" class="btn btn-primary" id="btnBooking">Click Here to Book Tickets</a><br />
                                <a href="AdminLogin.aspx" class="btn btn-primary" id="btnAdmin">Admin Site</a>
                           </div>
                        </div>
                 </div>
            </div>
        </div>
    </form>
</body>
</html>
