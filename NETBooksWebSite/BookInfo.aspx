<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="Main" Runat="Server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="title_id" DataSourceID="SqlDataSource1">
    <EditItemTemplate>
        title_id:
        <asp:Label ID="title_idLabel1" runat="server" Text='<%# Eval("title_id") %>' />
        <br />
        title:
        <asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' />
        <br />
        type:
        <asp:TextBox ID="typeTextBox" runat="server" Text='<%# Bind("type") %>' />
        <br />
        price:
        <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
        <br />
        notes:
        <asp:TextBox ID="notesTextBox" runat="server" Text='<%# Bind("notes") %>' />
        <br />
        pubdate:
        <asp:TextBox ID="pubdateTextBox" runat="server" Text='<%# Bind("pubdate") %>' />
        <br />
        pub_name:
        <asp:TextBox ID="pub_nameTextBox" runat="server" Text='<%# Bind("pub_name") %>' />
        <br />
        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
    </EditItemTemplate>
    <InsertItemTemplate>
        title_id:
        <asp:TextBox ID="title_idTextBox" runat="server" Text='<%# Bind("title_id") %>' />
        <br />
        title:
        <asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' />
        <br />
        type:
        <asp:TextBox ID="typeTextBox" runat="server" Text='<%# Bind("type") %>' />
        <br />
        price:
        <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
        <br />
        notes:
        <asp:TextBox ID="notesTextBox" runat="server" Text='<%# Bind("notes") %>' />
        <br />
        pubdate:
        <asp:TextBox ID="pubdateTextBox" runat="server" Text='<%# Bind("pubdate") %>' />
        <br />
        pub_name:
        <asp:TextBox ID="pub_nameTextBox" runat="server" Text='<%# Bind("pub_name") %>' />
        <br />
        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
    </InsertItemTemplate>
    <ItemTemplate>
        <asp:Label ID="titleLabel" runat="server" Font-Size="20pt" Text='<%# Bind("title") %>' />
        <br />
        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("title_id", "covers/{0}.jpg") %>' Width="150px" />
        <br />
        編號:
        <asp:Label ID="title_idLabel" runat="server" Text='<%# Eval("title_id") %>' />
        <br />
        類型:
        <asp:Label ID="typeLabel" runat="server" Text='<%# Bind("type") %>' />
        <br />
        pubdate:
        <asp:Label ID="pubdateLabel" runat="server" Text='<%# Bind("pubdate") %>' />
        <br />
        pub_name:
        <asp:Label ID="pub_nameLabel" runat="server" Text='<%# Bind("pub_name") %>' />
        <br />
        price:
        <asp:Label ID="priceLabel" runat="server" Text='<%# Bind("price") %>' />
        <br />
        <br />
        notes:
        <asp:Label ID="notesLabel" runat="server" Text='<%# Bind("notes") %>' />
        <br />
        <br />

    </ItemTemplate>
</asp:FormView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pubsConnectionString %>" SelectCommand="SELECT titles.title_id, titles.title, titles.type, titles.price, titles.notes, titles.pubdate, publishers.pub_name FROM titles INNER JOIN publishers ON titles.pub_id = publishers.pub_id WHERE (titles.title_id = @tid)">
    <SelectParameters>
        <asp:QueryStringParameter Name="tid" QueryStringField="qid" />
    </SelectParameters>
</asp:SqlDataSource>
</asp:Content>

