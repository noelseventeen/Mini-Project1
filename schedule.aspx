<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="schedule.aspx.cs" Inherits="scrap.schedule" %>
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
            <td>SCHEDULE DATE&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Date"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>TIME&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">WARD NUMBER&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
            </td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="SAVE" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Repeater ID="Repeater1" runat="server">
                    
                       <HeaderTemplate>
                           <table border="1" id="example" class="table table-striped table-fixed table-dark">
                               <thead>
                               <tr>                          
                                   <th>DATE</th>
                                   <th>TIME</th>
                                   <th>WARD_NO</th>
                                   <th>action</th>
                                   <th>action</th>
                               </tr>
                                   </thead>
                               <tbody>
                       </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td><%# Eval("date") %></td>
                            <td><%# Eval("time") %></td>
                            <td><%# Eval("ward_no") %></td>
                             <td>
                                <asp:Button ID="Button2" OnClick="Button2_Click" CommandName='<%# Eval("schedule_id") %>' runat="server" Text="EDIT" /></td>
                            <td>
                                <asp:Button ID="Button3" OnClick="Button3_Click" CommandName='<%# Eval("schedule_id") %>' runat="server" Text="DELETE" /></td>
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
