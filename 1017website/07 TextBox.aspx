<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Write(TextBox1.Text + "<hr/>");
        Response.Write(TextBox2.Text.Replace("\n","<br/>") + "<hr/>");
        Response.Write(TextBox3.Text + "<hr/>");
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
    
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged" Height="69px" TextMode="MultiLine"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox3" runat="server" style="margin-bottom: 3px" TextMode="Password"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        <br />
    
    </div>
    </form>
</body>
</html>
