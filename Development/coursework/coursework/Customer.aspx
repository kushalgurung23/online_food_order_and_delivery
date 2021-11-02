<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="coursework.Customer" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <body>
        <br />
        <asp:Label ID="customerIDLabel" runat="server" Text="Customer ID"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="customerIDTextBox" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="customerNameLabel" runat="server" Text="Customer Name"></asp:Label>
        &nbsp;&nbsp;
        <asp:TextBox ID="customerNameTextBox" runat="server" OnTextChanged="customerNameTextBox_TextChanged"></asp:TextBox>
        <br />
        &nbsp;&nbsp;
        <br />
        <asp:Label ID="ageLabel" runat="server" Text="Age"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="ageTextBox" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="addressLabel" runat="server" Text="Address"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="addressTextBox" runat="server"></asp:TextBox>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:Label ID="contactNumberLabl" runat="server" Text="Contact Number"></asp:Label>
        &nbsp;&nbsp;&nbsp;<asp:TextBox ID="contactNumberTextBox" runat="server"></asp:TextBox>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="SaveButton" runat="server" Text="Save" OnClick="SaveButton_Click" BackColor="#33CC33" BorderColor="White" BorderStyle="Solid" ForeColor="White" Height="40px" Width="105px" />
        <br />
        <br />
        <asp:Label ID="customerDetailsLabel" runat="server" Text="Customer Details:"></asp:Label>
        <br />

        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CUSTOMER_ID" DataSourceID="SqlDataSource1" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" GridLines="None" Width="834px" ForeColor="Black">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="CUSTOMER_ID" HeaderText="CUSTOMER ID" ReadOnly="True" SortExpression="CUSTOMER_ID" />
                <asp:BoundField DataField="CUSTOMER_NAME" HeaderText="CUSTOMER NAME" SortExpression="CUSTOMER_NAME" >
                <ItemStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:BoundField DataField="AGE" HeaderText="AGE" SortExpression="AGE" />
                <asp:BoundField DataField="ADDRESS" HeaderText="ADDRESS" SortExpression="ADDRESS" >
                <HeaderStyle HorizontalAlign="Right" />
                <ItemStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:BoundField DataField="CONTACT_NUMBER" HeaderText="CONTACT NUMBER" SortExpression="CONTACT_NUMBER" />
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

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString7 %>" DeleteCommand="DELETE FROM CUSTOMER WHERE (CUSTOMER_ID = :customer_id)" ProviderName="<%$ ConnectionStrings:ConnectionString7.ProviderName %>" SelectCommand="SELECT CUSTOMER_ID, CUSTOMER_NAME, AGE, ADDRESS, CONTACT_NUMBER FROM CUSTOMER" UpdateCommand="UPDATE CUSTOMER SET CUSTOMER_NAME = :customer_name, AGE = :age, ADDRESS = :address, CONTACT_NUMBER = :contact_number WHERE (CUSTOMER_ID = :customer_id)">
            <DeleteParameters>
                <asp:Parameter Name="customer_id" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="customer_name" />
                <asp:Parameter Name="age" />
                <asp:Parameter Name="address" />
                <asp:Parameter Name="contact_number" />
                <asp:Parameter Name="customer_id" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </body>
</asp:Content>