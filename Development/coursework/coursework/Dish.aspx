<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dish.aspx.cs" Inherits="coursework.Dish" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <body>
        <div>
            <br />
            <asp:Label ID="lblDishCode" runat="server" Text="Dish Code"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtDishCode" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblDishName" runat="server" Text="Dish Name"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtDishName" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblDishRate" runat="server" Text="Dish Rate"></asp:Label>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtDishRate" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblLLocalName" runat="server" Text="Local Name"></asp:Label>
        &nbsp;
        &nbsp;<asp:TextBox ID="txtLocalName" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnSave" runat="server" Text="Save" BorderStyle="Solid" OnClick="btnSave_Click" BackColor="#33CC33" BorderColor="White" ForeColor="White" Height="40px" Width="105px" />
            
            <br />
             <br />
            <asp:Label ID="dishDetailsLabel" runat="server" Text="Dish Details:"></asp:Label>
             <br />
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="DISH_CODE" DataSourceID="SqlDataSource1" AllowSorting="True" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" GridLines="None" Width="619px" ForeColor="Black">
                 <AlternatingRowStyle BackColor="PaleGoldenrod" />
                 <Columns>
                     <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                     <asp:BoundField DataField="DISH_CODE" HeaderText="DISH CODE" ReadOnly="True" SortExpression="DISH_CODE" />
                     <asp:BoundField DataField="DISH_NAME" HeaderText="DISH NAME" SortExpression="DISH_NAME" >
                     <HeaderStyle HorizontalAlign="Right" />
                     <ItemStyle HorizontalAlign="Left" />
                     </asp:BoundField>
                     <asp:BoundField DataField="DISH_RATE" HeaderText="DISH RATE" SortExpression="DISH_RATE" />
                     <asp:BoundField DataField="LOCAL_NAME" HeaderText="LOCAL NAME" SortExpression="LOCAL_NAME" >
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString4 %>" ProviderName="<%$ ConnectionStrings:ConnectionString4.ProviderName %>" SelectCommand="SELECT DISH_CODE, DISH_NAME, DISH_RATE, LOCAL_NAME FROM DISH" UpdateCommand="UPDATE DISH SET DISH_NAME = :dish_name, DISH_RATE = :dish_rate, LOCAL_NAME = :local_name WHERE (DISH_CODE = :dish_code)" DeleteCommand="DELETE FROM DISH WHERE (DISH_CODE = :dish_code)">
                <DeleteParameters>
                    <asp:Parameter Name="dish_code" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="dish_name" />
                    <asp:Parameter Name="dish_rate" />
                    <asp:Parameter Name="local_name" />
                    <asp:Parameter Name="dish_code" />
                </UpdateParameters>
            </asp:SqlDataSource>
             <br />
           
        </div>
    </body>
</asp:Content>
