<%@ Page Language="C#" AutoEventWireup="true" CodeFile="newsList.aspx.cs" Inherits="page_news_newsList" %>

<%@ Register Assembly="CuteEditor" Namespace="CuteEditor" TagPrefix="CE" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>新闻列表</title>
    <link rel="stylesheet" href="../../layui/css/layui.css" media="all" />
    <link rel="stylesheet" href="../../layui/font/font_eolqem241z66flxr.css" media="all" />
    <link rel="stylesheet" href="../../css/news.css" media="all" />
</head>
<body class="childrenBody">
    <form id="Form1" class="layui-form" runat="server">
        <blockquote class="layui-elem-quote news_search">
            <div class="layui-inline">
                <div class="layui-input-inline">
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="请输入关键字" class="layui-input search_input"></asp:TextBox>
                </div>
                <asp:Button ID="Button1" runat="server" Text="查询" class="layui-btn search_btn" />
            </div>

            <div class="layui-inline">
                <a class="layui-btn layui-btn-normal newsAdd_btn">
                    <asp:Label ID="Label1" runat="server" Text="增加新闻"></asp:Label></a>

            </div>
            <div class="layui-inline">
                <asp:Button ID="Button3" runat="server" Text="推荐文章" class="layui-btn recommend" Style="background-color: #5FB878" />
            </div>
            <div class="layui-inline">
                <asp:Button ID="Button4" runat="server" Text="审核文章" class="layui-btn audit_btn" />
            </div>
            <div class="layui-inline">
                <asp:Button ID="Button5" runat="server" Text="批量删除" class="layui-btn layui-btn-danger batchDel" OnClick="Button5_Click" OnClientClick="return confirm('是否批量删除')" />
            </div>
        </blockquote>
        <div class="layui-form news_list" id="page">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:newsConnectionString %>" DeleteCommand="DELETE FROM [files] WHERE [fileid] = @fileid" InsertCommand="INSERT INTO [files] ([filename], [typeid], [filecontent], [source], [publishdate], [visitnum], [redact], [abstract], [keyword], [pic]) VALUES (@filename, @typeid, @filecontent, @source, @publishdate, @visitnum, @redact, @abstract, @keyword, @pic)" SelectCommand="SELECT * FROM [files]" UpdateCommand="UPDATE [files] SET [filename] = @filename, [typeid] = @typeid, [filecontent] = @filecontent, [source] = @source, [publishdate] = @publishdate, [visitnum] = @visitnum, [redact] = @redact, [abstract] = @abstract, [keyword] = @keyword, [pic] = @pic WHERE [fileid] = @fileid">
                <DeleteParameters>
                    <asp:Parameter Name="fileid" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="filename" Type="String" />
                    <asp:Parameter Name="typeid" Type="Int32" />
                    <asp:Parameter Name="filecontent" Type="String" />
                    <asp:Parameter Name="source" Type="String" />
                    <asp:Parameter Name="publishdate" Type="DateTime" />
                    <asp:Parameter Name="visitnum" Type="Int32" />
                    <asp:Parameter Name="redact" Type="String" />
                    <asp:Parameter Name="abstract" Type="String" />
                    <asp:Parameter Name="keyword" Type="String" />
                    <asp:Parameter Name="pic" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="filename" Type="String" />
                    <asp:Parameter Name="typeid" Type="Int32" />
                    <asp:Parameter Name="filecontent" Type="String" />
                    <asp:Parameter Name="source" Type="String" />
                    <asp:Parameter Name="publishdate" Type="DateTime" />
                    <asp:Parameter Name="visitnum" Type="Int32" />
                    <asp:Parameter Name="redact" Type="String" />
                    <asp:Parameter Name="abstract" Type="String" />
                    <asp:Parameter Name="keyword" Type="String" />
                    <asp:Parameter Name="pic" Type="String" />
                    <asp:Parameter Name="fileid" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="fileid" DataSourceID="SqlDataSource1" OnRowDeleted="GridView1_RowDeleted" OnRowDeleting="GridView1_RowDeleting" OnPageIndexChanged="GridView1_PageIndexChanged" BorderColor="#E4E3E0" Width="100%" PageSize="7">
                <Columns>
                    <asp:TemplateField HeaderText="全选">
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" ToolTip='<%# Bind("fileid") %>' OnCheckedChanged="CheckBox1_CheckedChanged" />
                        </ItemTemplate>
                        <HeaderStyle Width="5%" Height="50px" HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle Height="120px" HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="封面" SortExpression="pic">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("pic") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# Eval("pic") %>' Width="100px" />
                        </ItemTemplate>
                        <HeaderStyle Width="10%" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="filename" HeaderText="新闻标题" SortExpression="filename">
                        <HeaderStyle Width="12%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="publishdate" HeaderText="发布时间" SortExpression="publishdate">
                        <HeaderStyle Width="10%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="redact" HeaderText="发布人" SortExpression="redact">
                        <HeaderStyle Width="5%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="abstract" HeaderText="摘要" SortExpression="abstract">
                        <HeaderStyle Width="40%" />
                    </asp:BoundField>
                    <asp:TemplateField ShowHeader="False" HeaderText="操作">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server"  Cssclass="layui-btn layui-btn-mini links_edit" CausesValidation="False"  OnClick="LinkButton1_Click" ToolTip='<%# Eval("fileid") %>'><i class="iconfont icon-edit"></i>编辑</asp:LinkButton>
                             &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" class="layui-btn layui-btn-danger layui-btn-mini links_del" CausesValidation="False" CommandName="Delete" OnClientClick="return confirm('是否删除')" ><i class="layui-icon"></i>删除</asp:LinkButton>
                        </ItemTemplate>
                        <HeaderStyle Width="13%" />
                    </asp:TemplateField>
                </Columns>
                <HeaderStyle Font-Size="10px" Height="10px" />
                <PagerStyle Font-Size="8px" HorizontalAlign="Center" Width="100%"   CssClass="bubufxPagerCss" />
            </asp:GridView>
        </div>
    </form>
    <script type="text/javascript" src="../../layui/layui.js"></script>
    <script type="text/javascript" src="newsList.js"></script>
</body>
</html>
