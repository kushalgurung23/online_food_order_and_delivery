<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DishSearch.aspx.cs" Inherits="coursework.DishSearch" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <body>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Customer Name"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="CUSTOMER_NAME" DataValueField="CUSTOMER_NAME" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString10 %>" ProviderName="<%$ ConnectionStrings:ConnectionString10.ProviderName %>" SelectCommand="SELECT CUSTOMER_NAME FROM CUSTOMER"></asp:SqlDataSource>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Dish Name"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="DISH_NAME" DataValueField="DISH_CODE" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Dish Code"></asp:Label>
        <asp:TextBox ID="txtDishCode" runat="server" ReadOnly="True"></asp:TextBox>
        <br />

        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString12 %>" ProviderName="<%$ ConnectionStrings:ConnectionString12.ProviderName %>" SelectCommand="SELECT DISH_CODE, DISH_NAME FROM DISH"></asp:SqlDataSource>
        <br />
        <asp:Label ID="dishAndRestaurantLbl" runat="server" Text="Dish and Restaurant Details:"></asp:Label>
        <br />
        

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="DISH_CODE,RESTAURANT_ID" DataSourceID="SqlDataSource2" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" GridLines="None" Width="791px" ForeColor="Black">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="DISH_CODE" HeaderText="DISH CODE" ReadOnly="True" SortExpression="DISH_CODE" />
                <asp:BoundField DataField="DISH_NAME" HeaderText="DISH NAME" SortExpression="DISH_NAME" >
                <ItemStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:BoundField DataField="DISH_RATE" HeaderText="DISH RATE" SortExpression="DISH_RATE" />
                <asp:BoundField DataField="RESTAURANT_ID" HeaderText="RESTAURANT ID" SortExpression="RESTAURANT_ID" ReadOnly="True" />
                <asp:BoundField DataField="RESTAURANT_NAME" HeaderText="RESTAURANT NAME" SortExpression="RESTAURANT_NAME" >
                <ItemStyle HorizontalAlign="Left" />
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString11 %>" ProviderName="<%$ ConnectionStrings:ConnectionString11.ProviderName %>" SelectCommand="SELECT d.DISH_CODE, d.DISH_NAME, dr.DISH_RATE, r.RESTAURANT_ID, r.RESTAURANT_NAME FROM RESTAURANT r JOIN DISH_RESTAURANT dr ON r.RESTAURANT_ID = dr.RESTAURANT_ID JOIN DISH d ON dr.DISH_CODE = d.DISH_CODE"></asp:SqlDataSource>
        

    </body>
</asp:Content>