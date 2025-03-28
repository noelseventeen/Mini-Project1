<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="itemDetails.aspx.cs" Inherits="scrap.itemDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DataList ID="DataList1" runat="server">
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style2">
                                <asp:Image ID="Image1" runat="server" Height="95px" ImageUrl='<%# "data:image/png;base64,"+Convert.ToBase64String((byte[])Eval("image"),0,((byte[])Eval("image")).Length) %>' Width="237px" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("item_name") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:LinkButton ID="LinkButton1" runat="server" Text='<%# Eval("item_id") %>' CommandArgument='<%# Eval("item_id") %>' OnClick="LinkButton1_Click"></asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </form>
</body>
</html>
