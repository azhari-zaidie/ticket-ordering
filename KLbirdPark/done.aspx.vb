Public Class done
    Inherits System.Web.UI.Page
    'this page will display all information after payment success
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim totalQty, totalQtyAdult, totalQtyChildren As String
        Dim totalAmount, totalAmountAdult, totalAmountChildren As String
        Dim name, email, contactNo As String

        totalQty = Session("totalQty")
        totalQtyChildren = Session("totalQtyChildren")
        totalQtyAdult = Session("totalQtyAdult")

        totalAmount = Session("totalAmount")
        totalAmountAdult = Session("totalAmountAdult")
        totalAmountChildren = Session("totalAmountChildren")

        name = Session("name")
        email = Session("contactNo")
        contactNo = Session("email")

        lblQtyTotal.Text = totalQty
        lblQtyAdult.Text = totalQtyAdult
        lblQtyChildren.Text = totalQtyChildren

        lblTotal.Text = totalAmount
        lblAmountAdult.Text = totalAmountAdult
        lblAmountChildren.Text = totalAmountChildren

        lblName.Text = name
        lblEmail.Text = email
        lblContactNo.Text = contactNo

        lblOrderID.Text = Session("orderID")
        lblPaymentID.Text = Session("paymentID")
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Redirect("ticketing.aspx")
    End Sub
End Class