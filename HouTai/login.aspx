<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>管理员登录</title>
    <link href="css/page.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <form id="form1" runat="server">
        <!-- 登录body -->
        <div class="logDiv">
            <img class="logBanner" src="images/logBanner.jpg" />
            <div class="logGet">
                <!-- 头部提示信息 -->
                <div class="logD logDtip">
                    <p class="p1">管理员登录/<span>LOGIN</span></p>
                </div>
                <!-- 输入框 -->
                <div class="lgD">
                    <img class="img1" src="images/logName.png" />
                    <asp:TextBox ID="txtmanagename" runat="server" placeholder="输入用户名"></asp:TextBox>
                </div>
                <div class="lgD">
                    <img class="img1" src="images/logPwd.png" />
                    <asp:TextBox ID="txtmanagepassword" runat="server" placeholder="输入用户密码" TextMode="Password"></asp:TextBox>

                </div>
                <div class="logC" usesubmitbehavior="False">
                    <asp:Button ID="btnlogin" runat="server" CssClass="btn" Text="登 录" />
                    <asp:Button ID="btncancle" runat="server" onclick="btncancle_Click" CssClass="btn" Text="重 置" />
                </div>
            </div>
        </div>
        <!-- 登录body  end -->

        <!-- 登录页面底部 -->
        <div class="logFoot">
            <p class="p1">版权所有：高校新闻社</p>
            <p class="p2">© 2018 GAOXIAO.COM</p>
        </div>
        <!-- 登录页面底部end -->
    </form>
</body>
</html>

