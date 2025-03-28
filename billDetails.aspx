<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="billDetails.aspx.cs" Inherits="scrap.billDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 5px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row g-4">
        <div class="col-sm-12 col-xl-12">
            <div class="bg-secondary rounded h-100 p-4">
                <table class="w-100">
                    <tr>
                        <td>WARD</td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" AutoPostBack="true" runat="server"  class="form-select mb-3" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>EMAIL</td>
                        <td>
                            <asp:DropDownList ID="DropDownList2" AutoPostBack="true" runat="server" class="form-select mb-3" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>SCRAP COLLECTED(PER Kg)</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" MaxLength="3" class="form-control bg-dark border-0"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="White" ControlToValidate="TextBox1" ValidationGroup="abc" ErrorMessage="*"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ForeColor="White" ControlToValidate="TextBox1" ValidationExpression="^[0-9]+$"  ErrorMessage="*numbers only"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>

                        <td class="auto-style1"></td>
                        <td class="auto-style1">
                            </td>
                    </tr>
                    <tr>
                        <td>AMOUNT</td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" MaxLength="3" class="form-control bg-dark border-0" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="White" ControlToValidate="TextBox2" ValidationGroup="abc" ErrorMessage="*"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ForeColor="White" ControlToValidate="TextBox2" ValidationExpression="^[0-9]+$" ErrorMessage="*numbers only"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" ValidationGroup="abc" Text="SAVE" class="btn btn-outline-info m-2" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                          <tr>
                        <td>
                            <div class="table-responsive">   
                            <asp:Repeater ID="Repeater1" runat="server">

                                <HeaderTemplate>
                                    <table border="1" id="example"  class="table table-hover">
                                        <thead>
                                            <tr>
                                                <th>WARD_NO</th>
                                                <th>EMAIL</th>
                                                <th>QTY</th>
                                                <th>AMT</th>
                                                <th>action</th>
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
                                            <asp:Button ID="Button2" OnClick="Button2_Click" CommandName='<%# Eval("did") %>' runat="server" Text="EDIT" class="btn btn-outline-warning m-2" /></td>
                                        <td>
                                            <asp:Button ID="Button3" OnClick="Button3_Click" CommandName='<%# Eval("did") %>' runat="server" Text="DELETE" class="btn btn-outline-danger m-2" /></td>
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
                    </table>
            </div>
        </div>
    </div>
</asp:Content>
