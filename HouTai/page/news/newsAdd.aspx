<%@ Page Language="C#" AutoEventWireup="true" CodeFile="newsAdd.aspx.cs" Inherits="page_news_newsAdd" %>

<%@ Register Assembly="CuteEditor" Namespace="CuteEditor" TagPrefix="CE" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>添加新闻</title>
    <link rel="stylesheet" href="../../layui/css/layui.css" media="all" />
    <link rel="stylesheet" href="../../layui/font/font_eolqem241z66flxr.css" media="all" />
</head>
<body class="childrenBody">
    <form id="Form1" class="layui-form" runat="server">
        <div class="form-item">
            <asp:Label ID="Label1" runat="server" Text="文章标题" class="layui-form-label"></asp:Label>
            <div class="layui-input-block">
                <asp:TextBox ID="TextBox1" runat="server" class="layui-input newsName" lay-verify="required" placeholder="请输入文章标题"></asp:TextBox>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-inline">
                <asp:Label ID="Label2" runat="server" Text="自定义属性" class="layui-form-label"></asp:Label>
                <div class="layui-input-block">
                    <asp:CheckBox ID="CheckBox1" runat="server" name="tuijian" class="tuijian" text="推荐"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:CheckBox ID="CheckBox2" runat="server" name="shenhe" class="newsStatus" text="审核"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:CheckBox ID="CheckBox3" runat="server" name="show" class="isShow" text="展示"/>
                </div>
            </div>
            <div class="layui-inline">
                <asp:Label ID="Label3" runat="server" Text="文章作者" class="layui-form-label"></asp:Label>
                <div class="layui-input-inline">
                    <asp:TextBox ID="TextBox2" runat="server" class="layui-input newsAuthor" lay-verify="required" placeholder="请输入文章作者"></asp:TextBox>
                </div>
            </div>
            <div class="layui-inline">
                <asp:Label ID="Label4" runat="server" Text="发布时间" class="layui-form-label"></asp:Label>
                <div class="layui-input-inline">
                    <asp:TextBox ID="TextBox3" runat="server" class="layui-input newsTime" lay-verify="date" onclick="layui.laydate({ elem: this })"></asp:TextBox>
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-inline">
                <asp:Label ID="Label5" runat="server" Text="文章类型" class="layui-form-label"></asp:Label>
                <div class="layui-input-inline">
                    <asp:DropDownList ID="drpfiletype" runat="server" CssClass="insertdrop"
                        DataSourceID="SqlDataSource1" DataTextField="typename" DataValueField="typeid">
                    </asp:DropDownList>

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                        ConnectionString="<%$ ConnectionStrings:newsConnectionString %>"
                        SelectCommand="SELECT * FROM [type]"></asp:SqlDataSource>
                </div>
            </div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <div class="layui-inline">
                <asp:Label ID="Label6" runat="server" Text="关键字" class="layui-form-label"></asp:Label>
                <div class="layui-input-block">
                    <asp:TextBox ID="TextBox4" runat="server" class="layui-input" placeholder="请输入文章关键字"></asp:TextBox>
                </div>
            </div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <div class="layui-inline">
                <asp:Label ID="Label10" runat="server" Text="新闻来源" class="layui-form-label"></asp:Label>
                <div class="layui-input-block">
                    <asp:TextBox ID="TextBox8" runat="server" class="layui-input" placeholder="请输入来源"></asp:TextBox>
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <asp:Label ID="Label9" runat="server" Text="新闻封面" class="layui-form-label"></asp:Label>
            <div class="layui-input-block">
                <asp:Image ID="Image1" runat="server" Height="80px" Width="150px" />
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="显示封面" Width="135px" />
                <asp:Label ID="Label11" runat="server" Text=""></asp:Label>
                <asp:Label ID="Label12" runat="server" Text="" Visible="false"></asp:Label>
            </div>
        </div>
        <div class="layui-form-item">
            <asp:Label ID="Label7" runat="server" Text="内容摘要" class="layui-form-label"></asp:Label>
            <div class="layui-input-block">
                <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine" placeholder="请输入内容摘要" class="layui-textarea"></asp:TextBox>
            </div>
        </div>
        <div class="layui-form-item">
            <asp:Label ID="Label8" runat="server" Text="文章内容" class="layui-form-label"></asp:Label>
            <div class="layui-input-block">
                <ce:editor runat="server" ID="Editor1" Width="100%" Height="600px"></ce:editor>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-block">
                <asp:Button ID="Button1" runat="server" Text="保存" class="layui-btn" lay-submit="" lay-filter="addNews" OnClick="Button1_Click"/>
                <asp:Button ID="Button2" runat="server" Text="重置" class="layui-btn layui-btn-primary" />
                <asp:Button ID="Button3" runat="server" class="layui-btn" OnClick="Button3_Click" Text="提交" OnClientClick="return confirm('确认提交?')" />
            </div>
        </div>
    </form>
    <script type="text/javascript" src="../../layui/layui.js"></script>
    <script type="text/javascript" src="newsAdd.js"></script>
</body>
</html>
