﻿<%@ Page Language="C#" %>

<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        姓名<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        國家
         
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>USA</asp:ListItem>
            <asp:ListItem>TW</asp:ListItem>
            <asp:ListItem>JP</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Button" />
    
    </div>
    </form>
</body>
</html>
