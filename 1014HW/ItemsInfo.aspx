<%@ Page Title="" Language="C#" MasterPageFile="~/Home1.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="Main" Runat="Server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="title_id" DataSourceID="SqlDataSource1" EnableModelValidation="True">
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
            unit:
            <asp:TextBox ID="unitTextBox" runat="server" Text='<%# Bind("unit") %>' />
            <br />
            price:
            <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
            <br />
            note:
            <asp:TextBox ID="noteTextBox" runat="server" Text='<%# Bind("note") %>' />
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
            unit:
            <asp:TextBox ID="unitTextBox" runat="server" Text='<%# Bind("unit") %>' />
            <br />
            price:
            <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
            <br />
            note:
            <asp:TextBox ID="noteTextBox" runat="server" Text='<%# Bind("note") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
        </InsertItemTemplate>
        <ItemTemplate>
&nbsp;<asp:Label ID="titleLabel" runat="server" Text='<%# Bind("title") %>' />
            <br />
            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("title_id", "coverss/{0}.jpg") %>' />
            <br />
            商品編號:
            <asp:Label ID="title_idLabel" runat="server" Text='<%# Eval("title_id") %>' />
            <br />
            <br />
            類別:
            <asp:Label ID="typeLabel" runat="server" Text='<%# Bind("type") %>' />
            <br />
            單位 
            <asp:Label ID="unitLabel" runat="server" Text='<%# Bind("unit") %>' />
            <br />
            價錢:
            <asp:Label ID="priceLabel" runat="server" Text='<%# Bind("price", "{0:C}") %>' />
            <br />
            &nbsp;<asp:Label ID="noteLabel" runat="server" Text='<%# Bind("note") %>' />
            <br />

        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:藏韻好物ConnectionString %>" SelectCommand="SELECT title_id, title, type, unit, price, note FROM 藏物商品 WHERE (title_id = @tid)">
        <SelectParameters>
            <asp:QueryStringParameter Name="tid" QueryStringField="qid" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

