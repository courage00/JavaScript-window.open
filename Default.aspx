<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

<title></title>
<style>
    .c
    {
        position: absolute;
        top: 5%;
        left: 10%;
        height: 400px;
    }
</style>
     <script type="Text/JavaScript" src="http://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
    $(document).ready(function(){
        $("#Button1").click(function chooseKeyword_admin() {

            var data = "";
            var TextData = document.getElementById("<% =this.TextBox1.ClientID %>");
            data = TextData.value;


            window.open("New.aspx"
                + "?control=<%=this.TextBox1.ClientID %>&command=true&orgData=" + data
                , "newwindow", "height=700, width=700, toolbar =no, menubar=no, scrollbars=no, resizable=no, location=no, status=no");

            return false;
        });
    })
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="c" >
    <asp:Label ID="Label1" runat="server" Text="文字框框:" Style="text-align:center; position: relative"></asp:Label>
        <div>
    <asp:textbox ID="TextBox1" runat="server" readonly="true" TextMode="MultiLine" style="height:500px;width: 400px;" Enabled="True">等你來改</asp:textbox>
         </div>
        <asp:Button ID="Button1" runat="server" Text="修改"  />
    </div>
    </form>
</body>
</html>
