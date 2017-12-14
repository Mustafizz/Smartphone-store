<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="orderadmin.aspx.cs" Inherits="OSPS.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
    <form id="form1" runat="server">
        <table class="nav-justified">
            <tr>
                <td style="width: 239px">&nbsp;</td>
                <td>&nbsp;</td>
                <td style="width: 347px">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 239px">&nbsp;</td>
                <td>&nbsp;</td>
                <td style="width: 347px">Order Table</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 239px; height: 143px"></td>
                <td style="height: 143px"></td>
                <td style="width: 347px; height: 143px">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Phone" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="Phone" HeaderText="Phone" ReadOnly="True" SortExpression="Phone" />
                            <asp:BoundField DataField="C_Name" HeaderText="C_Name" SortExpression="C_Name" />
                            <asp:BoundField DataField="P_Name" HeaderText="P_Name" SortExpression="P_Name" />
                            <asp:BoundField DataField="P_Adress" HeaderText="P_Adress" SortExpression="P_Adress" />
                            <asp:BoundField DataField="P_Dsp" HeaderText="P_Dsp" SortExpression="P_Dsp" />
                            <asp:BoundField DataField="P_price" HeaderText="P_price" SortExpression="P_price" />
                            <asp:BoundField DataField="D_Status" HeaderText="D_Status" SortExpression="D_Status" />
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" />
                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="#F7F7DE" />
                        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FBFBF2" />
                        <SortedAscendingHeaderStyle BackColor="#848384" />
                        <SortedDescendingCellStyle BackColor="#EAEAD3" />
                        <SortedDescendingHeaderStyle BackColor="#575357" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Order]"></asp:SqlDataSource>
                </td>
                <td style="height: 143px"></td>
                <td style="height: 143px"></td>
            </tr>
            <tr>
                <td style="width: 239px">&nbsp;</td>
                <td>&nbsp;</td>
                <td style="width: 347px">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 239px">&nbsp;</td>
                <td>&nbsp;</td>
                <td style="width: 347px">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
 
</asp:Content>
