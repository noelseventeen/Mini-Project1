<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="date.aspx.cs" Inherits="scrap.date" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style1">date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Date"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="White" ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="View" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Repeater ID="Repeater1" runat="server">
                    <HeaderTemplate>
                                    <table border="1" id="example"  class="table table-hover">
                                        <thead>
                                            <tr>
                                                <th>Name</th>
                                                <th>Place</th>
                                                <th>WARD_NO</th>
                                                <%--<th>action</th>
                                                <th>action</th>--%>
                                            </tr>
                                        </thead>
                                        <tbody>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <tr>
                                        <td><%# Eval("name") %></td>
                                        <td><%# Eval("addr") %></td>
                                        <td><%# Eval("ward_no") %></td>
                                       <%-- <td>
                                            <asp:Button ID="Button2" OnClick="Button2_Click" CommandName='<%# Eval("schedule_id") %>' runat="server" Text="EDIT" class="btn btn-outline-warning m-2" /></td>
                                        <td>
                                            <asp:Button ID="Button3" OnClick="Button3_Click" CommandName='<%# Eval("schedule_id") %>' runat="server" Text="DELETE" class="btn btn-outline-danger m-2" /></td>--%>
                                    </tr>
                                </ItemTemplate>
                                <FooterTemplate>
                                    </tbody>
                       </table>
                                </FooterTemplate>
                </asp:Repeater>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
