<%@ Control Inherits="CuteEditor.EditorUtilityCtrl" Language="c#" AutoEventWireup="false" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<style type="text/css">
#div_selector_event
{
	width:45;height:45;padding:5px;border:1px solid white;
}
#div_selector
{
	width:40;height:40;border:4px solid white;
}
</style>
<fieldset>
	<legend>
		[[Borders]]</legend>
	<table border="0" cellspacing="0" cellpadding="2" class="normal">
		<tr>
			<td style="width:48">
				<div id="div_selector_event">
					<div id="div_selector">
					</div>
				</div>
			</td>
			<td>
				<select id="sel_part">
					<option value="">[[All]]</option>
					<option value="Top">[[Top]]</option>
					<option value="Left">[[Left]]</option>
					<option value="Right">[[Right]]</option>
					<option value="Bottom">[[Bottom]]</option>
				</select>
			</td>
		</tr>
	</table>
</fieldset>
<fieldset>
	<legend>
		[[Border]]</legend>
	<table border="0" cellspacing="0" cellpadding="2" class="normal">
		<tr>
			<td style="width:48">[[Margin]]</td>
			<td>
				<input type="text" id="tb_margin" style="width:80" />
				<select id="sel_margin_unit">
					<option value="px">px</option>
					<option value="pt">pt</option>
					<option value="pc">pc</option>
					<option value="em">em</option>
					<option value="cm">cm</option>
					<option value="mm">mm</option>
					<option value="in">in</option>
				</select></td>
		</tr>
		<tr>
			<td>[[Padding]]</td>
			<td><input type="text" id="tb_padding" style="width:80" />
				<select id="sel_padding_unit">
					<option value="px">px</option>
					<option value="pt">pt</option>
					<option value="pc">pc</option>
					<option value="em">em</option>
					<option value="cm">cm</option>
					<option value="mm">mm</option>
					<option value="in">in</option>
				</select></td>
		</tr>
		<tr>
			<td>[[Border]]</td>
			<td><input type="text" id="tb_border" style="width:80" />
				<select id="sel_border_unit">
					<option value="px">px</option>
					<option value="pt">pt</option>
					<option value="pc">pc</option>
					<option value="em">em</option>
					<option value="cm">cm</option>
					<option value="mm">mm</option>
					<option value="in">in</option>
				</select>
				[[Or]]
				<select id="sel_border">
					<option value="">[[NotSet]]</option>
					<option value="medium">[[Medium]]</option>
					<option value="thin">[[Thin]]</option>
					<option value="thick">[[Thick]]</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>[[Style]]</td>
			<td><select id="sel_style">
					<option value="">[[NotSet]]</option>
					<option value="none">[[None]]</option>
					<option value="solid">solid</option>
					<option value="inset">inset</option>
					<option value="outset">outset</option>
					<option value="ridge">ridge</option>
					<option value="dotted">dotted</option>
					<option value="dashed">dashed</option>
					<option value="groove">groove</option>
					<option value="double">double</option>
				</select></td>
		</tr>
		<tr>
			<td>[[Color]]</td>
			<td>
				<input autocomplete="off" size="7" type="text" id="inp_color" style="width:57px"/>
				<img alt="" id="inp_color_Preview" src="Load.ashx?type=image&file=colorpicker.gif" style="vertical-align:top"/>
			</td>
		</tr>
	</table>
</fieldset>
<div id="outer"><div id="div_demo">[[DemoText]]</div>
</div>
<script type="text/javascript" src="Load.ashx?type=dialogscript&file=Dialog_Tag_Style_Border.js"></script>