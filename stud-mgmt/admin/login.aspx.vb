Imports System.Data.SqlClient
Imports System.Data

Partial Class admin_login
    Inherits System.Web.UI.Page

    Dim con As SqlConnection
    Dim cmd As SqlCommand
    Dim ad As SqlDataAdapter
    Dim ds As DataSet
    Dim uacname As String
    Dim _constr As String = ConfigurationManager.ConnectionStrings("con").ConnectionString

    Protected Sub connection()
        con = New SqlConnection(_constr)
        Try
            con.Open()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Protected Sub checkData()
        If username.Text = "" Or password.Text = "" Then
            MsgBox("All fields empty")
            Return
        ElseIf username.Text = "" Then
            MsgBox("Username cannot empty")
            Return
        ElseIf password.Text = "" Then
            MsgBox("Password cannot empty")
            Return
        End If
    End Sub

    Protected Sub validAdmin()
        uacname = Request.QueryString("uacname")
        cmd = New SqlCommand("select uacname,email,password from admin where uacname=@username and password=@password ", con)
        cmd.Parameters.AddWithValue("@username", username.Text.Trim)
        cmd.Parameters.AddWithValue("@password", password.Text.Trim)
        ad = New SqlDataAdapter(cmd)
        ds = New DataSet
        ad.Fill(ds)
        Dim adminUsername As String = ds.Tables(0).Rows(0).Item(0).ToString
        Dim adminPassword As String = ds.Tables(0).Rows(0).Item(2).ToString
        If adminUsername.Trim = username.Text.Trim And adminPassword = password.Text.Trim Then
            MsgBox()
        End If
    End Sub

    Protected Sub btnLogin_Click(sender As Object, e As System.EventArgs) Handles btnLogin.Click
        checkData()

        Response.Redirect("~/admin/home.aspx")
    End Sub

    Protected Sub btnCreateNewAccount_Click(sender As Object, e As System.EventArgs) Handles btnCreateNewAccount.Click
        Response.Redirect("~/admin/register.aspx")
    End Sub
End Class
