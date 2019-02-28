<%@ Page Language="C#" AutoEventWireup="true" CodeFile="changePwd.aspx.cs" Inherits="page_user_changePwd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>修改密码</title>
    <link rel="stylesheet" href="../../layui/css/layui.css" media="all" />
    <link rel="stylesheet" href="../../css/user.css" media="all" />
</head>
<body class="childrenBody">
    <form class="layui-form changePwd" runat="server">
        <div style="margin: 0 0 15px 110px; color: #f00;">
            <asp:Label ID="hint1" runat="server" Text="旧密码请输入“123456”，新密码必须两次输入一致才能提交"></asp:Label></div>
        <div class="layui-form-item">
             <asp:Label ID="Label1" runat="server" Text="用户名" class="layui-form-label"></asp:Label>
            <div class="layui-input-block">
                <asp:TextBox ID="managename1" runat="server" Text="登录后显示用户名！"  disabled="disabled" class="layui-input layui-disabled"></asp:TextBox>
            </div>
        </div>
        <div class="layui-form-item">
            <asp:Label ID="Label2" runat="server" Text="旧密码" class="layui-form-label"></asp:Label>
            <div class="layui-input-block">
                <asp:TextBox ID="password1" runat="server" TextMode="Password" placeholder="请输入旧密码" lay-verify="required|oldPwd" class="layui-input pwd"></asp:TextBox>
            </div>
        </div>
        <div class="layui-form-item">
            <asp:Label ID="Label3" runat="server" Text="新密码" class="layui-form-label"></asp:Label>
            <div class="layui-input-block">
                <asp:TextBox ID="oldPwd" runat="server" TextMode="Password" placeholder="请输入新密码" lay-verify="required|newPwd" class="layui-input pwd"></asp:TextBox>

            </div>
        </div>
        <div class="layui-form-item">
            <asp:Label ID="Label4" runat="server" Text="确认密码" class="layui-form-label"></asp:Label>
            <div class="layui-input-block">
                <asp:TextBox ID="password2" runat="server" TextMode="Password" placeholder="请确认密码" lay-verify="required|confirmPwd" class="layui-input pwd" ></asp:TextBox>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-block">
                <asp:Button ID="Button1" runat="server" Text="立即修改" class="layui-btn" lay-submit="" lay-filter="changePwd" />
                <asp:Button ID="Button2" runat="server" Text="重置" class="layui-btn layui-btn-primary" />
            </div>
        </div>
    </form>
    <script type="text/javascript" src="../../layui/layui.js"></script>
    <script type="text/javascript" src="address.js"></script>
    <script type="text/javascript" src="user.js"></script>
</body>
</html>
