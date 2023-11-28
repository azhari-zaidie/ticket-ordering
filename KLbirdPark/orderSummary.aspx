<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="orderSummary.aspx.vb" Inherits="KLbirdPark.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/progresbar.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/popper.js"></script>

    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 410px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-sm">   
            <div class="jumbotron ">
                <div class="text-center">
                    <button type="button" class="btn  " disabled>1. Ticket Purchase</button>
                    <button type="button" class="btn btn-primary" disabled>2. Order Summary</button>
                    <button type="button" class="btn" disabled>3. Done</button>
					<br /> <br />
                 </div>
                <div class="row">
                    <div class="col">
                        <h4>Cart Information</h4><br /> 
						<div class="shadow p-4 mb-4 bg-white">
                                Standard Ticket for MYR63.00 <br />
                                <label >Adult</label>
                                <asp:Button ID="btnAdd" runat="server" Text="+" />
                                <asp:Label ID="lblQty" runat="server" Text="0" BorderStyle="Dotted" Width="71px"></asp:Label>
                                <asp:Button ID="btnMinus" runat="server" Text="-" /> <br /><br />
							Standard Ticket for MYR42.00 <br />
                                <label >Children</label>
                                <asp:Button ID="btnAdd2" runat="server" Text="+" />
                                <asp:Label ID="lblQty2" runat="server" Text="0" BorderStyle="Dotted" Width="71px"></asp:Label>
                                <asp:Button ID="btnMinus2" runat="server" Text="-" />
							<br /><br />
							<asp:Button ID="btnUpdate" runat="server" Text="Update" /> 
                             </div> <br />
						<br /><br />
                        <h4>Purchaser Information</h4><br /> 
                        <div class="shadow p-4 mb-4 bg-white">
				            <div class="form-group"> 
								<asp:Label ID="label12" runat="server" Text="Name: " ></asp:Label><br /><br />
								<strong><asp:Label ID="lblName" runat="server" BorderStyle="Inset" Width="403px" ></asp:Label></strong>
				                <div class="line"></div>
				            </div>
				            <div class="form-group">
								<asp:Label ID="Label1" runat="server" Text="Contact: " ></asp:Label><br /><br />
								<strong><asp:Label ID="lblContact" runat="server" BorderStyle="Inset" Width="403px" ></asp:Label></strong>
				                <div class="line"></div>
				            </div>
			                <div class="form-group">
								<asp:Label ID="Label2" runat="server" Text="Email: " ></asp:Label><br /><br />
				                <strong><asp:Label ID="lblEmail" runat="server" BorderStyle="Inset" Width="403px"></asp:Label></strong>
				                <div class="line"></div>
				            </div>
                        </div>
                    </div>
                    <div class="col">
						<h4>Checkout</h4><br /> 
						<div class="shadow p-1 mb-6 bg-white">
							<table class="table table-striped" style="width: 410px">
								<tbody><tr>
									<th style="width:40%">Tickets</th>
									<th style="width:20%">QTY</th>
									<th style="width:40%">Amount</th>
									<th style="width:20%">Function</th>
									</tr>
									<tr>
										<td>Adult</td>
							            <td><asp:Label ID="lblQtyAdult" runat="server" Text="0"></asp:Label></td>
							            <td>RM <asp:Label ID="lblAmountAdult" runat="server" Text="0"></asp:Label></td>
										<td><asp:Button ID="btnDelAdult" runat="server" Text="Delete" class="btn-secondary "/></td>
									</tr>
									<tr>
										<td>Children</td>
										<td><asp:Label ID="lblQtyChildren" runat="server" Text="0"></asp:Label></td>
							            <td>RM <asp:Label ID="lblAmountChildren" runat="server" Text="0"></asp:Label></td>
										<td><asp:Button ID="btnDelChild" runat="server" Text="Delete" class="btn-secondary "/></td>
									</tr>
									<tr>
										<td><Strong>Total</Strong></td>
										<td><asp:Label ID="lblQtyTotal" runat="server" Text="0"></asp:Label></td>
							            <td><strong>RM <asp:Label ID="lblAmount" runat="server" Text="0"></asp:Label></strong></td>
									</tr>
								</tbody>
							 </table>
						</div>
						<div class="form-group"><br />
							<asp:CheckBox ID="chkTrue" runat="server" class="minimal" />
							<label class="chkbox">I have check and confirm the above information are valid and correct.
							<span class="checkmark"></span>
							</label>
							<asp:Button ID="btnNext" runat="server" Text="Next" /> <br />
							<td><asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label></td>
						</div>
						 <br />
							<h5>Terms and conditions:</h5>
							<ol>
								<li>Present your e-ticket at KL Bird Park ticketing counter to redeem our wristband.</li>

								<li>E-ticket is valid for 30 days from the date of purchase for one-time redemption.</li>

								<li>E-ticket must be purchased at least 24 hours in advance.</li>

								<li>Strictly NO refunds or cancellation of ticket will be allowed.</li>

								<li>Child rate will apply to children from 3 to 11 years old only.</li>

								<li>NO refunds will be given due to inclement weather.</li>

								<li>KL Bird Park reserves the right to alter any aspects of the promotion at any time in its sole discretion.</li>
							</ol>
							<h5>Privacy Policy</h5>
							<ol> 
								<li>Your privacy is important to us. It is Safari Bird Park &amp; Wonderland Sdn. Bhd.'s policy to respect your privacy regarding any information we may collect from you across our website, <a href="http://www.klbirdpark.com/">www.klbirdpark.com</a>, and other sites we own and operate.</li>

								<li>We only ask for personal information when we truly need it to provide a service to you. We collect it by fair and lawful means, with your knowledge and consent. We also let you know why we are collecting it and how it will be used.</li>

								<li>We only retain collected information for as long as necessary to provide you with your requested service. What data we store, we will protect within commercially acceptable means to prevent loss and theft, as well as unauthorised access, disclosure, copying, use or modification.</li>

								<li>We do not share any personally identifying information publicly or with third-parties, except when required to by law.</li>

								<li>Our website may link to external sites that are not operated by us. Please be aware that we have no control over the content and practices of these sites, and cannot accept responsibility or liability for their respective privacy policies.</li>

								<li>You are free to refuse our request for your personal information, with the understanding that we may be unable to provide you with some of your desired services.</li>

								<li>Your continued use of our website will be regarded as acceptance of our practices around privacy and personal information. If you have any questions about how we handle user data and personal information, feel free to contact us.</li>

								<li>This policy is effective as of 1 July 2019.</li>
							</ol>
					</div>
				 </div>
			</div>
		</div>
    </form>
</body>
</html>
