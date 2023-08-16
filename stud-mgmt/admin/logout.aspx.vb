
Partial Class admin_logout
    Inherits System.Web.UI.Page

    Protected Sub SignOut_Click(sender As Object, e As System.EventArgs) Handles SignOut.Click
        MsgBox("Hy" & " " & Session("username") & " " & "," & " You are successfully sign out !", MsgBoxStyle.Information, "Information")
        Session("adminLogin") = False
        Session.Clear()
        Response.Redirect("~/admin/login.aspx")
    End Sub
End Class
