<%@ Page Language="C#" AutoEventWireup="true" CodeFile="New.aspx.cs" Inherits="New" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
          想要填入的文字 :

        <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" BorderStyle="Ridge" TextMode="MultiLine"></asp:TextBox>       
         <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="確認回傳" /><br />
    </div>
    </form>
</body>
</html>
