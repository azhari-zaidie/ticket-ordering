<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="bookingTicket.aspx.vb" Inherits="KLbirdPark.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/progresbar.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/popper.js"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-sm">   
            <div class="jumbotron ">
                <div class="text-center">
                    <button type="button" class="btn  btn-primary" disabled>1. Ticket Purchase</button>
                    <button type="button" class="btn" disabled>2. Order Summary</button>
                    <button type="button" class="btn" disabled>3. Done</button>
                    <br /> <br />
                    </div>
                    <div class="row">
                        <div class="col">
                            <h4>Ticket Purchase </h4><br /> 
                            <div class="shadow p-4 mb-4 bg-white">
                                Standard Ticket for MYR63.00 <br />
                                <label >Adult</label>
                                <asp:Button ID="btnAdd" runat="server" Text="+" />
                                <asp:Label ID="lblQty" runat="server" Text="0" BorderStyle="Dotted" Width="71px"></asp:Label>
                                <asp:Button ID="btnMinus" runat="server" Text="-" /> <br />
                            </div>
                            <div class="shadow p-4 mb-4 bg-white"> Standard Ticket for MYR42.00 <br />
                                <label >Children</label>
                                <asp:Button ID="btnAdd2" runat="server" Text="+" />
                                <asp:Label ID="lblQty2" runat="server" Text="0" BorderStyle="Dotted" Width="71px"></asp:Label>
                                <asp:Button ID="btnMinus2" runat="server" Text="-" />
                             </div>
                               <asp:Label ID="lblErrorQty" runat="server" Width="392px" ForeColor="Red"></asp:Label>
                                <br /> <br />
                                 <h4>Purchaser Information</h4>
                                <div class="shadow p-4 mb-4 bg-white"> 
                                    <div class="form-group">
						                <label for="billing-name">Name:</label><br />
                                        <asp:TextBox ID="txtName" runat="server"  class="form-control" ToolTip="Name" TabIndex="1"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="[Name is empty]" ControlToValidate="txtName" BackColor="White" ForeColor="Red"></asp:RequiredFieldValidator><br />
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="[Invalid name]" ControlToValidate="txtName" ValidationExpression="^(?=.{1,40}$)[a-zA-Z]+(?:[-'\s][a-zA-Z]+)*$" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
						             </div>
						             <div class="form-group">
						                 <label for="billing-contactno">Contact No:</label><br />
                                         <asp:TextBox ID="txtContact" runat="server"  class="form-control" ToolTip="Number format 10/11-Digit. e.g. 012xxxxxxx" MaxLength="11" TabIndex="2"></asp:TextBox>
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="[Contact is empty]" ControlToValidate="txtContact" ForeColor="Red"></asp:RequiredFieldValidator><br />
                                         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="[Invalid Contact No]" ControlToValidate="txtContact" ValidationExpression="\d{10,11}" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
						             </div>
						             <div class="form-group">
						                 <label for="billing-email">Email:</label><br />
                                         <asp:TextBox ID="txtEmail" runat="server"  class="form-control" ToolTip="Email format abc@gmail.com" TabIndex="3"></asp:TextBox>
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="[Email is empty]" ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator><br />
                                         <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="[Invalid email]" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
						             </div>
                                </div>
                            </div>
                            <div class="col">
                                <h4>Checkout</h4><br /> 
                                <div class="shadow p-1 mb-6 bg-white"> 
                                    <table  class="table table-striped"style="width: 410px">
						                    <tbody><tr>
							                    <th style="width:40%">Tickets</th>
							                    <th style="width:20%">QTY</th>
							                    <th style="width:40%">Amount</th>
						                    </tr>
						                    <tr>
							                    <td>Adult</td>
							                    <td><asp:Label ID="lblQtyAdult" runat="server" Text="0"></asp:Label></td>
							                    <td>RM <asp:Label ID="lblAmountAdult" runat="server" Text="0"></asp:Label></td>
						                    </tr>
						                    <tr>
							                    <td>Children</td>
							                    <td><asp:Label ID="lblQtyChildren" runat="server" Text="0"></asp:Label></td>
							                    <td>RM <asp:Label ID="lblAmountChildren" runat="server" Text="0"></asp:Label></td>
						                    </tr>
						                    <tr>
							                    <td>Total</td>
							                    <td><asp:Label ID="lblQtyTotal" runat="server" Text="0"></asp:Label></td>
							                    <td>RM <asp:Label ID="lblAmount" runat="server" Text="0"></asp:Label></td>
						                    </tr>
					                    </tbody>
                                     </table>
                                 </div> <br />
                                <asp:Button ID="btnNext" runat="server" Text="Next" TabIndex="4" /><br />
                               <%--<input type="submit" name="submit" value="Next" <%--onclick="window.location.href = 'orderSummary.aspx'"--%> 
                                <br /> <br />
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
