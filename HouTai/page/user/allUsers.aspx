<%@ Page Language="C#" AutoEventWireup="true" CodeFile="allUsers.aspx.cs" Inherits="page_user_allUsers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
        <style type="text/css">
      .test
            {
                font-size:24px;
            }
    </style>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>用户总数</title>
    <link rel="stylesheet" href="../../layui/css/layui.css" media="all" />
    <link rel="stylesheet" href="../../layui/font/font_eolqem241z66flxr.css" media="all" />
    <link rel="stylesheet" href="../../css/user.css" media="all" />
</head>
<body class="childrenBody">
    <form id="Form1" runat="server">
        <blockquote class="layui-elem-quote news_search">
            <div class="layui-inline">
                <div class="layui-input-inline">
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="请输入用户名关键字" class="layui-input search_input"></asp:TextBox>
                </div>
                <asp:Button ID="Button1" runat="server" Text="查询" class="layui-btn " OnClick="Button6_Click"/>
            </div>
            <div class="layui-inline">
                <asp:Button ID="Button2" runat="server" Text="分组查询" class="layui-btn layui-btn-normal usersAdd_btn" />
            </div>
            <div class="layui-inline">
                <asp:Button ID="Button3" runat="server" Text="批量删除" class="layui-btn layui-btn-danger batchDel" OnClick="Button3_Click" OnClientClick="return confirm('是否批量删除')" />
            </div>
        </blockquote>
        <div class="layui-form news_list">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:newsConnectionString %>" SelectCommand="SELECT * FROM [users]" DeleteCommand="DELETE FROM [users] WHERE [userid] = @userid" InsertCommand="INSERT INTO [users] ([username], [password], [sex], [email], [phone], [birthday], [introduce], [region], [grouping]) VALUES (@username, @password, @sex, @email, @phone, @birthday, @introduce, @region, @grouping)" UpdateCommand="UPDATE [users] SET [username] = @username, [password] = @password, [sex] = @sex, [email] = @email, [phone] = @phone, [birthday] = @birthday, [introduce] = @introduce, [region] = @region, [grouping] = @grouping WHERE [userid] = @userid">
                <DeleteParameters>
                    <asp:Parameter Name="userid" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="username" Type="String" />
                    <asp:Parameter Name="password" Type="String" />
                    <asp:Parameter Name="sex" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="phone" Type="String" />
                    <asp:Parameter Name="birthday" Type="DateTime" />
                    <asp:Parameter Name="introduce" Type="String" />
                    <asp:Parameter Name="region" Type="String" />
                    <asp:Parameter Name="grouping" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="username" Type="String" />
                    <asp:Parameter Name="password" Type="String" />
                    <asp:Parameter Name="sex" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="phone" Type="String" />
                    <asp:Parameter Name="birthday" Type="DateTime" />
                    <asp:Parameter Name="introduce" Type="String" />
                    <asp:Parameter Name="region" Type="String" />
                    <asp:Parameter Name="grouping" Type="String" />
                    <asp:Parameter Name="userid" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="userid" DataSourceID="SqlDataSource1" AllowPaging="True" OnPageIndexChanged="GridView1_PageIndexChanged" BorderColor="#E4E3E0" Width="100%" PageSize="7" >
                <Columns>
                    <asp:TemplateField HeaderText="全选">
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" ToolTip='<%# Bind("userid") %>' OnCheckedChanged="CheckBox1_CheckedChanged" />
                        </ItemTemplate>
                        <HeaderStyle Height="50px" Width="5%" />
                        <ItemStyle Height="40px" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="username" HeaderText="用户名" SortExpression="username">
                        <HeaderStyle Width="10%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="email" HeaderText="邮箱" SortExpression="email">
                        <HeaderStyle Width="10%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="sex" HeaderText="性别" SortExpression="sex">
                        <HeaderStyle Width="5%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="grouping" HeaderText="会员等级" SortExpression="grouping">
                        <HeaderStyle Width="10%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="introduce" HeaderText="介绍" SortExpression="introduce">
                        <HeaderStyle Width="35%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="region" HeaderText="所在地" SortExpression="region">
                        <HeaderStyle Width="15%" />
                    </asp:BoundField>
                    <asp:TemplateField ShowHeader="False" HeaderText="删除操作">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton3" runat="server" class="layui-btn layui-btn-danger layui-btn-mini links_del" CausesValidation="False" CommandName="Delete"  OnClientClick="return confirm('是否删除')"><i class="layui-icon"></i>删除</asp:LinkButton>
                        </ItemTemplate>
                        <HeaderStyle Width="5%" />
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False" HeaderText="编辑操作">
                        <EditItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" class="layui-btn layui-btn-mini links_edit" CausesValidation="True" CommandName="Update" Text="更新"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消"></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" class="layui-btn layui-btn-mini links_edit" OnClick="LinkButton1_Click" ToolTip='<%# Bind("userid") %>'><i class="iconfont icon-edit"></i>编辑</asp:LinkButton>
                        </ItemTemplate>
                        <HeaderStyle Width="5%" />
                    </asp:TemplateField>
                </Columns>
                <HeaderStyle Font-Size="10px" Height="10px" CssClass="test" />
                <PagerStyle Font-Size="8px" HorizontalAlign="Center" Width="100%"   CssClass="bubufxPagerCss" />
            </asp:GridView>
            <asp:Label ID="Label2" runat="server"></asp:Label>
            <br />
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="返回第一页" class="layui-btn" Visible="False" />
            <asp:Button ID="Button5" runat="server" Text="返回上一页" class="layui-btn layui-btn-primary" OnClick="Button5_Click" Visible="False" />
            <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
        </div>

    </form>
    <script type="text/javascript" src="../../layui/layui.js"></script>
    <script type="text/javascript" src="allUsers.js"></script>
</body>
</html>
