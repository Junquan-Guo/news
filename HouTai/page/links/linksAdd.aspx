<%@ Page Language="C#" AutoEventWireup="true" CodeFile="linksAdd.aspx.cs" Inherits="page_links_linksAdd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>添加链接</title>
    <link rel="stylesheet" href="../../layui/css/layui.css" media="all" />
    <link rel="stylesheet" href="../../layui/font/font_eolqem241z66flxr.css" media="all" />
</head>
<body class="childrenBody">
    <form class="layui-form" style="width: 80%;" runat="server">
        <div class="layui-form-item">
            <asp:Label ID="Label1" runat="server" Text="网站名称" class="layui-form-label"></asp:Label>
            <div class="layui-input-block">
                <asp:TextBox ID="TextBox1" runat="server" class="layui-input linksName" lay-verify="required" placeholder="请输入网站名称"></asp:TextBox>
            </div>
        </div>
        <div class="layui-form-item">
            <asp:Label ID="Label2" runat="server" Text="网站地址" class="layui-form-label"></asp:Label>
            <div class="layui-input-block">
                <input type="tel" class="layui-input linksUrl" lay-verify="required|url" placeholder="请输入网站地址"/>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-inline">
                <asp:Label ID="Label3" runat="server" Text="展示位置" class="layui-form-label"></asp:Label>
                <div class="layui-input-block">
                    <asp:CheckBox ID="CheckBox1" runat="server" name="homePage" class="homePage" text="首页" checked=""/>
                    <asp:CheckBox ID="CheckBox2" runat="server" name="subPage" class="subPage" text="子页"/>
                </div>
            </div>
            <div class="layui-inline">
                <asp:Label ID="Label4" runat="server" Text="发布时间" class="layui-form-label"></asp:Label>
                <div class="layui-input-inline">
                    <asp:TextBox ID="TextBox2" runat="server" class="layui-input linksTime" lay-verify="date" onclick="layui.laydate({ elem: this })"></asp:TextBox>
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <asp:Label ID="Label5" runat="server" Text="站长邮箱" class="layui-form-label"></asp:Label>
            <div class="layui-input-block">
                <asp:TextBox ID="TextBox3" runat="server" class="layui-input masterEmail" lay-verify="email" placeholder="请输入网站地址"></asp:TextBox>
            </div>
        </div>
        <div class="layui-form-item">
            <asp:Label ID="Label6" runat="server" Text="站点描述" class="layui-form-label"></asp:Label>
            <div class="layui-input-block">
                <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" placeholder="请输入站点描述" class="layui-textarea linksDesc"></asp:TextBox>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-block">
                <asp:Button ID="Button1" runat="server" Text="立即提交" class="layui-btn" lay-submit="" lay-filter="addLinks"/>
                <asp:Button ID="Button2" runat="server" Text="重置" class="layui-btn layui-btn-primary"/>
            </div>
        </div>
    </form>
    <script type="text/javascript" src="../../layui/layui.js"></script>
    <script type="text/javascript" src="linksAdd.js"></script>
</body>
</html>
