Imports System.Data.SqlClient
Imports System.Data

Partial Class admin_home
    Inherits System.Web.UI.Page

    Dim con As SqlConnection
    Dim cmd As SqlCommand
    Dim ad As SqlDataAdapter
    Dim ds As DataSet
    Dim uacname As String
    Dim _constr As String = ConfigurationManager.ConnectionStrings("con").ConnectionString

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        If Session("adminLogin") = True Then
            username.Text = Session("username")
        End If
    End Sub

    Protected Sub SignOut_Click(sender As Object, e As System.EventArgs) Handles SignOut.Click
        If Session("adminLogin") = True Then
            Response.Redirect("~/admin/logout.aspx")
        End If
    End Sub
End Class
