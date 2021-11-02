<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OrderActivity.aspx.cs" Inherits="coursework.OrderActivity" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <body>
        <div>
            <br />
            <asp:Label ID="customerNameLabel" runat="server" Text="Customer Name"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="CUSTOMER_NAME" DataValueField="CUSTOMER_ID" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString19 %>" ProviderName="<%$ ConnectionStrings:ConnectionString19.ProviderName %>" SelectCommand="SELECT CUSTOMER_ID, CUSTOMER_NAME FROM CUSTOMER"></asp:SqlDataSource>
            <br />
            <br />
            <asp:Label ID="customerIDLabel" runat="server" Text="Customer ID"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtCustomerID" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="orderHistoryDetailsLabel" runat="server" Text="Order History Details:"></asp:Label>
            <br />
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource2" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" Width="567px">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <Columns>
                    <asp:BoundField DataField="RESTAURANT_ID" HeaderText="RESTAURANT ID" SortExpression="RESTAURANT_ID" />
                    <asp:BoundField DataField="RESTAURANT_NAME" HeaderText="RESTAURANT NAME" SortExpression="RESTAURANT_NAME" >
                    <ItemStyle HorizontalAlign="Left" />
                    </asp:BoundField>
                    <asp:BoundField DataField="MONTH" HeaderText="MONTH" SortExpression="MONTH" >
                    <ItemStyle HorizontalAlign="Left" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Total Order" HeaderText="TOTAL ORDER" SortExpression="Total Order" />
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
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString20 %>" ProviderName="<%$ ConnectionStrings:ConnectionString20.ProviderName %>" SelectCommand="SELECT * FROM (SELECT od.restaurant_id, r.restaurant_name, to_char(order_date, 'Monthyyyy') MONTH, COUNT(dish_code) AS &quot;TOTAL ORDER&quot; FROM order_details od JOIN restaurant r ON od.restaurant_id = r.restaurant_id GROUP BY od.restaurant_id, r.restaurant_name, to_char(order_date, 'Monthyyyy') ORDER BY COUNT(dish_code) DESC) WHERE rownum&lt;=5"></asp:SqlDataSource>
        </div>
    </body>
</asp:Content>
