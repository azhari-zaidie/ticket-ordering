<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="admin.aspx.vb" Inherits="KLbirdPark.admin" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

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
                <div class="text-center">
        <br />
        <h4>Customer's Detail</h4>
        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BirdParkDBConnectionString %>" SelectCommand="SELECT [IdPayment], [name], [email], [address], [contact], [cardHolder], [nameCard], [IdOrder], [PaymentMethod] FROM [customer]"></asp:SqlDataSource>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="IdPayment" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="IdPayment" HeaderText="Payment ID" ReadOnly="True" SortExpression="IdPayment" />
                <asp:BoundField DataField="name" HeaderText="Customer's Name" SortExpression="name" />
                <asp:BoundField DataField="email" HeaderText="Customer's Email" SortExpression="email" />
                <asp:BoundField DataField="address" HeaderText="Customer's Address" SortExpression="address" />
                <asp:BoundField DataField="contact" HeaderText="Customer's Contact Number" SortExpression="contact" />
                <asp:BoundField DataField="cardHolder" HeaderText="Bank Card Number" SortExpression="cardHolder" />
                <asp:BoundField DataField="nameCard" HeaderText="Card Name" SortExpression="nameCard" />
                <asp:BoundField DataField="IdOrder" HeaderText="Order ID" SortExpression="IdOrder" />
                <asp:BoundField DataField="PaymentMethod" HeaderText="Payment Method" SortExpression="PaymentMethod" />
            </Columns>
        </asp:GridView>
        <br />
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BirdParkDBConnectionString %>" SelectCommand="SELECT [IdOrder], [totalQtyAdult], [totalQtyChild], [totalAmountAdult], [totalAmountChildren], [totalAmount] FROM [tblorder]"></asp:SqlDataSource>
        <br />
        <div>
            <h4>Sales Summary</h4>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IdOrder" DataSourceID="SqlDataSource1" S Width="1130px">
            <Columns>
                <asp:BoundField DataField="IdOrder" HeaderText="Order ID" ReadOnly="True" SortExpression="IdOrder" />
                <asp:BoundField DataField="totalQtyAdult" HeaderText="Total Quantity of Adult" SortExpression="totalQtyAdult" />
                <asp:BoundField DataField="totalQtyChild" HeaderText="Total Quantity of Children" SortExpression="totalQtyChild" />
                <asp:BoundField DataField="totalAmountAdult" HeaderText="Total Sales of Adult" SortExpression="totalAmountAdult" />
                <asp:BoundField DataField="totalAmountChildren" HeaderText="Total Sales of Children" SortExpression="totalAmountChildren" />
                <asp:BoundField DataField="totalAmount" HeaderText="Total Sales of Both Category" SortExpression="totalAmount" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:Label ID="LblSummary" runat="server" Text="Summary :"></asp:Label>
        <br />
        <asp:Label ID="lblQtyAdult" runat="server" Text="Total Adult :"></asp:Label>
        <asp:TextBox ID="txtttlAdult" runat="server" ReadOnly="True"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblQtyChild" runat="server" Text="Total Children :"></asp:Label>
        <asp:TextBox ID="txtttlChild" runat="server" ReadOnly="True"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="SalesAdult" runat="server" Text="Total Adult (Sales) :"></asp:Label>
        &nbsp;<asp:TextBox ID="txtSalesAdult" runat="server" ReadOnly="True"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="SalesChildren" runat="server" Text="Total Children (Sales) :"></asp:Label>
        <asp:TextBox ID="txtSalesChild" runat="server" ReadOnly="True"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="BothSales" runat="server" Text="Total Both Sales :"></asp:Label>
        <asp:TextBox ID="txtbothSales" runat="server" ReadOnly="True"></asp:TextBox>
        <br />
            </div>
        <br />
        <br />
                    </div>
                </div>
            </div>
    </form>
</body>
</html>
<a href="ticketing.aspx" class="btn btn-primary" id="btnHome">Home</a>
