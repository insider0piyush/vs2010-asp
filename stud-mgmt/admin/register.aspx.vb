Imports System.Data.SqlClient
Imports System.Data

Partial Class admin_register
    Inherits System.Web.UI.Page

    Dim con As SqlConnection
    Dim cmd As SqlCommand
    Dim ad As SqlDataAdapter
    Dim ds As DataSet
    Dim _constr As String = ConfigurationManager.ConnectionStrings("con").ConnectionString

    Protected Sub connection()
        con = New SqlConnection(_constr)
        Try
            con.Open()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Protected Sub createTable()
        cmd = New SqlCommand("create table admin(uacname varchar(12) unique not null,fname varchar(32) not null,lname varchar(32) not null,email varchar(128) primary key, mno bigint unique not null,password varchar(128) not null)", con)
        Try
            cmd.ExecuteNonQuery()
        Catch ex As Exception
        End Try
    End Sub

    Protected Sub register()
        cmd = New SqlCommand("insert into admin values(@username,@fname,@lname,@email,@mno,@password)", con)
        Try
            cmd.Parameters.AddWithValue("@username", fname.Text.Trim & Convert.ToInt64(mno.Text.Trim.Substring(4, 4)))
            cmd.Parameters.AddWithValue("@fname", fname.Text.Trim)
            cmd.Parameters.AddWithValue("@lname", lname.Text.Trim)
            cmd.Parameters.AddWithValue("@email", email.Text.Trim)
            cmd.Parameters.AddWithValue("@mno", Convert.ToInt64(mno.Text.Trim))
            cmd.Parameters.AddWithValue("@password", password.Text.Trim)

            If (password.Text.Trim = cpassword.Text.Trim) Then
                If password.Text = "" And cpassword.Text = "" Then
                    MsgBox("password cannot empty")
                Else
                    cmd.ExecuteNonQuery()
                    MsgBox("Hello" & " " & fname.Text.Trim & Convert.ToInt64(mno.Text.Trim.Substring(4, 4)) & " , " & " You are successfully registered to our portal !", MsgBoxStyle.Information, "Information")
                    clearData()
                End If
            Else
                MsgBox("Confirm password not match")
            End If
        Catch ex As Exception
            'MsgBox(ex.Message)
        End Try
    End Sub

    Protected Sub checkData()
        If fname.Text = "" And lname.Text = "" And email.Text = "" And mno.Text = "" And password.Text = "" And cpassword.Text = "" Then
            MsgBox("all fields are empty")
            Return
        ElseIf fname.Text = "" Then
            MsgBox("fname empty")
            Return
        ElseIf lname.Text = "" Then
            MsgBox("lname empty")
            Return
        ElseIf email.Text = "" Then
            MsgBox("email empty")
            Return
        ElseIf mno.Text = "" Then
            MsgBox("mobile number empty")
            Return
        End If
    End Sub

    Protected Sub checkAdminIsExists()
        checkData()
        Try
            cmd = New SqlCommand("select email,mno from admin where email = @email or mno = @mno ", con)
            cmd.Parameters.AddWithValue("@email", email.Text.Trim)
            cmd.Parameters.AddWithValue("@mno", Convert.ToInt64(mno.Text.Trim))
            ad = New SqlDataAdapter(cmd)
            ds = New DataSet
            Try
                ad.Fill(ds)
                Dim regEmail As String = ds.Tables(0).Rows(0).Item(0).ToString
                Dim regMno As String = ds.Tables(0).Rows(0).Item(1).ToString
                If regEmail = email.Text.Trim And regMno = Convert.ToInt64(mno.Text.Trim) Then
                    MsgBox("Admin already exists")
                    Return
                ElseIf regEmail = email.Text.Trim Then
                    MsgBox("Email already exists")
                    Return
                ElseIf regMno = Convert.ToInt64(mno.Text.Trim) Then
                    MsgBox("Mobile number already exists")
                    Return
                End If
            Catch
                'MsgBox("Record not found")
                register()
            End Try
        Catch
        End Try
    End Sub


    Protected Sub clearData()
        fname.Text = ""
        lname.Text = ""
        email.Text = ""
        mno.Text = ""
        password.Text = ""
        cpassword.Text = ""
    End Sub

    Protected Sub btnAlreadyAccount_Click(sender As Object, e As System.EventArgs) Handles btnAlreadyAccount.Click
        Response.Redirect("~/admin/login.aspx")
    End Sub

    Protected Sub btnRegister_Click(sender As Object, e As System.EventArgs) Handles btnRegister.Click
        connection()
        createTable()
        checkAdminIsExists()
    End Sub
End Class
