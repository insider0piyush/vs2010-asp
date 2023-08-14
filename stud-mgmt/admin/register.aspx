<%@ Page Language="VB" AutoEventWireup="false" CodeFile="register.aspx.vb" Inherits="admin_register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <title>
        Admin Registration
    </title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div>
        <label style="background-color:Purple;padding:12px;width:100%;float:left;border-radius:12px;font-size:28px;font-weight:bold;color:White;">
            Administrator Registration
        </label>

        <div>
            <table style="padding-top:17px;display:flex;justify-content:center;width:100%" cellpadding="7px">
                <tr>
                    <td>
                        <label for="fname" style="padding-right:22px;"> First Name </label>
                    </td>
                    <td>
                        <asp:TextBox type="text" runat="server" ID="fname" style="width:256px;padding-top:7px;padding-bottom:7px;padding-inline-start:9px;" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="lname" style="padding-right:22px;"> Last Name </label>
                    </td>
                    <td>
                        <asp:TextBox type="text" runat="server" ID="lname" style="width:256px;padding-top:7px;padding-bottom:7px;padding-inline-start:9px;" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="mno" style="padding-right:42px;"> Mobile Number </label>
                    </td>
                    <td>
                        <asp:TextBox type="text" runat="server" ID="mno" style="width:256px;padding-top:7px;padding-bottom:7px;padding-inline-start:9px;" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="email" style="padding-right:42px;"> Email Id </label>
                    </td>
                    <td>
                        <asp:TextBox type="email" runat="server" ID="email" style="width:256px;padding-top:7px;padding-bottom:7px;padding-inline-start:9px;" />
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
                 <tr>
                    <td>
                        <label for="cpassword" style="padding-right:22px;"> Confirm Password </label>
                    </td>
                    <td>
                        <asp:TextBox type="password" runat="server" ID="cpassword" style="width:256px;padding-top:7px;padding-bottom:7px;padding-inline-start:9px;" />
                    </td>
                </tr>
            </table>
            <div>
                <asp:Button ID="btnRegister" runat="server" style="padding-left:17px;
                    padding-right:17px;padding-top:12px;padding-bottom:12px;
                    border-radius:12px;border-color:Purple;outline-color:Purple;
                    background-color:Purple;color:White;
                    display:flex;justify-content:center;
                    margin-top:28px;width:128px;margin-right:auto;margin-left:auto;font-weight:bold" text="Sign Up"/>
            </div>
            <div>
                <asp:Button runat="server" ID="btnAlreadyAccount"  style="padding-left:17px;
                    padding-right:17px;padding-top:12px;padding-bottom:12px;
                    border-radius:12px;border-color:transparent;outline-color:transparent;
                    background-color:transparent;color:black;
                    display:flex;justify-content:center;
                    margin-top:12px;margin-right:auto;margin-left:auto;font-weight:bold" Text="Already have an account !" />
            </div>
        </div>
    </div>
    </form>
</body>
</html>
