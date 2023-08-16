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
        checkData()
        Try
            uacname = Request.QueryString("uacname")
            cmd = New SqlCommand("select uacname,email,password from admin where uacname=@username ", con)
            cmd.Parameters.AddWithValue("@username", username.Text.Trim)
            cmd.Parameters.AddWithValue("@password", password.Text.Trim)
            ad = New SqlDataAdapter(cmd)
            ds = New DataSet
            Try
                ad.Fill(ds)
                Dim adminUsername As String = ds.Tables(0).Rows(0).Item(0).ToString
                Dim adminPassword As String = ds.Tables(0).Rows(0).Item(2).ToString
                If adminUsername.Trim = username.Text.Trim And adminPassword.Trim = password.Text.Trim Then

                    If MsgBox("Successfully Login !", MsgBoxStyle.Information + MsgBoxStyle.OkOnly, "Information") = MsgBoxResult.Ok Then
                        Session("username") = username.Text.Trim
                        Session("adminLogin") = True
                        Response.Redirect("~/admin/home.aspx")
                        username.Text = ""
                        password.Text = ""
                    End If
                    Return
                ElseIf adminUsername.Trim = username.Text.Trim Or adminPassword.Trim <> password.Text.Trim Then
                    If MsgBox("Wrong Password", MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "Error") = MsgBoxResult.Ok Then
                        password.Text = ""
                    End If
                    Return
                Else
                    MsgBox("UserNot Exists")
                    Return
                End If
            Catch
            End Try
        Catch
        End Try
    End Sub

    Protected Sub btnLogin_Click(sender As Object, e As System.EventArgs) Handles btnLogin.Click
        connection()
        validAdmin()
    End Sub
End Class
