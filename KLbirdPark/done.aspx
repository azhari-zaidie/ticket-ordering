<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="done.aspx.vb" Inherits="KLbirdPark.done" %>

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
                    <button type="button" class="btn " disabled>1. Ticket Purchase</button>
                    <button type="button" class="btn" disabled>2. Order Summary</button>
                    <button type="button" class="btn btn-primary" disabled>3. Done</button>
                    <br /> <br />
                </div>
                <div class="row">
                    <div class="col">
                        <h4>Customer Information</h4> <br />
                        <div class="shadow p-4 mb-4 bg-white"> 
                            <div class="form-group">
						        <label for="billing-name">Name:</label><br />
								<asp:Label ID="lblName" runat="server" class="form-control" Width="345px"></asp:Label>
						    </div>
						    <div class="form-group">
						        <label for="billing-contactno">Contact No:</label><br />
								<asp:Label ID="lblContactNo" runat="server" class="form-control" Width="345px" ></asp:Label>
						    </div>
						    <div class="form-group">
						        <label for="billing-email">Email:</label><br />
								<asp:Label ID="lblEmail" runat="server" class="form-control" Width="345px"></asp:Label>
						    </div>
                        </div>
                    </div>
                    <div class="col">
                    <h4>Booking Details</h4> <br />
                    <div class="shadow p-3 mb-3 bg-white">
                    <table class="table table-striped" style="width: 410px">
					    <tbody><tr>
					        <th style="width:40%">Tickets</th>
						    <th style="width:20%">QTY</th>
						    <th style="width:40%">Amount</th>
						    </tr>
						    <tr>
						        <td>Adult</td>
						        <td><asp:Label ID="lblQtyAdult" runat="server" ></asp:Label></td>
						        <td>RM <asp:Label ID="lblAmountAdult" runat="server"></asp:Label></td>
						    </tr>
						    <tr>
						        <td>Children</td>
						        <td><asp:Label ID="lblQtyChildren" runat="server" ></asp:Label></td>
						        <td>RM <asp:Label ID="lblAmountChildren" runat="server"></asp:Label></td>
						    </tr>
						    <tr>
						        <td><strong>Total</strong></td>
						        <td><asp:Label ID="lblQtyTotal" runat="server" Text=""></asp:Label></td>
						        <td><strong>RM <asp:Label ID="lblTotal" runat="server" ></asp:Label></strong></td>
					        </tr>
					    </tbody>
                     </table>
						<br />
						<div class="panel-group">
							<div class="panel panel-default">
								
								<div class="panel-body">
									<dl class="dl-horizontal">
									<dt><strong>Order ID</strong></dt>
									<dd><asp:Label ID="lblOrderID" runat="server"></asp:Label></dd>
								</dl>
								<dl class="dl-horizontal">
									<dt><strong>Payment ID</strong></dt>
									<dd><asp:Label ID="lblPaymentID" runat="server"></asp:Label></dd>
								</dl>
								<dl class="dl-horizontal">
									<dt><strong>Payment for</strong></dt>
									<dd>KL Bird Park: Admission Ticket</dd>
								</dl>
								</div>
							</div>
						</div>
						<div class="text-left">
							<asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Done" />
						</div>
					</div>
                </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
