<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication4.Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style1 {
            text-align: center;
            height: 227px;
        }
        .modalBackground
    {
        background-color: Black;
        filter: alpha(opacity=40);
        opacity: 0.4;
    }
        .auto-style2 {
            width: 48%;
        }
        .auto-style3 {
            height: 72px;
        }
        .auto-style4 {
            height: 72px;
            width: 308px;
        }

        .auto-style5 {
            width: 308px;
        }

        .auto-style6 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Font-Underline="True" Text="Student's Form"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Details of the students"></asp:Label>
            <br />
            <br />
            <br />
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <br />
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="rollno" DataSourceID="SqlDataSource1" ForeColor="Black" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="rollno" HeaderText="Roll Number" ReadOnly="True" SortExpression="rollno">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="sname" HeaderText="Student Name" SortExpression="sname">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="fathername" HeaderText="Father Name" SortExpression="fathername">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="mothername" HeaderText="Mother Name" SortExpression="mothername">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:CommandField SelectText="Edit" ShowSelectButton="True" CancelImageUrl="~/images1/update1.jpg" EditImageUrl="~/images1/update1.jpg" EditText="" />
                <asp:CommandField EditImageUrl="~/images1/cross1.jpg" EditText="" ShowDeleteButton="True"></asp:CommandField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <p>
            &nbsp;</p>
        <p>
            <asp:LinkButton ID="LinkButton1" runat="server"></asp:LinkButton>
        </p>
        <p>
            <asp:Label ID="Label3" runat="server"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
        <asp:Panel ID="Panel1" runat="server"
Style="display: none">
            <table border="1" bgcolor="tomato">
                <tr>
                    <td class="auto-style4">Student Roll Number</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox1" runat="server" Height="40px" Width="285px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Student Name</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Height="40px" Width="285px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Father Name</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Height="40px" Width="285px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Mother Name</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" Height="40px" Width="285px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6" colspan="2">
                        <asp:Button ID="Button1" runat="server" BackColor="#99CCFF" Font-Bold="True" Height="48px" Text="Update" OnClick="Save" />
                        &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" BackColor="#99CCFF" Font-Bold="True" Height="48px" Text="Close" Width="84px" />
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </asp:Panel>
        <p>
        </p>
        <p>
            &nbsp;</p>
        <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender1" runat="server" TargetControlID="LinkButton1"
            PopupControlID="Panel1" CancelControlID="Button2" BackgroundCssClass="modalBackground"></ajaxToolkit:ModalPopupExtender>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [StudentData]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [StudentData] WHERE [rollno] = @original_rollno AND [sname] = @original_sname AND [fathername] = @original_fathername AND [mothername] = @original_mothername" InsertCommand="INSERT INTO [StudentData] ([rollno], [sname], [fathername], [mothername]) VALUES (@rollno, @sname, @fathername, @mothername)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [StudentData] SET [sname] = @sname, [fathername] = @fathername, [mothername] = @mothername WHERE [rollno] = @original_rollno AND [sname] = @original_sname AND [fathername] = @original_fathername AND [mothername] = @original_mothername">
            <DeleteParameters>
                <asp:Parameter Name="original_rollno" Type="Int32" />
                <asp:Parameter Name="original_sname" Type="String" />
                <asp:Parameter Name="original_fathername" Type="String" />
                <asp:Parameter Name="original_mothername" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="rollno" Type="Int32" />
                <asp:Parameter Name="sname" Type="String" />
                <asp:Parameter Name="fathername" Type="String" />
                <asp:Parameter Name="mothername" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="sname" Type="String" />
                <asp:Parameter Name="fathername" Type="String" />
                <asp:Parameter Name="mothername" Type="String" />
                <asp:Parameter Name="original_rollno" Type="Int32" />
                <asp:Parameter Name="original_sname" Type="String" />
                <asp:Parameter Name="original_fathername" Type="String" />
                <asp:Parameter Name="original_mothername" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
    </form>
</body>
</html>
