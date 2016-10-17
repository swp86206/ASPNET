<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="Main" Runat="Server">
   
    <h3>首頁 ！！！</h3>
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="title_id" DataSourceID="SqlDataSource1">
         <Columns>
             <asp:BoundField DataField="title_id" HeaderText="title_id" ReadOnly="True" SortExpression="title_id" />
             <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
             <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
             <asp:BoundField DataField="pubdate" HeaderText="pubdate" SortExpression="pubdate" />
         </Columns>
</asp:GridView>
    


<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pubsConnectionString %>" SelectCommand="SELECT [title_id], [title], [price], [pubdate] FROM [titles]"></asp:SqlDataSource>
    


</asp:Content>

