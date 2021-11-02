<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DeliveryAddress.aspx.cs" Inherits="coursework.DeliveryAddress" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <body>
        <br />
        <asp:Label ID="deliveryIDLabel" runat="server" Text="Delivery ID"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtDeliveryID" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="deliveryPointLabel" runat="server" Text="Delivery Point"></asp:Label>
        &nbsp;&nbsp;
        <asp:TextBox ID="txtDeliveryPoint" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="deliveryTimeLabel" runat="server" Text="Delivery Time"></asp:Label>
        &nbsp;&nbsp;
        <asp:TextBox ID="txtDeliveryTime" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="deliveryCostLabel" runat="server" Text="Delivery Cost"></asp:Label>
        &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtDeliveryCost" runat="server"></asp:TextBox>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="saveButton" runat="server" Text="Save" OnClick="saveButton_Click" BackColor="#33CC33" BorderColor="White" BorderStyle="Solid" ForeColor="White" Height="40px" Width="105px" />
        <br />
        <br />
        <asp:Label ID="deliveryAddressDetailsLabel" runat="server" Text="Delivery Address Details:"></asp:Label>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="DELIVERY_ID" DataSourceID="SqlDataSource1" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" GridLines="None" Width="680px" ForeColor="Black">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="DELIVERY_ID" HeaderText="DELIVERY ID" ReadOnly="True" SortExpression="DELIVERY_ID" />
                <asp:BoundField DataField="DELIVERY_POINT" HeaderText="DELIVERY POINT" SortExpression="DELIVERY_POINT" >
                <ItemStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:BoundField DataField="DELIVERY_TIME" HeaderText="DELIVERY TIME" SortExpression="DELIVERY_TIME" />
                <asp:BoundField DataField="DELIVERY_COST" HeaderText="DELIVERY COST" SortExpression="DELIVERY_COST" />
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

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString7 %>" DeleteCommand="DELETE FROM DELIVERY_ADDRESS WHERE (DELIVERY_ID = :delivery_id)" ProviderName="<%$ ConnectionStrings:ConnectionString7.ProviderName %>" SelectCommand="SELECT DELIVERY_ID, DELIVERY_POINT, DELIVERY_TIME, DELIVERY_COST FROM DELIVERY_ADDRESS" UpdateCommand="UPDATE DELIVERY_ADDRESS SET DELIVERY_POINT = :delivery_point, DELIVERY_TIME = :delivery_time, DELIVERY_COST = :delivery_cost WHERE (DELIVERY_ID = :delivery_id)">
            <DeleteParameters>
                <asp:Parameter Name="delivery_id" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="delivery_point" />
                <asp:Parameter Name="delivery_time" />
                <asp:Parameter Name="delivery_cost" />
                <asp:Parameter Name="delivery_id" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </body>
</asp:Content>
