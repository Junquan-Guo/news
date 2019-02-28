<%@ Page Language="C#" AutoEventWireup="true" CodeFile="messageReply.aspx.cs" Inherits="page_message_messageReply" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>消息回复</title>
    <link rel="stylesheet" href="../../layui/css/layui.css" media="all" />
    <link rel="stylesheet" href="../../layui/font/font_eolqem241z66flxr.css" media="all" />
    <link rel="stylesheet" href="../../css/message.css" media="all" />
</head>
<body class="childrenBody">
    <form class="layui-form" runat="server">
        <div class="replay_edit">
            <asp:TextBox ID="msgReply" runat="server" TextMode="MultiLine" class="layui-textarea"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="发送" class="layui-btn send_msg"/>
        </div>
        <table class="layui-table msg_box" lay-skin="line">
            <colgroup>
                <col width="50%"/>
                <col width="30%"/>
                <col />
            </colgroup>
            <tbody class="msgReplyHtml"></tbody>
        </table>
    </form>
    <script type="text/javascript" src="../../layui/layui.js"></script>
    <script type="text/javascript" src="message.js"></script>
</body>
</html>
