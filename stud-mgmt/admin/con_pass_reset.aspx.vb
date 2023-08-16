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

    Protected Sub validAdmin()
        'checkData()
        'userId = Request.QueryString("uacname")
        'MsgBox(userId)
        Try
            cmd = New SqlCommand("select uacname,email from admin where uacname='piyush9076'", con)
            ad = New SqlDataAdapter(cmd)
            ds = New DataSet
            Try
                ad.Fill(ds)
                If IsPostBack = False Then
                    username.Text = ds.Tables(0).Rows(0).Item(0).ToString
                    email.Text = ds.Tables(0).Rows(0).Item(1).ToString
                End If
            Catch 
            End Try
        Catch
        End Try
    End Sub

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        connection()
        validAdmin()
    End Sub
End Class
