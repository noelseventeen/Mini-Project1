<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="bill.aspx.cs" Inherits="scrap.bill" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row g-4">
        <div class="col-sm-12 col-xl-12">
            <div class="bg-secondary rounded h-100 p-4">
                <table class="w-100">
                    <tr>
                        <td class="auto-style2">WARD NUMBER&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" class="form-select mb-3">
                </asp:DropDownList>
                        </td>
                        <td class="auto-style2"></td>
                    </tr>
                    <tr>
                        <td class="auto-style2">EMAIL&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList2" runat="server" class="form-select mb-3">
                </asp:DropDownList>
                        </td>
                        <td class="auto-style2"></td>
                    </tr>
                    <tr>
                        <td>QUANTITY</td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server" class="form-control bg-dark border-0"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>AMOUNT</td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server" class="form-control bg-dark border-0"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="SAVE" class="btn btn-outline-info m-2" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Repeater ID="Repeater1" runat="server">

                                <HeaderTemplate>
                                    <table border="1" id="example" class="table table-hover">
                                        <thead>
                                            <tr>
                                                <th>WARD</th>
                                                <th>EMAIL</th>
                                                <th>QUANTITY</th>
                                                <th>AMOUNT</th>
                                                <th>action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <tr>
                                        <td><%# Eval("ward_no") %></td>
                                        <td><%# Eval("email") %></td>
                                        <td><%# Eval("qty") %></td>
                                        <td><%# Eval("price") %></td>
                                        <td>
                                            <asp:Button ID="Button2" OnClick="Button2_Click" CommandName='<%# Eval("schedule_id") %>' runat="server" Text="EDIT" class="btn btn-outline-warning m-2" /></td>
                                        <td>
                                            <asp:Button ID="Button1" OnClick="Button2_Click" CommandName='<%# Eval("schedule_id") %>' runat="server" Text="DELETE" class="btn btn-outline-danger m-2" /></td>
                                    </tr>
                                </ItemTemplate>
                                <FooterTemplate>
                                    </tbody>
                       </table>
                                </FooterTemplate>
                            </asp:Repeater>
            </div>
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
        </div>
    </div>
    </div>

</asp:Content>
