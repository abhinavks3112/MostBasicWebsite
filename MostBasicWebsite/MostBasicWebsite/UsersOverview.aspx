<%@ Page MasterPageFile="~/Users.Master" Language="C#" AutoEventWireup="true" CodeBehind="UsersOverview.aspx.cs" Inherits="MostBasicWebsite.UsersOverview"%>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    UsersOverview<asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
    <br />
    <asp:GridView ID="GridView2" runat="server">
    </asp:GridView>
&nbsp;
</asp:Content>
