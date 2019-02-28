<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addUser.aspx.cs" Inherits="page_user_addUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>会员添加</title>
    <link rel="stylesheet" href="../../layui/css/layui.css" media="all" />
    <style type="text/css">
        .layui-form-item .layui-inline {
            width: 49%;
            float: left;
            margin-right: 0;
            top: 0px;
            left: 15px;
        }
    </style>
</head>
<body class="childrenBody">
    <form id="Form1" class="layui-form" style="width: 80%;" runat="server">
        <div class="layui-form-item">
            <asp:Label ID="Label1" runat="server" Text="登录名" class="layui-form-label" ></asp:Label>
            <div class="layui-input-block">
                <asp:TextBox ID="TextBox1" runat="server" class="layui-input userName" lay-verify="required" placeholder="请输入登录名" Width="783px" ReadOnly="True"></asp:TextBox>
            </div>
        </div>
        <div class="layui-form-item">
            <asp:Label ID="Label2" runat="server" Text="邮箱" class="layui-form-label"></asp:Label>
            <div class="layui-input-block">
                <asp:TextBox ID="TextBox2" runat="server" class="layui-input userEmail" lay-verify="email" placeholder="请输入邮箱" ReadOnly="True"></asp:TextBox>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-inline">
                <asp:Label ID="Label3" runat="server" Text="性别" class="layui-form-label"></asp:Label>
                <div class="layui-input-block userSex">
                    <asp:RadioButton ID="RadioButton1" runat="server" GroupName="sex" Text="男" title="男" Checked="True" Enabled="False"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="sex" Text="女" title="女" Enabled="False" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RadioButton3" runat="server" GroupName="sex" Text="保密" title="保密" Enabled="False" />
                </div>
            </div>
            <div class="layui-inline">
                <asp:Label ID="Label4" runat="server" Text="会员等级" class="layui-form-label"></asp:Label>
                <div class="layui-input-block">
                    <select name="userGrade" class="userGrade" lay-filter="userGrade">
                        <option value="0">普通会员</option>
                        <option value="1">初级会员</option>
                        <option value="2">中级会员</option>
                        <option value="3">高级会员</option>
                        <option value="4">超级管理员</option>
                    </select>
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <asp:Label ID="Label6" runat="server" Text="介绍" class="layui-form-label" ></asp:Label>
            <div class="layui-input-block">
                <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" placeholder="请输入个人介绍" class="layui-textarea linksDesc" ReadOnly="True"></asp:TextBox>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-block">
                <asp:Button ID="Button1" runat="server" Text="立即提交" class="layui-btn" lay-submit="" lay-filter="addUser"/>
                <asp:Button ID="Button2" runat="server" Text="重置" class="layui-btn layui-btn-primary"/>

            </div>
        </div>
    </form>
    <script type="text/javascript" src="../../layui/layui.js"></script>
    <script type="text/javascript" src="addUser.js"></script>
</body>
</html>

