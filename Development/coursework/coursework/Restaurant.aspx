<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Restaurant.aspx.cs" Inherits="coursework.Restaurant" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <body>
        <div>
            <br />
            <asp:Label ID="restaurant_idLabel" runat="server" Text="Restaurant ID"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="restaurant_idTextBox" runat="server"></asp:TextBox>

            <br />
            <br />
            <asp:Label ID="restaurant_nameLabel" runat="server" Text="Restaurant Name"></asp:Label>
            &nbsp;
            <asp:TextBox ID="restaurant_nameTextBox" runat="server"></asp:TextBox>
            <br />
            <br /> 
            <asp:Label ID="addressLabel" runat="server" Text="Address"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="addressTextBox" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="contact_numberLabel" runat="server" Text="Contact Number"></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="contactNumberTextBox" runat="server"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="saveButton" runat="server" Text="SAVE" OnClick="saveButton_Click" BackColor="#33CC33" BorderColor="White" BorderStyle="Solid" ForeColor="White" Height="40px" Width="105px" />
            <br /> 
            <br />
            <asp:Label ID="restaurantDetailsLabel" runat="server" Text="Restaurant Details:"></asp:Label>
            <br />
            <div>

                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="RESTAURANT_ID" DataSourceID="SqlDataSource1" AllowSorting="True" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" GridLines="None" Width="810px" ForeColor="Black">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="RESTAURANT_ID" HeaderText="RESTAURANT ID" ReadOnly="True" SortExpression="RESTAURANT_ID" />
                        <asp:BoundField DataField="RESTAURANT_NAME" HeaderText="RESTAURANT NAME" SortExpression="RESTAURANT_NAME" >
                        <ItemStyle HorizontalAlign="Left" />
                        </asp:BoundField>
                        <asp:BoundField DataField="RESTAURANT_ADDRESS" HeaderText="RESTAURANT ADDRESS" SortExpression="RESTAURANT_ADDRESS" >
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString6 %>" DeleteCommand="DELETE FROM RESTAURANT WHERE (RESTAURANT_ID = :restaurant_id)" ProviderName="<%$ ConnectionStrings:ConnectionString6.ProviderName %>" SelectCommand="SELECT RESTAURANT_ID, RESTAURANT_NAME, RESTAURANT_ADDRESS, CONTACT_NUMBER FROM RESTAURANT" UpdateCommand="UPDATE RESTAURANT SET RESTAURANT_NAME = :restaurant_name, RESTAURANT_ADDRESS = :restaurant_address, CONTACT_NUMBER = :contact_number WHERE (RESTAURANT_ID = :restaurant_id)">
                    <DeleteParameters>
                        <asp:Parameter Name="restaurant_id" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="restaurant_name" />
                        <asp:Parameter Name="restaurant_address" />
                        <asp:Parameter Name="contact_number" />
                        <asp:Parameter Name="restaurant_id" />
                    </UpdateParameters>
                </asp:SqlDataSource>

            </div>
        </div>
    </body>
</asp:Content>