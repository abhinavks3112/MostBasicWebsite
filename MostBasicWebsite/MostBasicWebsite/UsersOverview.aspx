<%@ Page MasterPageFile="~/Users.Master" Language="C#" AutoEventWireup="true" CodeBehind="UsersOverview.aspx.cs" Inherits="MostBasicWebsite.UsersOverview"%>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      
    <div style="padding: 5%; margin: 5%; background-color: #F0F0F0; border-radius: 10px;">
        <div>
          <h1 class="heading">SYSTEM USERS OVERVIEW</h1>
     </div>
            <div>
                    <div class="table_Sub_Heading" style="text-align:center; font-size: 20px; margin-bottom:7px;">USERS</div>
                <asp:GridView ID="gvUsers" runat="server" CellPadding="10" ForeColor="#333333" GridLines="None" CellSpacing="10" HorizontalAlign="Center" CssClass="myCenter">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                </div>
            <br />
            <div>
                    <div class="table_Sub_Heading" style="text-align:center; font-size: 20px; margin-bottom:7px;"> USER ROLES</div>
    
            <asp:GridView ID="gvUserRoles" runat="server" CellPadding="10" ForeColor="#333333" GridLines="None" CellSpacing="10" HorizontalAlign="Center" CssClass="myCenter">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775"/>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            </div>
            <br />
            <div>
                    <div class="table_Sub_Heading" style="text-align:center; font-size: 20px; margin-bottom:7px;"> ROLES</div>
         
            <asp:GridView ID="gvRoles" runat="server" CellPadding="10" ForeColor="#333333" GridLines="None" CellSpacing="10" HorizontalAlign="Center" CssClass="myCenter">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            </div>
        </div>
&nbsp;
</asp:Content>
