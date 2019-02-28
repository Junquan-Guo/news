<%@ Control Inherits="CuteEditor.EditorUtilityCtrl" Language="c#" AutoEventWireup="false" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<fieldset><legend>[[Input]]</legend>
	<table class="normal">
		<tr>
			<td>[[Type]]:</td>
			<td colspan="3"><input type="text" id="inp_type" readonly="readonly" disabled="disabled" style="width:100px" /></td>
		</tr>
		<tr>
			<td style="width:60px">[[Name]]:</td>
			<td colspan="3"><input type="text" id="inp_name" style="width:100px" /></td>
		</tr>
		<tr>
			<td>[[Value]]:</td>
			<td colspan="3"><input type="text" id="inp_value" style="width:250px" /></td>
		</tr>
		<tr id="row_txt1">
			<td>[[Size]]:</td>
			<td colspan="3"><input type="text" id="inp_Size" style="width:100px" onkeypress="return CancelEventIfNotDigit()" /></td>
		</tr>
		<tr id="row_txt2">
			<td>[[MaxLength]]:</td>
			<td colspan="3"><input type="text" id="inp_MaxLength" style="width:100px" maxlength="9" onkeypress="return CancelEventIfNotDigit()" /></td>
		</tr>
		<tr id="row_img">
			<td>[[Src]]:</td>
			<td colspan="3">
			    <input type="text" id="inp_src" style="width:250px" />&nbsp; 
			    <input id="btnbrowse" value="[[Browse]]" type="button" />
			</td>
		</tr>
		<tr id="row_img2">
			<td>[[Alignment]]:</td>
			<td>
				<select name="inp_Align" style="WIDTH : 80px" id="sel_Align">
					<option id="optNotSet" value="">[[Notset]]</option>
					<option id="optLeft" value="left">[[Left]]</option>
					<option id="optRight" value="right">[[Right]]</option>
					<option id="optTexttop" value="textTop">[[Texttop]]</option>
					<option id="optAbsMiddle" value="absMiddle">[[Absmiddle]]</option>
					<option id="optBaseline" value="baseline" selected="selected">[[Baseline]]</option>
					<option id="optAbsBottom" value="absBottom">[[Absbottom]]</option>
					<option id="optBottom" value="bottom">[[Bottom]]</option>
					<option id="optMiddle" value="middle">[[Middle]]</option>
					<option id="optTop" value="top">[[Top]]</option>
				</select>
			</td>
			<td>[[Bordersize]]:</td>
			<td>
				<input type="text" size="2" name="inp_Border" onkeypress="return CancelEventIfNotDigit()"
					style="WIDTH : 80px" id="inp_Border" />
			</td>
		</tr>
		<tr id="row_img3">
			<td>[[Width]]:</td>
			<td>
				<input type="text" onkeypress="return CancelEventIfNotDigit()" style="width:80px" size="2"
					id="inp_width" />
			</td>
			<td>[[Height]]:</td>
			<td>
				<input type="text" onkeypress="return CancelEventIfNotDigit()" style="width:80px" size="2"
					id="inp_height" />
			</td>
		</tr>
		<tr id="row_img4">
			<td>[[Horizontal]]:</td>
			<td>
				<input type="text" onkeypress="return CancelEventIfNotDigit()" style="width:80px" size="2"
					id="inp_HSpace" />
			</td>
			<td>[[Vertical]]:</td>
			<td>
				<input type="text" onkeypress="return CancelEventIfNotDigit()" style="width:80px" size="2"
					id="inp_VSpace" />
			</td>
		</tr>
		<tr id="row_img5">
			<td valign="middle" style="white-space:nowrap" >[[Alternate]]:</td>
			<td colspan="3"><input type="text" id="AlternateText" size="24" name="AlternateText" style="width:250px" /></td>
		</tr>
		<tr>
			<td>[[ID]]:</td>
			<td colspan="3"><input type="text" id="inp_id" style="width:100px" /></td>
		</tr>
		<tr id="row_txt3">
			<td>[[AccessKey]]:</td>
			<td colspan="3">
				<input type="text" id="inp_access" size="1" maxlength="1" />
			</td>
		</tr>
		<tr id="row_txt4">
			<td>
				[[TabIndex]]:
			</td>
			<td colspan="3">
				<input type="text" id="inp_index" size="5" value="" maxlength="5" onkeypress="return CancelEventIfNotDigit()" />&nbsp;
			</td>
		</tr>
		<tr id="row_chk">
			<td></td>
			<td><input type="checkbox" id="inp_checked" /><label for="inp_checked">[[Checked]]</label></td>
		</tr>
		<tr id="row_txt5">
			<td>
			</td>
			<td colspan="3"><input type="checkbox" id="inp_Disabled" /><label for="inp_Disabled">[[Disabled]]</label>
			</td>
		</tr>
		<tr id="row_txt6">
			<td>
			</td>
			<td colspan="3"><input type="checkbox" id="inp_Readonly" /><label for="inp_Readonly">[[Readonly]]</label>
			</td>
		</tr>
	</table>
</fieldset>
<script type="text/javascript" src="Load.ashx?type=dialogscript&file=Dialog_Tag_Input.js"></script>

