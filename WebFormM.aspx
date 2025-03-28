<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="WebFormM.aspx.cs" Inherits="scrap.WebFormM" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Enter Ward Number<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="SAVE" OnClick="Button1_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
            <td>
                <asp:Repeater ID="Repeater1" runat="server">
                    
                       <HeaderTemplate>
                           <table border="1" id="example" class="table table-striped table-fixed table-dark">
                               <thead>
                               <tr>                          
                                   <th>ward_no</th>
                                   <th>action</th>
                                   <th>action</th>
                               </tr>
                                   </thead>
                               <tbody>
                       </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td><%# Eval("ward_no") %></td>
                            <td>
                                <asp:Button ID="Button2" OnClick="Button2_Click" CommandName='<%# Eval("ward_id") %>' runat="server" Text="EDIT" /></td>
                            <td>
                                <asp:Button ID="Button3" OnClick="Button3_Click" CommandName='<%# Eval("ward_id") %>' runat="server" Text="DELETE" /></td>
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
    </table>
</asp:Content>
