<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        Response.Write(Calendar1.SelectedDate.ToShortDateString());
    }

    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        // Response.Write(e.Day.Date.ToShortDateString()+","); 共顯示出 7*6 = 42次 
        if(e.Day.Date == new DateTime(2016, 10, 10))
        {

            e.Cell.Text = "";

            //Label lb2 = new Label();
            //lb2.Text = "<br/>";
            //e.Cell.Controls.Add(lb2);

            Image flag = new Image();
            flag.ImageUrl = "image/flag.jpg";
            e.Cell.Controls.Add(flag);


            Label lb1 = new Label();
            lb1.Text = "<br/>雙十節";

            e.Cell.Controls.Add(lb1);


        }
        // e.Cell.Text = "雙十節";
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" OnDayRender="Calendar1_DayRender" ></asp:Calendar>
            <br />
        </p>
        <p>
            &nbsp;</p>
    <div>
    
    </div>
    </form>
</body>
</html>
