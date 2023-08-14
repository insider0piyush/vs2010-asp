<%@ Page Language="VB" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="admin_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head runat="server">
    <title>
        Admin Login
    </title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <label style="background-color:Purple;padding:12px;width:100%;float:left;border-radius:12px;font-size:28px;font-weight:bold;color:White;">
            Site Master Login
        </label>

        <div>
            <table style="padding-top:17px;display:flex;justify-content:center;width:100%" cellpadding="7px">
                <tr>
                    <td>
                        <label for="username" style="padding-right:42px;"> Username </label>
                    </td>
                    <td>
                         <asp:TextBox type="text" runat="server" ID="username" style="width:256px;padding-top:7px;padding-bottom:7px;padding-inline-start:9px;" />
                    </td>
                </tr>
                 <tr>
                    <td>
                        <label for="password" style="padding-right:22px;"> Password </label>
                    </td>
                    <td>
                        <asp:TextBox type="password" runat="server" ID="password" style="width:256px;padding-top:7px;padding-bottom:7px;padding-inline-start:9px;" />
                    </td>
                </tr>
            </table>
            <div>
                <asp:Button runat="server" ID="btnLogin" style="padding-left:17px;
                    padding-right:17px;padding-top:12px;padding-bottom:12px;
                    border-radius:12px;border-color:Purple;outline-color:Purple;
                    background-color:Purple;color:White;
                    display:flex;justify-content:center;
                    margin-top:28px;width:128px;margin-right:auto;margin-left:auto;font-weight:bold" Text="Login"/>
            </div>
            <div>
                <asp:Button runat="server" ID="btnCreateNewAccount" style="padding-left:17px;
                    padding-right:17px;padding-top:12px;padding-bottom:12px;
                    border-radius:12px;border-color:transparent;outline-color:transparent;
                    background-color:transparent;color:black;
                    display:flex;justify-content:center;
                    margin-top:12px;margin-right:auto;margin-left:auto;font-weight:bold" Text="Create new account"/>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
