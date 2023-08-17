Imports System.Data.SqlClient
Imports System.Data

Partial Class admin_con_pass_reset
    Inherits System.Web.UI.Page


    Dim con As SqlConnection
    Dim cmd As SqlCommand
    Dim ad As SqlDataAdapter
    Dim ds As DataSet
    Dim userId As String
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
        If password.Text = "" And cpassowrd.Text = "" Then
            Page.Controls.Add(New LiteralControl("<script type=text/javascript>alert('All fields are empty !')</script>"))
            Return
        ElseIf password.Text = "" Then
            Page.Controls.Add(New LiteralControl("<script type=text/javascript>alert('Password cannot empty !')</script>"))
            Return
        ElseIf cpassowrd.Text = "" Then
            Page.Controls.Add(New LiteralControl("<script type=text/javascript>alert('Confirm password cannot empty !')</script>"))
            Return
        End If
    End Sub

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        connection()
        userId = Request.QueryString("uacname")
        cmd = New SqlCommand("select uacname,email from admin where uacname= @uacname ", con)
        cmd.Parameters.AddWithValue("@uacname", userId.Trim)
        ad = New SqlDataAdapter(cmd)
        ds = New DataSet
        Try
            ad.Fill(ds)
            If IsPostBack = False Then
                username.Text = ds.Tables(0).Rows(0).Item(0).ToString
                email.Text = ds.Tables(0).Rows(0).Item(1).ToString
            Else
                username.Text = ds.Tables(0).Rows(0).Item(0).ToString
                email.Text = ds.Tables(0).Rows(0).Item(1).ToString
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Protected Sub updatePassword_Click(sender As Object, e As System.EventArgs) Handles updatePassword.Click
        checkData()
        If password.Text.Trim = cpassowrd.Text.Trim Then
            cmd = New SqlCommand("update admin set password=@password where email=@email and uacname=@username", con)
            cmd.Parameters.AddWithValue("@password", password.Text.Trim)
            cmd.Parameters.AddWithValue("@email", email.Text.Trim)
            cmd.Parameters.AddWithValue("@username", username.Text.Trim)
            Try
                cmd.ExecuteNonQuery()
                'Page.Controls.Add(New LiteralControl("<script type=text/javascript>alert('Password update successfully 😉')</script>"))
                Response.Redirect("~/admin/login.aspx?username=" + username.Text.Trim)
            Catch
            End Try
        Else
            Page.Controls.Add(New LiteralControl("<script type=text/javascript>alert('Password not match 🙁')</script>"))
        End If
    End Sub
End Class
