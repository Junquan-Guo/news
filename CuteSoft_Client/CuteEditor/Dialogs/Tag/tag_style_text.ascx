<%@ Control Inherits="CuteEditor.EditorUtilityCtrl" Language="c#" AutoEventWireup="false" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<fieldset><legend>[[Alignment]]</legend>
	<table border="0" cellspacing="0" cellpadding="2" class="normal">
		<tr>
			<td>[[Horizontal]]:</td>
			<td>
				<select id="sel_align">
					<option value="">[[NotSet]]</option>
					<option value="left">[[Left]]</option>
					<option value="center">[[Center]]</option>
					<option value="right">[[Right]]</option>
					<option value="justify">[[Justify]]</option>
				</select>
			</td>
			<td style="white-space:nowrap;width:10" ></td>
			<td>[[Vertical]]:</td>
			<td>
				<select id="sel_valign" style="width:90">
					<option value="">[[NotSet]]</option>
					<option value="sub">[[Subscript]]</option>
					<option value="super">[[Superscript]]</option>
					<option value="baseline">[[Normal]]</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>[[Justification]]:</td>
			<td colspan="4">
				<select id="sel_justify">
					<option value="">[[NotSet]]</option>
					<option value="auto">Auto</option>
					<option value="newspaper">newspaper</option>
					<option value="distribute">distribute</option>
					<option value="distribute-all-lines">distribute-all-lines</option>
					<option value="inter-word">inter-word</option>
				</select>
			</td>
		</tr>
	</table>
</fieldset>
<fieldset>
	<legend>
		[[Spacing]]</legend>
	<table border="0" cellpadding="2" cellspacing="0" class="normal">
		<tr>
			<td>[[Letters]]</td>
			<td><select style="width:64" id="sel_letter">
					<option value="">[[NotSet]]</option>
					<option value="normal">[[Normal]]</option>
				</select>
				[[OR]] <input type="text" id="tb_letter" style="width:42" />
				<select id="sel_letter_unit">
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
			<td>[[Height]]</td>
			<td><select style="width:64" id="sel_line">
					<option value="">[[NotSet]]</option>
					<option value="normal">[[Normal]]</option>
				</select>
				[[OR]] <input type="text" id="tb_line" style="width:42" />
				<select id="sel_line_unit">
					<option value="px">px</option>
					<option value="%">%</option>
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
<fieldset><legend>[[TextFlow]]</legend>
	<table border="0" cellspacing="0" cellpadding="2" class="normal">
		<tr>
			<td style="width:80">[[Indentation]]:
			</td>
			<td><input type="text" id="tb_indent" style="width:42" />
				<select id="sel_indent_unit">
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
			<td>[[TextDirection]]:</td>
			<td><select id="sel_direction">
					<option value="">[[NotSet]]</option>
					<option value="ltr">[[LTR]]</option>
					<option value="rtl">[[RTL]]</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>[[WritingMode]]:</td>
			<td>
				<select id="sel_writingmode">
					<option value="">[[NotSet]]</option>
					<option value="lr-tb">[[lr-tb]]</option>
					<option value="tb-rl">[[tb-rl]]</option>
				</select>
			</td>
		</tr>
	</table>
</fieldset>

<div id="outer"><div id="div_demo">[[DemoText]]</div></div>

<script type="text/javascript" src="Load.ashx?type=dialogscript&file=Dialog_Tag_Style_Text.js"></script>

