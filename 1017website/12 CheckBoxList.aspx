<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < CheckBoxList1.Items.Count; i++) //依序確認是否有被選到
        {
            if (CheckBoxList1.Items[i].Selected)  // Selected 是布林值 true/false
            {
                Response.Write(CheckBoxList1.Items[i].Text + "<br/>"+ "<hr/>");
            }
        }
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatColumns="3" RepeatDirection="Horizontal">
            <asp:ListItem>TW</asp:ListItem>
            <asp:ListItem>USA</asp:ListItem>
            <asp:ListItem>UK</asp:ListItem>
            <asp:ListItem>HK</asp:ListItem>
            <asp:ListItem>CN</asp:ListItem>
            <asp:ListItem>ID</asp:ListItem>
            <asp:ListItem>TL</asp:ListItem>
        </asp:CheckBoxList>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        <br />
    <div>
    
    </div>
    </form>
</body>
</html>
