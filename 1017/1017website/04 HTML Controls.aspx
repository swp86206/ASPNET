<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">

    Protected Sub TextBox1_TextChanged(sender As Object, e As EventArgs)

    End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="姓名"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <input id="Text1" type="text" />&nbsp;
        <br />
        <asp:Label ID="Label2" runat="server" Text="國家"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <select id="Select1" name="D1">
            <option>USA</option>
            <option>Taiwan</option>
            <option>Japan</option>
        </select><br />
        <input id="Submit1" type="submit" value="submit" /><br />
    
    </div>
    </form>
</body>
</html>
