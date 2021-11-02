<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CustomerOrderDetails.aspx.cs" Inherits="coursework.CustomerOrderDetails" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <body>
        <br />
    <asp:Label ID="customerNameLabel" runat="server" Text="Customer Name:"></asp:Label>
        &nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="CUSTOMER_NAME" DataValueField="CUSTOMER_ID" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True" Height="40px" Width="177px">
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="customerIDLabel" runat="server" Text="Customer ID:"></asp:Label>
        &nbsp;&nbsp;
        <asp:TextBox ID="txtCustomerID" runat="server" ReadOnly="True" OnTextChanged="txtCustomerID_TextChanged"></asp:TextBox>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString8 %>" ProviderName="<%$ ConnectionStrings:ConnectionString8.ProviderName %>" SelectCommand="SELECT CUSTOMER_ID, CUSTOMER_NAME FROM CUSTOMER"></asp:SqlDataSource>
    <br />
    <asp:Label ID="orderDetailsLabel" runat="server" Text="Order Details:"></asp:Label>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ORDER_NUMBER" DataSourceID="SqlDataSource2" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" GridLines="None" Width="1147px" ForeColor="Black">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="ORDER_NUMBER" HeaderText="ORDER NUMBER" ReadOnly="True" SortExpression="ORDER_NUMBER" />
                <asp:BoundField DataField="SN" HeaderText="SN" SortExpression="SN" >
                <ItemStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:BoundField DataField="ORDER_DATE" HeaderText="ORDER DATE" SortExpression="ORDER_DATE" />
                <asp:BoundField DataField="ORDER_AMOUNT" HeaderText="ORDER AMOUNT" SortExpression="ORDER_AMOUNT" >
                </asp:BoundField>
                <asp:BoundField DataField="CUSTOMER_ID" HeaderText="CUSTOMER ID" SortExpression="CUSTOMER_ID" >
                </asp:BoundField>
                <asp:BoundField DataField="DELIVERY_ID" HeaderText="DELIVERY ID" SortExpression="DELIVERY_ID" >
                </asp:BoundField>
                <asp:BoundField DataField="DISH_CODE" HeaderText="DISH CODE" SortExpression="DISH_CODE" />
                <asp:BoundField DataField="RESTAURANT_ID" HeaderText="RESTAURANT ID" SortExpression="RESTAURANT_ID" />
                <asp:BoundField DataField="STATUS" HeaderText="STATUS" SortExpression="STATUS" />
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString17 %>" ProviderName="<%$ ConnectionStrings:ConnectionString17.ProviderName %>" SelectCommand="SELECT ORDER_NUMBER, SN, ORDER_DATE, ORDER_AMOUNT, CUSTOMER_ID, DELIVERY_ID, DISH_CODE, RESTAURANT_ID, STATUS FROM ORDER_DETAILS"></asp:SqlDataSource>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="deliveryPointBtn" runat="server" OnClick="deliveryPointBtn_Click" Text="Get Delivery Point" BackColor="#33CC33" BorderColor="White" BorderStyle="Solid" ForeColor="White" Height="40px" Width="172px" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="deliveryIDLabel" runat="server" Text="Delivery ID"></asp:Label>
        <asp:TextBox ID="txtdeliveryID" runat="server" ReadOnly="True"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="deliveryPointLabel" runat="server" Text="Delivery Point:"></asp:Label>
    <asp:TextBox ID="deliveryPointTextBox" runat="server" ReadOnly="True" OnTextChanged="deliveryPointTextBox_TextChanged" Width="232px"></asp:TextBox>
        <br />
    <br />
    </body>  
</asp:Content>