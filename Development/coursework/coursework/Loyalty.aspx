<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Loyalty.aspx.cs" Inherits="coursework.Loyalty" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <body>
        <br />
        <asp:Label ID="loyaltyIdLabel" runat="server" Text="Loyalty ID"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtLoyaltyID" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="descriptionLabel" runat="server" Text="Description"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtDescription" runat="server" Height="93px" TextMode="MultiLine" Width="184px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="loyaltyPointsLabel" runat="server" Text="Loyalty Points"></asp:Label>&nbsp;&nbsp; <asp:TextBox ID="txtLoyaltyPoints" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="dishCodeLabel" runat="server" Text="Dish Code"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtDishCode" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="restaurantIdLabel" runat="server" Text="Restaurant ID"></asp:Label>&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtRestaurantID" runat="server"></asp:TextBox>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="saveButton" runat="server" Text="Save" OnClick="saveButton_Click" BackColor="#33CC33" BorderColor="White" BorderStyle="Solid" ForeColor="White" Height="39px" Width="105px" />
        <br />
        <asp:Label ID="loyaltyDetailsLabel" runat="server" Text="Loyalty Details:"></asp:Label>
        <br />

        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="LOYALTY_ID" DataSourceID="SqlDataSource1" GridLines="None" Width="1225px" ForeColor="Black">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="LOYALTY_ID" HeaderText="LOYALTY ID" ReadOnly="True" SortExpression="LOYALTY_ID">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="DESCRIPTION" HeaderText="DESCRIPTION" SortExpression="DESCRIPTION">
                <ItemStyle Width="650px" HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:BoundField DataField="LOYALTY_POINTS" HeaderText="LOYALTY POINTS" SortExpression="LOYALTY_POINTS">
                <ItemStyle Width="150px" />
                </asp:BoundField>
                <asp:BoundField DataField="DISH_CODE" HeaderText="DISH CODE" SortExpression="DISH_CODE">
                <ItemStyle Width="100px" />
                </asp:BoundField>
                <asp:BoundField DataField="RESTAURANT_ID" HeaderText="RESTAURANT ID" SortExpression="RESTAURANT_ID">
                <ItemStyle Width="140px" />
                </asp:BoundField>
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString18 %>" DeleteCommand="DELETE FROM LOYALTY WHERE (LOYALTY_ID = :loyalty_id)" ProviderName="<%$ ConnectionStrings:ConnectionString18.ProviderName %>" SelectCommand="SELECT LOYALTY_ID, DESCRIPTION, LOYALTY_POINTS, DISH_CODE, RESTAURANT_ID FROM LOYALTY" UpdateCommand="UPDATE LOYALTY SET DESCRIPTION = :description, LOYALTY_POINTS = :loyalty_points, DISH_CODE = :dish_code, RESTAURANT_ID = :restaurant_id WHERE (LOYALTY_ID = :loyalty_id)">
            <DeleteParameters>
                <asp:Parameter Name="loyalty_id" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="description" />
                <asp:Parameter Name="loyalty_points" />
                <asp:Parameter Name="dish_code" />
                <asp:Parameter Name="restaurant_id" />
                <asp:Parameter Name="loyalty_id" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </asp:Content>