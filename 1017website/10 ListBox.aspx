<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {
         Response.Write(ListBox1.SelectedItem.Text + "<hr/>");
         Response.Write(ListBox1.SelectedItem.Value + "<hr/>");
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:ListBox ID="ListBox1" runat="server">
            <asp:ListItem Value="0a">US</asp:ListItem>
            <asp:ListItem Value="0b">HK</asp:ListItem>
            <asp:ListItem Value="0c">TW</asp:ListItem>
        </asp:ListBox>
    
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
    
    </div>
    </form>
</body>
</html>
