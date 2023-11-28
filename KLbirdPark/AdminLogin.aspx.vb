Imports System.Data.SqlClient

Public Class AdminLogin
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Private Sub btnLogin_Click(sender As Object, e As EventArgs) Handles btnLogin.Click
        If String.IsNullOrEmpty(txtUsername.Text) And String.IsNullOrEmpty(txtPassword.Text) Then
            lblErrorLogin.Text = "[Username and Password cannot be empty]"
            LblErrorUsername.Text = ""
            lblErrorPassword.Text = ""
        ElseIf (String.IsNullOrEmpty(txtUsername.Text)) Then
            LblErrorUsername.Text = "[Username cannot empty]"
            lblErrorPassword.Text = ""
            lblErrorLogin.Text = ""
        ElseIf (String.IsNullOrEmpty(txtPassword.Text)) Then
            lblErrorPassword.Text = "[Password cannot empty]"
            lblErrorLogin.Text = ""
            LblErrorUsername.Text = ""
        Else
            If txtUsername.Text = "Admin" And txtPassword.Text = "KLBirdPark123" Then
                'lblErrorLogin.Text = "[success]"
                Response.Redirect("admin.aspx")
            Else
                lblErrorLogin.Text = "[Incorrect username or password]"
                LblErrorUsername.Text = ""
                lblErrorPassword.Text = ""
            End If
        End If
    End Sub

End Class