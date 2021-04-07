<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="MostBasicWebsite.SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body
        {
            margin: 0;
            height: 100vh;
            display:flex; 
            justify-content:center; 
            align-items:center;
            background-color: #F8F8F8;
        }
        .parentContainerDiv{
            display:flex; 
            justify-content:center; 
            align-items:center;
        }
        .containerDiv
        {
           justify-content:center; 
           align-items:center;
        }
        .heading{
            text-align:center;
            font-family:Gabriola;
        }
        .textbox {
            border-radius: 5px;
        }
        .table{
            border-collapse:separate;
            border-spacing: 0 20px;
            border-radius: 20px;
            border: medium; 
            padding: 50px; 
            background-color: #F0F0F0; 
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="parentContainerDiv">
            <div class="containerDiv">
                <div>
                    <h1 class="heading">Sign in to BasicWebsite</h1>
                </div>
                <div>
                    <table class="table">
                        <tbody>
                            <tr>
                                <td>User Name</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox ID="txtUserName" ToolTip="Please enter your user name" runat="server" CssClass="textbox"></asp:TextBox>   
                                </td>
                            </tr>
                            <tr>
                                 <td>
                                    <asp:RequiredFieldValidator ID="rfvUserName" runat="server" ControlToValidate="txtUserName" ErrorMessage="User Name cannot be empty" ForeColor="Red" ValidationGroup="ValidateSignIn"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>Password</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox ID="txtPassword" ToolTip="Please enter your password" runat="server" CssClass="textbox" TextMode="Password"></asp:TextBox>                                   
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="Password cannot be empty" ForeColor="Red" ValidationGroup="ValidateSignIn" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr style="text-align:center;">
                                <td >
                                    <asp:Button ID="btnSignIn" Text="Sign In" BackColor="SkyBlue" Width="100px" runat="server" OnClick="btnSignIn_Click" ValidationGroup="ValidateSignIn" />

                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
