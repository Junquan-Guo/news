<%@ Control Inherits="CuteEditor.EditorUtilityCtrl" Language="c#" AutoEventWireup="false" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<fieldset><legend>Textarea</legend>
	<table class="normal">
		<tr>
			<td style="width:60px">[[Name]]:</td>
			<td><input type="text" id="inp_name" style="width:100px" /></td>
		</tr>
		<tr>
			<td>[[Columns]]:</td>
			<td><input type="text" id="inp_cols" style="width:100px" onkeypress="return CancelEventIfNotDigit()" /></td>
		</tr>
		<tr>
			<td>[[Rows]]:</td>
			<td><input type="text" id="inp_rows" style="width:100px" onkeypress="return CancelEventIfNotDigit()" /></td>
		</tr>
		<tr>
			<td>[[Value]]:</td>
			<td><textarea rows="2" cols="30" style="width:258px" id="inp_value"></textarea></td>
		</tr>
		<tr>
			<td>[[Wrap]]:</td>
			<td>
				<select id="sel_Wrap" name="sel_Wrap">
					<option value="">Default</option>
					<option value="off">off</option>
					<option value="virtual">virtual</option>
					<option value="physical">physical</option>
				</select>
			</td>		
		</tr>
		<tr>
			<td style="width:60px">[[ID]]:</td>
			<td><input type="text" id="inp_id" style="width:100px" /></td>
		</tr>
		<tr>
			
			<td>[[AccessKey]]:</td>
			<td>
				<input type="text" id="inp_access" size="1" maxlength="1" />
			</td>
		</tr>
		<tr>
			<td>[[TabIndex]]:</td>
			<td><input type="text" id="inp_index" size="5" value="" maxlength="5" onkeypress="return CancelEventIfNotDigit()" />		
			</td>
		</tr>
		<tr>
			<td>
			</td>
			<td><input type="checkbox" id="inp_Disabled" /><label for="inp_Disabled">[[Disabled]]</label>
			</td>
		</tr>
		<tr>
			<td>
			</td>
			<td><input type="checkbox" id="inp_Readonly" /><label for="inp_Readonly">[[Readonly]]</label>
			</td>
		</tr>
	</table>
</fieldset>
<script type="text/javascript" src="Load.ashx?type=dialogscript&file=Dialog_Tag_Textarea.js"></script>

