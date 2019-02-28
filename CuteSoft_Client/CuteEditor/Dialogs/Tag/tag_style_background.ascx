<%@ Control Inherits="CuteEditor.EditorUtilityCtrl" Language="c#" AutoEventWireup="false" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<fieldset style="padding: 3px;">
	<legend>[[Backgroundcolor]]</legend>
	<input autocomplete="off" type="text" id="inp_color" name="inp_color" size="7" style='width:60px;vertical-align:top;' />
	<img alt="" src="Load.ashx?type=image&file=colorpicker.gif" id="inp_color_Preview" style='vertical-align:top;' />
</fieldset>
<fieldset style="padding: 3px;"><legend>[[Backgroundimage]]</legend>
	<div>
		[[Url]]: <input id="tb_image" type="text" style="width:220px" />
		<input type="button" id="btnbrowse" value=" ... "/>
	</div>
	<div style="padding-left: 32px;">
		<table border="0" cellpadding="2" cellspacing="0" class="normal">
			<tr>
				<td style="width:80">[[Tiling]]: </td>
				<td><select id="sel_bgrepeat" style="width:140px">
						<option value="">[[NotSet]]</option>
						<option value="repeat">[[Tilingboth]]</option>
						<option value="repeat-x">[[Tilingorizontal]]</option>
						<option value="repeat-y">[[Tilingvertical]]</option>
						<option value="no-repeat">[[NoTiling]]</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>[[Scrolling]]: </td>
				<td><select id="sel_bgattach" style="width:140px">
						<option value="">[[NotSet]]</option>
						<option value="scroll">[[Scrollingbackground]]</option>
						<option value="fixed">[[ScrollingFixed]]</option>
					</select>
				</td>
			</tr>
		</table>
	</div>
	<fieldset><legend>[[Position]]</legend>
		<table border="0" cellpadding="2" cellspacing="0" class="normal">
			<tr>
				<td>[[Horizontal]]</td>
				<td><select style="width:64" id="sel_hor">
						<option value="">[[NotSet]]</option>
						<option value="left">[[Left]]</option>
						<option value="center">[[Center]]</option>
						<option value="right">[[Right]]</option>
					</select>
					[[OR]] <input type="text" id="tb_hor" style="width:42" />
					<select id="sel_hor_unit">
						<option value="px">px</option>
						<option value="pt">pt</option>
						<option value="pc">pc</option>
						<option value="em">em</option>
						<option value="cm">cm</option>
						<option value="mm">mm</option>
						<option value="in">in</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>[[Vertical]]</td>
				<td><select style="width:64" id="sel_ver">
						<option value="">[[NotSet]]</option>
						<option value="top">[[top]]</option>
						<option value="center">[[Center]]</option>
						<option value="bottom">[[Bottom]]</option>
					</select>
					[[OR]] <input type="text" id="tb_ver" style="width:42" />
					<select id="sel_ver_unit">
						<option value="px">px</option>
						<option value="pt">pt</option>
						<option value="pc">pc</option>
						<option value="em">em</option>
						<option value="cm">cm</option>
						<option value="mm">mm</option>
						<option value="in">in</option>
					</select>
				</td>
			</tr>
		</table>
	</fieldset>
</fieldset>
<div id="outer"><div id="div_demo">[[DemoText]]</div></div>

<script type="text/javascript" src="Load.ashx?type=dialogscript&file=Dialog_Tag_Style_Background.js"></script>
