<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="item.aspx.cs" Inherits="scrap.item" %>
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
            <td>ITEM NAME&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">ITEM PRICE&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td>IMAGE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:FileUpload ID="FileUpload1" runat="server" />
&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image1" runat="server" Height="91px" Width="188px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="SAVE" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td>
                <asp:Repeater ID="Repeater1" runat="server">
                     <HeaderTemplate>
                           <table border="1" id="example" class="table table-striped table-fixed table-dark">
                               <thead>
                               <tr>                          
                                   <th>NAME</th>
                                   <th>PRICE</th>
                                    <th>IMAGE</th>
                                    <th>action</th>
                                    <th>action</th>
                               </tr>
                                   </thead>
                                <tbody>
                       </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td><%# Eval("item_name") %></td>
                            <td><%# Eval("item_price") %></td>
                            <td><asp:Image ID="Image2" runat="server" Height="91px" ImageUrl='<%# "data:image/png;base64,"+Convert.ToBase64String((byte[])Eval("image"),0,((byte[])Eval("image")).Length) %>' Width="188px" /></td>
                            
                             <td>
                                <asp:Button ID="Button2" OnClick="Button2_Click" CommandName='<%# Eval("item_id") %>' runat="server" Text="EDIT" /></td>
                            <td>
                                <asp:Button ID="Button3" OnClick="Button3_Click" CommandName='<%# Eval("item_id") %>' runat="server" Text="DELETE" /></td>
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
    </table>
</asp:Content>
