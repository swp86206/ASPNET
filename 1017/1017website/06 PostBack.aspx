<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    //Page_Load 每點一次,就再跑一次
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack) //第一次 Page_Load
        {
            //從資料庫讀取
            DropDownList1.Items.Add("US");
            DropDownList1.Items.Add("TW");
            DropDownList1.Items.Add("HK");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = DropDownList1.SelectedItem.Text;
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
    
        <asp:DropDownList ID="DropDownList1" runat="server" >
        </asp:DropDownList>
    
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    
    </div>
    </form>
</body>
</html>
