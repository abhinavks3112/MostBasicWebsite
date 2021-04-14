<%@ Page Title="" Language="C#" MasterPageFile="~/Users.Master" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="MostBasicWebsite.Welcome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="parentContainerDiv">
        <div class="containerDiv">
                <h1>Welcome <asp:Label ID="lblUserName" runat="server" Text="">!!</asp:Label></h1>
        </div>
    </div>
</asp:Content>
