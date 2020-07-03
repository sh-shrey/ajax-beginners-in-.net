<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="trial.aspx.cs" Inherits="ajax._try" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace ="AjaxControlToolkit" TagPrefix="Ajax" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .modalBckground{
            background-color:black;
            filter: alpha(opacity=50);
            opacity:0.4;
        }
        
    </style>
</head>
<body style="height: 501px">
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <br />
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" AllowPaging="True" PageIndex="2">
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                            <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
                            <asp:BoundField DataField="stream" HeaderText="stream" SortExpression="stream" />
                            <asp:TemplateField HeaderText="operation">
                                <ItemTemplate>
                                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/ty.jpg" Height="45px" />
                                    <ajaxToolkit:ConfirmButtonExtender ID="ConfirmButtonExtender1"  TargetControlID="ImageButton1" DisplayModalPopupID="ModalPopupExtender1" runat="server" />
                                    <br />
                                    <asp:Panel ID="Panel1" runat="server" Height="89px">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#FF3300" Text="Are sure to delete this record?"></asp:Label>
                                        <br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:ImageButton ID="ImageButton2" runat="server" Height="25px" ImageUrl="~/images/ty.jpg" OnClick="ImageButton2_Click" />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="Button1" runat="server" Text="Yes" />
                                    </asp:Panel>
                                    <br />
                                    <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender1" runat="server" BackgroundCssClass=".modalBackground" PopupControlID="Panel1" CancelControlID="Button1" TargetControlID="ImageButton1"></ajaxToolkit:ModalPopupExtender>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
                </ContentTemplate>
            </asp:UpdatePanel>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [student]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
