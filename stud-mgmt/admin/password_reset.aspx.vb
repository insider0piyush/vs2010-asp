Imports System.Data.SqlClient
Imports System.Data

Partial Class admin_password_reset
    Inherits System.Web.UI.Page

    Dim con As SqlConnection
    Dim cmd As SqlCommand
    Dim ad As SqlDataAdapter
    Dim ds As DataSet
    Dim uacname As String
    Dim email As String
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
        If username.Text = "" And email_field.Text = "" Then
            Page.Controls.Add(New LiteralControl("<script type=text/javascript>alert('All fields are empty !')</script>"))
            Return
        ElseIf username.Text = "" Then
            Page.Controls.Add(New LiteralControl("<script type=text/javascript>alert('Username cannot empty !')</script>"))
            Return
        ElseIf email_field.Text = "" Then
            Page.Controls.Add(New LiteralControl("<script type=text/javascript>alert('Email cannot empty !')</script>"))
            Return
        End If
    End Sub

    Protected Sub validAdmin()
        checkData()
        Try
            cmd = New SqlCommand("select uacname,email from admin where uacname=@username or email=@email", con)
            cmd.Parameters.AddWithValue("@username", username.Text.Trim)
            cmd.Parameters.AddWithValue("@email", email_field.Text.Trim)
            ad = New SqlDataAdapter(cmd)
            ds = New DataSet
            Try
                ad.Fill(ds)
                Dim adminUsername As String = ds.Tables(0).Rows(0).Item(0).ToString
                Dim adminEmail As String = ds.Tables(0).Rows(0).Item(1).ToString
                If adminUsername.Trim = username.Text.Trim And adminEmail.Trim = email_field.Text.Trim Then

                    'If MsgBox("Successfully Login !", MsgBoxStyle.Information + MsgBoxStyle.OkOnly, "Information") = MsgBoxResult.Ok Then
                    Response.Redirect("~/admin/con_pass_reset.aspx")
                    'End If
                    Return
                ElseIf adminUsername.Trim = username.Text.Trim Or adminEmail.Trim <> email_field.Text.Trim Then
                    'If MsgBox("Wrong Password", MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "Error") = MsgBoxResult.Ok Then
                    Page.Controls.Add(New LiteralControl("<script type=text/javascript>alert('Wrong Email')</script>"))
                    email_field.Text = ""
                    'End If
                    Return
                End If
            Catch
                Page.Controls.Add(New LiteralControl("<script type=text/javascript>alert('User not found !')</script>"))
                username.Text = ""
                email_field.Text = ""
            End Try
        Catch
        End Try
    End Sub

    Protected Sub verifyUser_Click(sender As Object, e As System.EventArgs) Handles verifyUser.Click
        connection()
        validAdmin()
    End Sub
End Class
