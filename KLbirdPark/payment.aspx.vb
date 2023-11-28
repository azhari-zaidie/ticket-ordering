Imports System.Data.SqlClient
Public Class payment
    Inherits System.Web.UI.Page
    'sub for receive query and give connection with the SQL
    'connect with database
    Dim conn As New SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;" &
                                  "Initial Catalog=KLBirdParkDB;" &
                                  "Integrated Security= SSPI")


    Public Sub MyNonQuery(ByRef SQCommand As String)
        'declare sqlcommand
        Dim dd As New SqlCommand(SQCommand, conn)
        Try
            'open connecrtion
            conn.Open()
            'execute the query
            dd.ExecuteNonQuery()
            conn.Close()
            'popup message will tell whether it is succes or not
            MsgBox("Data Saved")
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try

    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        RadioButtonList1.Visible = True
        txtCardNumber.ReadOnly = False
        txtCardholderName.ReadOnly = False
        txtCvv.ReadOnly = False

        lblPaymentID.Text = Session("orderID")
        lblOrderID.Text = lblPaymentID.Text
        'create new session and assign it with the value inside label
        Session("orderID") = lblOrderID.Text
        Session("paymentID") = lblPaymentID.Text

        'Session("address") = txtAddress.Text
        'Session("cardName") = txtCardholderName.Text

        lblTotal.Text = Session("totalAmount")
        lblAmountMethod.Text = Session("totalAmount")
    End Sub

    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click

        'declaratation for all variable 
        Dim totalQty, totalQtyAdult, totalQtyChildren As String
        Dim totalAmount, totalAmountAdult, totalAmountChildren As String
        Dim name, email, contactNo As String
        Dim cardHolder, nameCard, PaymentMethod As String
        Dim idPayment As String

        'assigning variable with session and label that contains value
        idPayment = Session("paymentID")
        cardHolder = txtCardNumber.Text
        nameCard = txtCardholderName.Text

        totalQty = Session("totalQty")
        totalQtyChildren = Session("totalQtyChildren")
        totalQtyAdult = Session("totalQtyAdult")

        totalAmount = Session("totalAmount")
        totalAmountAdult = Session("totalAmountAdult")
        totalAmountChildren = Session("totalAmountChildren")
        PaymentMethod = Session("PaymentMethod")

        name = Session("name")
        email = Session("contactNo")
        contactNo = Session("email")

        If String.IsNullOrEmpty(txtAddress.Text) And chkDebit.Checked = False And chkOnline.Checked = False Then
            lblError.Text = "[Select Payment Method]"
            lblError2.Text = "[Adrress is empty]"
            lblErrorName.Text = ""
            lblErrorCard.Text = ""
            lblErrorCvv.Text = ""
            lblErrorOnlineBanking.Text = ""
        ElseIf chkDebit.Checked = False And chkOnline.Checked = False Then
            lblError.Text = "[Select Payment Method]"
            lblError2.Text = ""
            lblErrorName.Text = ""
            lblErrorCard.Text = ""
            lblErrorCvv.Text = ""
            lblErrorOnlineBanking.Text = ""
        ElseIf chkDebit.Checked = True And chkOnline.Checked = True Then
            lblError.Text = "[Please choose one payment method only]"
            lblError2.Text = ""
            lblErrorName.Text = ""
            lblErrorCard.Text = ""
            lblErrorCvv.Text = ""
            lblErrorOnlineBanking.Text = ""
        Else
            If chkDebit.Checked = True Then
                RadioButtonList1.Visible = False
                If (String.IsNullOrEmpty(txtCardholderName.Text) And String.IsNullOrEmpty(txtCardNumber.Text) And String.IsNullOrEmpty(txtCvv.Text) And String.IsNullOrEmpty(DropDownList2.Text)) Then
                    lblErrorCard.Text = "[Required Field]"
                    lblErrorName.Text = "[Required Field]"
                    lblErrorCvv.Text = "[Required Field]"
                    lblError.Text = ""
                    lblErrorOnlineBanking.Text = ""
                Else
                    lblErrorName.Text = ""
                    lblErrorCard.Text = ""
                    lblErrorCvv.Text = ""
                    lblError.Text = ""
                    lblErrorOnlineBanking.Text = ""
                    'masukkan insert into
                    Response.Redirect("done.aspx")
                End If
            ElseIf chkOnline.Checked = True Then
                txtCardNumber.ReadOnly = True
                txtCardholderName.ReadOnly = True
                txtCvv.ReadOnly = True
                lblErrorName.Text = ""
                lblErrorCard.Text = ""
                lblErrorCvv.Text = ""
                lblError.Text = ""
                lblError2.Text = ""
                lblErrorOnlineBanking.Text = ""
                If String.IsNullOrEmpty(RadioButtonList1.SelectedValue) Then
                    lblErrorOnlineBanking.Text = "[Please choose One]"
                    lblError.Text = ""

                End If
                'sini masukkan insert into 
                Response.Redirect("done.aspx")
            End If
        End If
    End Sub

    Protected Sub txtCardholderName_TextChanged(sender As Object, e As EventArgs) Handles txtCardholderName.TextChanged

    End Sub
End Class