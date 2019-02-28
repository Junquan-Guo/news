<%@ Page Language="C#" Inherits="CuteEditor.EditorUtilityPage" %>
<%@import Namespace="System.IO"%>
<%@ Register TagPrefix="CE" namespace="CuteEditor.ImageEditor" assembly = "CuteEditor.ImageEditor" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<html xmlns="http://www.w3.org/1999/xhtml">
	<head runat="server" ID="Head1">
		<title>[[ImageEditor]] 
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</title>
		<meta http-equiv="Cache-Control" content="no-cache" />
		<meta http-equiv="Pragma" content="no-cache" />
		<meta http-equiv="EXPIRES" content="0" />
		
		<script runat="server">
			void Page_Load(object sender, System.EventArgs e)
			{
				bool isexist = false;
				
				string filename = "~/Uploads/cindy_crawford.jpg";			
				
				string tempFilesPath = "~/CuteSoft_Client/CuteEditor/ImageEditor/TempFiles/";
				
				if(!System.IO.Directory.Exists(HttpContext.Current.Server.MapPath(tempFilesPath)))
					System.IO.Directory.CreateDirectory((HttpContext.Current.Server.MapPath(tempFilesPath)));
					
				ImageEditor1.TempImagePath=tempFilesPath;				
				
				if(System.IO.File.Exists(HttpContext.Current.Server.MapPath(filename)))
				{
					isexist = true;
				}
				if(isexist)
				{
					FileInfo f = new FileInfo(HttpContext.Current.Server.MapPath(filename));
					ImageEditor1.GraphicsPath=f.Directory.Name;
					ImageEditor1.ImageUrl=filename;
				}
				
			}
		</script>
		<style type="text/css">
			body{margin: 0px;background-color: #D4D0C8;}
			.window { background-color: #D4D0C8; border-color: #f0f0f0 #606060 #404040 #d0d0d0; border-style: solid; border-width: 2px; margin: 0px; padding: 2px; position: absolute; text-align: left;}
			.titleBar { background-color: #163174; cursor: default; color: #ffffff; font-family: "MS Sans Serif", "Arial", "Helvetica", sans-serif; font-size: 8pt; font-weight: bold; margin: 0px; padding: 2px 2px 2px 2px; text-align: left; white-space: nowrap; }
			.CuteEditorButtonActive { margin:0px; vertical-align:middle; border-right: buttonshadow 1px solid; border-top: buttonhighlight 1px solid; border-left: buttonhighlight 1px solid; border-bottom: buttonshadow 1px solid;}
			.CuteEditorButton { border-right: #808080 1px solid!important; border-top: #ffffff 1px solid!important; border-left: #ffffff 1px solid!important; border-bottom: #808080 1px solid!important; margin:0px;vertical-align:middle; background-color:#D4D0C8!important;}
			.CuteEditorButtonOver { border-right: buttonshadow 1px solid; border-top: buttonhighlight 1px solid; border-left: buttonhighlight 1px solid; border-bottom: buttonshadow 1px solid; PADDING: 0px; MARGIN: 0px; vertical-align: middle;}
			.CuteEditorButtonDown { border-right: buttonhighlight 1px solid!important; border-top: buttonshadow 1px solid!important; border-left: buttonshadow 1px solid!important; border-bottom: buttonhighlight 1px solid!important; margin:0px;vertical-align:middle; background-color:#ffffff!important;}
			.CuteEditorButtonDisabled {filter:grey alpha(opacity=50);opacity: .50; -moz-opacity: .50;vertical-align: middle;border-right: #808080 1px solid!important; border-top: #ffffff 1px solid!important; border-left: #ffffff 1px solid!important; border-bottom: #808080 1px solid!important;}
			.clientArea { background-color: #ffffff; border-color: #404040 #e0e0e0 #f0f0f0 #505050; border-style: solid; border-width: 2px; color: #000000; font-family: "Arial", "Helvetica", sans-serif; font-size: 10pt; margin: 2px 0px 0px 0px; overflow: auto; padding: .5em; }
			.clientArea td { font-family: "MS Sans Serif", "Arial", "Helvetica", sans-serif; font-size: 9pt; text-align: left;}
		</style>
	</head>
	<body>
		<form id="Form1" method="post" runat="server">
			<div style="padding:5px;"> 
				<CE:ImageEditor id="ImageEditor1" runat="server" Width="500" Height="380"></CE:ImageEditor>
			</div>
		</form>
	</body>
</html>
