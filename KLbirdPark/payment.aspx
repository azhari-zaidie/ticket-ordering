<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="payment.aspx.vb" Inherits="KLbirdPark.payment" %>

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
    <style type="text/css">
        .auto-style1 {
            width: 58px;
            height: 38px;
        }
        .auto-style2 {
            width: 56px;
            height: 45px;
        }
    </style>
</head>
<body>
     <div style="background-color:aqua">
        <div class="jumbotron-fluid">
			<div class="row">
				<div class="col-sm-5">
					<div class="text-right"> <br />
						&nbsp;<img src="../image/bird.jfif" width="100" height="100"/>
					</div>
				</div>
				<div class="col-sm-5">
						<br />
						<p>SAFARI BIRD PARK & WONDER</p>
						<p>920, Jalan Lembah, Taman Tasik Perdana, 50480 Kuala Lumpur, Kuala Lumpur, Malaysia</p>
						<p>info@klbirdpark.com</p>
						<p> 03-2272 1010</p>
				</div>
			</div>
        </div>
    </div>
    <div class="container"> <br />
		<br />
        <form id="form1" runat="server">
          <div class="panel-group">
            <div class="panel panel-default">
              <div class="panel-heading">$ Payment Details</div>
              <div class="panel-body">
							<div class="col-md-6">
								<dl class="dl-horizontal">
									<dt><strong>Order ID</strong></dt>
									<dd><asp:Label ID="lblOrderID" runat="server" Text=""></asp:Label></dd>
								</dl>
								<dl class="dl-horizontal">
									<dt><strong>Payment ID</strong></dt>
									<dd><asp:Label ID="lblPaymentID" runat="server" Text=""></asp:Label></dd>
								</dl>
								<dl class="dl-horizontal">
									<dt><strong>Payment for</strong></dt>
									<dd>KL Bird Park: Admission Ticket</dd>
								</dl>
								<dl class="dl-horizontal">
									<dt><strong>Total</strong></dt>
									<dd><strong>RM <asp:Label ID="lblTotal" runat="server" Text=""></asp:Label></strong></dd>
								</dl>
							</div>
						</div>
            </div>
            <div class="panel panel-default">
              <div class="panel-heading">Billing Information Required</div>
				<div class="panel-body">
					<div class="row">
						<div class="form-group col-sm-12">
							<label class="col-sm-12 no-col-space control-label" >
								<asp:Label ID="Label1" runat="server" ForeColor="Red" Text="*"></asp:Label>
								Address</label>
							<div class="col-sm-12">
								<asp:TextBox ID="txtAddress" class="form-control" runat="server" Height="96px" TabIndex="1" ToolTip="Enter your current address"></asp:TextBox><br />
								<asp:Label ID="lblError2" runat="server" ForeColor="Red"></asp:Label>
                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Adress is empty" ControlToValidate="txtAddress" ForeColor="Red"></asp:RequiredFieldValidator>--%>
							</div>
						</div>
					</div>
				</div>
           </div>
			  <div class="row">
				  <div class="col-md-6">
					  <h3>Pay with Debit or Credit Card</h3>
					  <div class="panel panel-default">
						<div class="panel-heading">
                            <asp:CheckBox ID="chkDebit" runat="server" TabIndex="2" />
							Credit or Debit Card
						</div>
							<div class="panel-body">
								<div class="form-group">
									<dl class="dl-horizontal">
										<dt><strong>Cardholder Name</strong></dt>
										<dd><asp:TextBox ID="txtCardholderName" runat="server" TabIndex="4" ToolTip="Enter your cardholder name"></asp:TextBox></dd><br />
										<dd><asp:Label ID="lblErrorName" runat="server" ForeColor="Red"></asp:Label></dd>
                                        <dd><asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="[Invalid Card Holder Name]" ControlToValidate="txtCardholderName" ValidationExpression="^(?=.{1,40}$)[a-zA-Z]+(?:[-'\s][a-zA-Z]+)*$" ForeColor="Red"></asp:RegularExpressionValidator></dd>
									</dl>
								</div>
								<div class="form-control-group">
									<dl class="dl-horizontal">
										<dt><strong>Card Number</strong></dt>
										<dd>
											<div class="row-sm-8">
												<div class="input-group" style="width:224px;">
													<asp:TextBox ID="txtCardNumber" runat="server" TabIndex="5" ToolTip="Enter your valid card number"></asp:TextBox><asp:Label ID="lblErrorCard" runat="server" ForeColor="Red"></asp:Label><br />
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="[Invalid card number]" ControlToValidate="txtCardNumber" ValidationExpression="^(?:4[0-9]{12}(?:[0-9]{3})?|[25][1-7][0-9]{14}|6(?:011|5[0-9][0-9])[0-9]{12}|3[47][0-9]{13}|3(?:0[0-5]|[68][0-9])[0-9]{11}|(?:2131|1800|35\d{3})\d{11})$" ForeColor="Red"></asp:RegularExpressionValidator>
												</div>
											</div>
										</dd><br />
										<dt><strong>Card Types</strong></dt>
										<dd>
                                            <img alt="master Card" src="image/img/mastercard.png" class="auto-style2" />
                                            <img alt="master Card" src="image/img/visa.jpg" class="auto-style2" />
										</dd><br />
										<dt><strong>Expiration Date</strong></dt>
										<dd>
											<asp:DropDownList ID="DropDownList1" runat="server" Height="19px" ToolTip="Enter expiry month here" TabIndex="6">
												<asp:ListItem>01</asp:ListItem>
												<asp:ListItem>02</asp:ListItem>
												<asp:ListItem>03</asp:ListItem>
												<asp:ListItem>04</asp:ListItem>
												<asp:ListItem>05</asp:ListItem>
												<asp:ListItem>06</asp:ListItem>
												<asp:ListItem>07</asp:ListItem>
												<asp:ListItem>08</asp:ListItem>
												<asp:ListItem>09</asp:ListItem>
												<asp:ListItem>10</asp:ListItem>
												<asp:ListItem>11</asp:ListItem>
												<asp:ListItem>12</asp:ListItem>

											</asp:DropDownList>
											<a>/</a>
											<asp:DropDownList ID="DropDownList2" runat="server" ToolTip="Enter expiry year here" TabIndex="7">
												<asp:ListItem> </asp:ListItem>
												<asp:ListItem>2020</asp:ListItem>
												<asp:ListItem>2021</asp:ListItem>
												<asp:ListItem>2022</asp:ListItem>
												<asp:ListItem>2023</asp:ListItem>
												<asp:ListItem>2024</asp:ListItem>
												<asp:ListItem>2025</asp:ListItem>
												<asp:ListItem>2026</asp:ListItem>
												<asp:ListItem>2027</asp:ListItem>
												<asp:ListItem>2028</asp:ListItem>
												<asp:ListItem>2029</asp:ListItem>
												<asp:ListItem>2030</asp:ListItem>
												<asp:ListItem>2031</asp:ListItem>
												<asp:ListItem>2032</asp:ListItem>
												<asp:ListItem>2033</asp:ListItem>
												<asp:ListItem>2034</asp:ListItem>
												<asp:ListItem>2035</asp:ListItem>
											</asp:DropDownList>
										</dd><br />
										<dt><strong>CVV</strong></dt>
										<dd>
											<asp:TextBox ID="txtCvv" runat="server" TabIndex="8" ToolTip="Enter your last card number"></asp:TextBox> <br /><asp:Label ID="lblErrorCvv" runat="server" ForeColor="Red"></asp:Label>
											<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtCvv" ErrorMessage="[Invalid CVC/CVV2]" Font-Size="Small" ForeColor="Red" ValidationExpression="^[0-9]{3,4}$"></asp:RegularExpressionValidator>
										</dd>
									</dl>
								</div>
							</div>
						</div>
					  <br />
					  <asp:Button ID="btnSubmit" class="btn btn-primary" runat="server" Text="Submit" /><br /><br />
                      <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
				  </div>
				  <div class="col-md-6">
					  <h3>Other Payment Methods</h3>
					  <div class="panel panel-default">
						<div class="panel-heading">
                           RM <asp:Label ID="lblAmountMethod" runat="server" Text=""></asp:Label>
						</div>
							<div class="panel-body">
								<div class="panel panel-default">
									<div class="panel-heading"><asp:CheckBox ID="chkOnline" runat="server" TabIndex="3" /> Online Banking</div>
										<div class="panel-body">
                                            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                                                <asp:ListItem Value="1">Maybank</asp:ListItem>
                                                <asp:ListItem Value="2">CIMB</asp:ListItem>
                                                <asp:ListItem Value="3">RHB</asp:ListItem>
                                                <asp:ListItem Value="4">BANK ISLAM</asp:ListItem>
                                                <asp:ListItem Value="5">PUBLIC BANK</asp:ListItem>
                                                <asp:ListItem Value="5">AFFIN BANK</asp:ListItem>
                                                <asp:ListItem Value="6">E-WALLET</asp:ListItem>
                                            </asp:RadioButtonList><br />
											<asp:Label ID="lblErrorOnlineBanking" runat="server" ForeColor="Red"></asp:Label>
										</div>
								</div>
							</div>
						</div>
				  </div>
			  </div>
         </div>
       </form>
   </div>
</body>
	<script>
        if (window.history.replaceState) {
            window.history.replaceState(null, null, window.location.href);
        }
</script>
</html>
