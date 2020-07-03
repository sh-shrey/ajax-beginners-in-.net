<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="password.aspx.cs" Inherits="ajax.password" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style3 {
            width: 78%;
            background-color: greenyellow;
        }
        .auto-style4 {
            width: 185px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="#9933FF" Text="checking password strength"></asp:Label>
            <br />
            <br />
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <br />
            <br />
            <table class="auto-style3">
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Red" Text="Your password"></asp:Label>
                    </td>
                    <td>&nbsp;
                        <asp:TextBox ID="TextBox1" runat="server" Width="201px"></asp:TextBox>
                        <ajaxToolkit:PasswordStrength ID="TextBox1_PasswordStrength" runat="server" BehaviorID="TextBox1_PasswordStrength" TargetControlID="TextBox1" HelpStatusLabelID="Label5" DisplayPosition="RightSide" StrengthIndicatorType="Text" PreferredPasswordLength="8" MinimumNumericCharacters="1" MinimumSymbolCharacters="1" PrefixText="strength:" />
                        <br />
                        <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Medium" Text="Submit" OnClick="Button1_Click1" />
                        <br />
                        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="False" ForeColor="#CC0000"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>
                        <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="#009900"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
