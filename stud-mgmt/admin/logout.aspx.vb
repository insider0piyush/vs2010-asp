
Partial Class admin_logout
    Inherits System.Web.UI.Page

    Protected Sub SignOut_Click(sender As Object, e As System.EventArgs) Handles SignOut.Click
        'MsgBox("Hy" & " " & Session("username") & " " & "," & " You are successfully sign out !", MsgBoxStyle.Information, "Information")
        'Page.Controls.Add(New LiteralControl("<script type=text/javascript>alert('Successfully Sign Out !')</script>"))
        Session("adminLogin") = False
        Session.Clear()
        Response.Redirect("~/admin/login.aspx")
    End Sub
End Class
