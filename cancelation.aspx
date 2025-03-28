<%@ Page Title="" Language="C#" MasterPageFile="~/booking.Master" AutoEventWireup="true" CodeBehind="cancelation.aspx.cs" Inherits="scrap.cancelation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Repeater ID="Repeater1" runat="server">
        
                       <HeaderTemplate>
                           <table border="1" id="example" class="table table-striped table-fixed table-dark">
                               <thead>
                               <tr>                          
                                   <th>Schduled date</th>
                                   <th>Booked date</th>
                                   <th>Ward number</th>
                                   <th>action</th>
                               </tr>
                                   </thead>
                               <tbody>
                       </HeaderTemplate>
                    <ItemTemplate>
                        <tr>                            
                            <td><%# Eval("date") %></td>
                            <td><%# Eval("sdate") %></td>
                            <td><%# Eval("ward_no") %></td>
                            <td><asp:Button ID="Button1"  OnClick="Button2_Click" CommandName='<%# Eval("bid") %>' runat="server" Text="Cancel"/></td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </tbody>   
                        </table>
                        </FooterTemplate>
    </asp:Repeater>
     
</asp:Content>
    
