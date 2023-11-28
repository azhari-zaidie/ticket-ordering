Imports System.Data.SqlClient
Public Class WebForm1
    Inherits System.Web.UI.Page
    Dim QtyAdult, AmountAdult As Integer 'Declaration for quantity adult and amount adult
    Dim QtyChild, AmountChild As Integer 'Declaration for quantity child and amount child
    Dim Total, qtyTotal As Integer 'Declaration for total amount and total quantity
    Dim Name, Email, ContactNo As String 'Declaration for name, email, and contac no customer

    'connect with database
    Dim conn As New SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;" &
                                  "Initial Catalog=exercise11;" &
                                  "Integrated Security= SSPI")
    'declare sqlcommand
    Dim dd As New SqlCommand

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'btnAdd.Enabled = False
    End Sub

    'this is button + in adult
    Protected Sub btnAdd_Click(sender As Object, e As EventArgs) Handles btnAdd.Click
        If lblQty.Text >= "0" Then                                  'if label quantity >= 0
            lblQty.Text = Val(lblQty.Text) + 1                      'label quatity in order ticket will increase by 1
            lblQtyAdult.Text = Val(lblQtyAdult.Text) + 1            'displaying quantity adult in table
            lblAmountAdult.Text = Val(lblAmountAdult.Text) + 63.0   'displaying amount adult in table
            QtyAdult = Val(lblQty.Text)                             'assign quantity adult = value in label quantity.text
            AmountAdult = Val(lblAmountAdult.Text)                  'assign variable amount adult = value in label amount.text
            Total = AmountAdult + lblAmountChildren.Text
            lblAmount.Text = Total
            qtyTotal = lblQty2.Text + QtyAdult
            lblQtyTotal.Text = qtyTotal
        End If

    End Sub

    Protected Sub btnNext_Click(sender As Object, e As EventArgs) Handles btnNext.Click
        Dim rn As New Random
        Dim idCart As String

        If lblQty.Text = "0" And lblQty2.Text = "0" Then 'validatation when quantity ticket is = 0. will display error message
            lblErrorQty.Text = "[Quantity cannot be null]"
        Else
            lblErrorQty.Text = ""
            idCart = "200" & rn.Next(22222222, 33333333)

            Session("idCart") = idCart

            Session("name") = txtName.Text
            Session("contactNo") = txtContact.Text
            Session("email") = txtEmail.Text

            conn.Open()
            dd.Connection = conn
            dd.CommandText = "insert into cart values('" + idCart + "', '" + lblQtyAdult.Text + "','" + lblQtyChildren.Text + "','" + lblAmountAdult.Text + "','" + lblAmountChildren.Text + "','" + lblAmount.Text + "')"

            dd.ExecuteNonQuery()
            conn.Close()
            'redirect to next page
            Response.Redirect("orderSummary.aspx")
        End If
    End Sub
    'button ( - ) in adult
    Protected Sub btnMinus_Click(sender As Object, e As EventArgs) Handles btnMinus.Click
        If lblQty.Text >= "1" Then
            lblQty.Text = Val(lblQty.Text) - 1
            lblQtyAdult.Text = Val(lblQtyAdult.Text) - 1
            lblAmountAdult.Text = Val(lblAmountAdult.Text) - 63.0
            QtyAdult = Val(lblQty.Text)
            AmountAdult = Val(lblAmountAdult.Text)
            Total = AmountAdult + lblAmountChildren.Text
            lblAmount.Text = Total
            qtyTotal = lblQty2.Text + QtyAdult
            lblQtyTotal.Text = qtyTotal
        End If
    End Sub

    'button (+) in children
    Protected Sub btnAdd2_Click(sender As Object, e As EventArgs) Handles btnAdd2.Click
        If lblQty2.Text >= "0" Then
            lblQty2.Text = Val(lblQty2.Text) + 1
            lblQtyChildren.Text = Val(lblQtyChildren.Text) + 1
            lblAmountChildren.Text = Val(lblAmountChildren.Text) + 42.0
            QtyChild = Val(lblQty2.Text)
            AmountChild = Val(lblAmountChildren.Text)
            Total = AmountChild + lblAmountAdult.Text
            lblAmount.Text = Total
            qtyTotal = lblQty.Text + QtyChild
            lblQtyTotal.Text = qtyTotal
        End If

    End Sub

    'button (-) in children
    Protected Sub btnMinus2_Click(sender As Object, e As EventArgs) Handles btnMinus2.Click
        If lblQty2.Text >= "1" Then
            lblQty2.Text = Val(lblQty2.Text) - 1
            lblQtyChildren.Text = Val(lblQtyChildren.Text) - 1
            lblAmountChildren.Text = Val(lblAmountChildren.Text) - 42.0
            QtyChild = Val(lblQty.Text)
            AmountChild = Val(lblAmountChildren.Text)
            Total = AmountChild + lblAmountAdult.Text
            lblAmount.Text = Total
            qtyTotal = lblQty.Text + QtyChild
            lblQtyTotal.Text = qtyTotal
        End If

    End Sub
End Class