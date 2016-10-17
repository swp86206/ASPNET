<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Write ( "button1 "+ "<hr/>");
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Write ( "Linkbutton1 "+ "<hr/>");
    }

    protected void search(object sender, ImageClickEventArgs e)
    {
        Response.Write ( "Searchbutton1 "+ "<hr/>");
    }
    //protected void ALLlooking(object sender, ImageClickEventArgs e)
    //{
    //    Response.Write ( "ALLlooking "+ "<hr/>" +"<hr/>");
    //}
    protected void ALLlooking1(object sender, EventArgs e)
    {
        if (sender is Button)
        {
            Button btn = (Button)sender;
            Response.Write("AllButtonClick:" + btn.ID+"<hr/>");
        }
        if (sender is LinkButton)
        {
            LinkButton btn = (LinkButton)sender;
            Response.Write("AllButtonClick:" + btn.ID+"<hr/>");
        }
        if (sender is ImageButton)
        {
            ImageButton btn = (ImageButton)sender;
            Response.Write("AllButtonClick:" + btn.ID+"<hr/>");
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
    <div>
    
        <asp:Button ID="Button1" runat="server" OnClick="ALLlooking1" Text="Button" />
        <br />
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="ALLlooking1">LinkButton</asp:LinkButton>
        <br />
        <asp:ImageButton ID="ImageButton1" runat="server" OnClick="ALLlooking1" ImageUrl="~/image/search1.jpg" />
    
        <br />
    
        <asp:Button ID="Button2_QQ" runat="server" OnClick="ALLlooking1" Text="Button" />
    
    </div>
    </form>
</body>
</html>
