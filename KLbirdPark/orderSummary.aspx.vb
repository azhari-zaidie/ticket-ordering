Imports System.Data.SqlClient
Public Class WebForm2
    Inherits System.Web.UI.Page
    Dim QtyAdult, AmountAdult As Integer 'Declaration for quantity adult and amount adult
    Dim QtyChild, AmountChild As Integer 'Declaration for quantity child and amount child
    Dim Total, qtyTotal As Integer 'Declaration for total amount and total quantity
    Dim qtyTotalChild, qtyTotalAdult As Integer 'Declaration for total amount and total quantity
    'this page will display the amount, qty, and cust detail before go to payment pages

    'connect with database
    Dim conn As New SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;" &
                                  "Initial Catalog=exercise11;" &
                                  "Integrated Security= SSPI")
    'declare sqlcommand
    Dim dd As New SqlCommand

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        'declaration new variable
        ' Dim totalQty, totalQtyAdult, totalQtyChildren As String
        'Dim totalAmount, totalAmountAdult, totalAmountChildren As String
        Dim name, email, contactNo As String
        Dim idCart As String

        name = Session("name")
        email = Session("email")
        contactNo = Session("contactNo")

        idCart = Session("idCart")

        lblName.Text = name
        lblEmail.Text = email
        lblContact.Text = contactNo

        Try
            conn.Open()
            dd.Connection = conn

            dd.CommandText = "Select totalQtyAdult, totalQtyChild, totalAmountAdult, totalAmountChildren, totalAmount from cart where idCart= '" & idCart & "'"

            dd.ExecuteNonQuery()
            Dim read As SqlDataReader = dd.ExecuteReader()

            If read.Read() Then

                lblQtyAdult.Text = read.GetValue(0)
                lblQtyChildren.Text = read.GetValue(1)
                lblAmountAdult.Text = read.GetValue(2)
                lblAmountChildren.Text = read.GetValue(3)
                lblAmount.Text = read.GetValue(4)
                lblQtyTotal.Text = Val(lblQtyAdult.Text) + Val(lblQtyChildren.Text)
            End If
            read.Close()
            conn.Close()
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            conn.Close()
        End Try

    End Sub


    Protected Sub btnNext_Click(sender As Object, e As EventArgs) Handles btnNext.Click
        Dim rn As New Random
        Dim idOrder As String
        Session("totalQty") = lblQtyTotal.Text
        Session("totalQtyAdult") = lblQtyAdult.Text
        Session("totalQtyChildren") = lblQtyChildren.Text

        Session("totalAmount") = lblAmount.Text
        Session("totalAmountAdult") = lblAmountAdult.Text
        Session("totalAmountChildren") = lblAmountChildren.Text

        'validator when cust click checkbox button or nots
        If chkTrue.Checked = True Then
            'label payment and order will display random number that start with 200xxxxxxxxxxx
            idOrder = "200" & rn.Next(22222222, 33333333)
            If lblQtyTotal.Text > 0 Then
                Session("orderID") = idOrder
                Response.Redirect("payment.aspx")
            Else
                lblError.Text = "[Quantity cannot be null]"
            End If
            'create new session and assign it with the value inside label
        Else
                lblError.Text = "[Please tick the checkbox]"
        End If
    End Sub

    Protected Sub btnAdd_Click(sender As Object, e As EventArgs) Handles btnAdd.Click
        If lblQty.Text >= "0" Then                                  'if label quantity >= 0
            lblQty.Text = Val(lblQty.Text) + 1                      'label quatity in order ticket will increase by 1
        End If
    End Sub

    Protected Sub btnDelAdult_Click(sender As Object, e As EventArgs) Handles btnDelAdult.Click
        Dim tempTotal As Integer
        Dim ask As MsgBoxResult
        tempTotal = lblAmountChildren.Text + 0

        ask = MsgBox("Are you sure to Delete Adult Cart?", MsgBoxStyle.YesNo, "Deleting")

        If ask = MsgBoxResult.Yes Then
            Try
                conn.Open()
                dd.Connection = conn

                dd.CommandText = "update cart set totalQtyAdult = '0' , totalAmountAdult ='0' , totalAmount = '" & tempTotal & "' where idCart = '" & Session("idCart") & "' "
                dd.ExecuteNonQuery()

                conn.Close()
                Response.Redirect(Request.RawUrl)
            Catch ex As Exception
                MsgBox(ex.Message)
            End Try
        End If

    End Sub

    Protected Sub btnDelChild_Click(sender As Object, e As EventArgs) Handles btnDelChild.Click
        Dim tempTotal As Integer
        Dim ask As MsgBoxResult
        tempTotal = lblAmountAdult.Text + 0

        ask = MsgBox("Are you sure to Delete Child Cart?", MsgBoxStyle.YesNo, "Deleting")

        If ask = MsgBoxResult.Yes Then
            Try
                conn.Open()
                dd.Connection = conn

                dd.CommandText = "update cart set totalQtyChild = '0' , totalAmountChildren ='0' , totalAmount = '" & tempTotal & "' where idCart = '" & Session("idCart") & "' "
                dd.ExecuteNonQuery()

                conn.Close()
                Response.Redirect(Request.RawUrl)
            Catch ex As Exception
                MsgBox(ex.Message)
            End Try
        End If
    End Sub

    Protected Sub btnUpdate_Click(sender As Object, e As EventArgs) Handles btnUpdate.Click
        Dim ask As MsgBoxResult
        QtyAdult = Val(lblQty.Text)
        qtyTotalAdult = lblQtyAdult.Text + QtyAdult
        AmountAdult = 63.0 * qtyTotalAdult

        QtyChild = Val(lblQty2.Text)
        qtyTotalChild = Val(lblQtyChildren.Text) + QtyChild
        AmountChild = 42.0 * qtyTotalChild

        Total = AmountAdult + AmountChild

        ask = MsgBox("Are you sure to Update Cart?", MsgBoxStyle.YesNo, "Updating")

        If ask = MsgBoxResult.Yes Then
            Try
                conn.Open()
                dd.Connection = conn
                dd.CommandText = "UPDATE cart set totalQtyAdult = '" & qtyTotalAdult & "', totalQtyChild = '" & qtyTotalChild & "', totalAmountAdult = '" & AmountAdult & "', totalAmountChildren = '" & AmountChild & "', totalAmount = '" & Total & "' where idCart='" & Session("idCart") & "' "
                dd.ExecuteNonQuery()

                conn.Close()
                Response.Redirect(Request.RawUrl)
            Catch ex As Exception
                MsgBox(ex.Message)
            End Try
        End If

    End Sub

    Protected Sub btnMinus_Click(sender As Object, e As EventArgs) Handles btnMinus.Click
        If lblQty.Text >= "1" Then
            lblQty.Text = Val(lblQty.Text) - 1
        End If
    End Sub

    'button (+) in children
    Protected Sub btnAdd2_Click(sender As Object, e As EventArgs) Handles btnAdd2.Click
        If lblQty2.Text >= "0" Then
            lblQty2.Text = Val(lblQty2.Text) + 1
        End If

    End Sub

    'button (-) in children
    Protected Sub btnMinus2_Click(sender As Object, e As EventArgs) Handles btnMinus2.Click
        If lblQty2.Text >= "1" Then
            lblQty2.Text = Val(lblQty2.Text) - 1
        End If

    End Sub
End Class