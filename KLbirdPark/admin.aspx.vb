Imports System.Data.SqlClient

Public Class admin
    Inherits System.Web.UI.Page
    Dim conn As New SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=KlBirdParkDB;Integrated Security=True")

    Dim dd As New SqlCommand

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            conn.Open()
            dd.Connection = conn
        Catch ex As Exception

        End Try
        dd.CommandText = "Select SUM(totalAmount),SUM(totalAmountChildren),SUM(totalAmountAdult),SUM(totalQtyAdult),SUM(totalQtyChild) from tblOrder"

        dd.ExecuteNonQuery()
        Dim read As SqlDataReader = dd.ExecuteReader()

        If read.Read() Then

            txtbothSales.Text = "RM " & read.GetValue(0)
            txtSalesChild.Text = "RM " & read.GetValue(1)
            txtSalesAdult.Text = "RM " & read.GetValue(2)
            txtttlAdult.Text = read.GetValue(3)
            txtttlChild.Text = read.GetValue(4)

        End If
        read.Close()
    End Sub

    Protected Sub txtttlAdult_TextChanged(sender As Object, e As EventArgs) Handles txtttlAdult.TextChanged

    End Sub
End Class