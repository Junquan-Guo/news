<%@ Control Inherits="CuteEditor.EditorUtilityCtrl" Language="c#" AutoEventWireup="false" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<br />
<table width="400" cellpadding="1" cellspacing="0" onmouseover="CuteEditor_ColorPicker_ButtonOver(this);"
	onclick="selectTemplates()" id="richDropDown" style="border:1px solid #cccccc;height:30;">
	<tr>
		<td style="padding-left:20px; background-color:white">
			<img src="Load.ashx?type=image&file=h-f-3Columns-Body.gif" title="[[Table layout]]" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			[[Table layout]]
		</td>
		<td style='width:8px;padding:0px 1px 1px 1px;color:black;text-align:center;font-family:Webdings;font-size:8px;'>6</td>
	</tr>
</table>
<div id="list_Templates" style="display:none;">
	<div style="position:absolute; top:0; left:0; overflow:scroll; overflow-x:hidden;width:400; height:220; border-bottom:0px solid black;">
		<div onmouseover="this.style.filter='progid:DXImageTransform.Microsoft.Gradient(GradientType=0, StartColorStr=#99ccff, EndColorStr=#FFFFFF)';"
			onmouseout="this.style.filter='';" style="font:normal 11px Tahoma; height:25px; background:#ffffff; border:1px solid black; padding:3px; padding-left:20px;cursor:hand;">
			<span onclick="parent.selectTemplate(1)"><img src="Load.ashx?type=image&file=One-Column-Table.gif" title="[[1ColumnTable]]" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
				[[1ColumnTable]]</span>
		</div>
		<div onmouseover="this.style.filter='progid:DXImageTransform.Microsoft.Gradient(GradientType=0, StartColorStr=yellowgreen, EndColorStr=#FFFFFF)';"
			onmouseout="this.style.filter='';" style="font:normal 11px Tahoma; height:25px; background:#ffffff; border:1px solid black; padding:3px; padding-left:20px; cursor:hand; border-top:0px solid black">
			<span onclick="parent.selectTemplate(2)"><img src="Load.ashx?type=image&file=Two-Column-Table.gif" title="[[2ColumnTable]]" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
				[[2ColumnTable]]</span>
		</div>
		<div onmouseover="this.style.filter='progid:DXImageTransform.Microsoft.Gradient(GradientType=0, StartColorStr=gold, EndColorStr=#FFFFFF)';"
			onmouseout="this.style.filter='';" style="font:normal 11px Tahoma; height:25px; background:#ffffff; border:1px solid black; padding:3px; padding-left:20px; cursor:hand; border-top:0px solid black">
			<span onclick="parent.selectTemplate(3)"><img src="Load.ashx?type=image&file=Three-Column-Table.gif" title="[[3ColumnTable]]"
					/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [[3ColumnTable]]</span>
		</div>
		<div onmouseover="this.style.filter='progid:DXImageTransform.Microsoft.Gradient(GradientType=0, StartColorStr=violet, EndColorStr=#FFFFFF)';"
			onmouseout="this.style.filter='';" style="font:normal 11px Tahoma; height:25px; background:#ffffff; border:1px solid black; padding:3px; padding-left:20px; cursor:hand; border-top:0px solid black">
			<span onclick="parent.selectTemplate(4)"><img src="Load.ashx?type=image&file=h-R-t-Body.gif" title="[[Header-Right-TopLeft-Body]]"
					/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [[Header-Right-TopLeft-Body]]</span>
		</div>
		<div onmouseover="this.style.filter='progid:DXImageTransform.Microsoft.Gradient(GradientType=0, StartColorStr=#99ccff, EndColorStr=#FFFFFF)';"
			onmouseout="this.style.filter='';" style="font:normal 11px Tahoma; height:25px; background:#ffffff; border:1px solid black; padding:3px; padding-left:20px; cursor:hand; border-top:0px solid black">
			<span onclick="parent.selectTemplate(5)"><img src="Load.ashx?type=image&file=h-l-tr-Body.gif" title="[[Header-Left-TopRight-Body]]"
					/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [[Header-Left-TopRight-Body]]</span>
		</div>
		<div onmouseover="this.style.filter='progid:DXImageTransform.Microsoft.Gradient(GradientType=0, StartColorStr=#99ccff, EndColorStr=#FFFFFF)';"
			onmouseout="this.style.filter='';" style="font:normal 11px Tahoma; height:25px; background:#ffffff; border:1px solid black; padding:3px; padding-left:20px;  cursor:hand; border-top:0px solid black;">
			<span onclick="parent.selectTemplate(6)"><img src="Load.ashx?type=image&file=h-f-3Columns-Body.gif" title="[[Header-Footer-3-Columns]]"
					/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [[Header-Footer-3-Columns]]</span>
		</div>
	</div>
</div>
<style type="text/css">
.addsub
{
	width:21px;
	font-family:fixedsys;
}
</style>
<br >
<div style="padding: 4px 5px 0 4px; width:99%">
	<table border="0" cellspacing="0" cellpadding="2"  class="normal" width="99%">
		<tr>
			<td align="center">
				[[EditCell]]
			</td>
			<td align="center">
				[[Columns]]: <button id="subcolumns" class="addsub">-</button> <button id="addcolumns" class="addsub">
					+</button> ColSpan : <button id="subcolspan" class="addsub">-</button> <button id="addcolspan" class="addsub">
					+</button>
			</td>
			<td></td>
		</tr>
		<tr>
			<td valign="top">
				<table class="normal">
					<tr>
						<td colspan="2" align="center">
							<input type="button" id="btn_row_dialog" value="[[EditRow]]" /></td>
					</tr>
					<tr>
						<td colspan="2" align="center">
							<input type="button" id="btn_cell_dialog" value="[[EditCell]]" /></td>
					</tr>
					<tr>
						<td>[[Width]]</td>
						<td><input type="text" id="inp_cell_width" style="width:60px" /></td>
					</tr>
					<tr>
						<td>[[Height]]:</td>
						<td><input type="text" id="inp_cell_height" style="width:60px" /></td>
					</tr>
					<!-- //TODO: add more cell useful properties here -->
					<tr>
						<td colspan="2" align="center">
							<input type="button" id="btn_cell_editcell" value="[[EditHtml]]" /></td>
					</tr>
				</table>
				<br />
			</td>
			<td>
				<div style="border:1px solid gray;padding:1px;OVERFLOW: auto; HEIGHT: 215px; HEIGHT: 215px; ">
					<table id="tabledesign" border="1" cellspacing="" style='border-color:#FFA500;background-color:white;width:100%;height:210px;border-collapse:collapse' class="normal">
					</table>
				</div>
			</td>
			<td align="center">
				R<br />
				o<br />
				w<br />
				s<br />
				<button id="subrows" class="addsub">-</button><br />
				<button id="addrows" class="addsub">+</button>
				<br />
				S<br />
				p<br />
				a<br />
				n<br />
				<button id="subrowspan" class="addsub">-</button><br />
				<button id="addrowspan" class="addsub">+</button>
			</td>
		</tr>
	</table>
</div>

<script type="text/javascript" src="Load.ashx?type=dialogscript&file=Dialog_Tag_InsertTable.js"></script>

