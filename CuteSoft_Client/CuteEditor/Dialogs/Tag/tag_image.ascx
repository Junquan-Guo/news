<%@ Control Inherits="CuteEditor.EditorUtilityCtrl" Language="c#" AutoEventWireup="false" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<fieldset><legend>[[Insert]]</legend>
	<table class="normal">
		<tr>
			<td style="width:80">[[Url]]:</td>
			<td colspan="3"><input type="text" id="inp_src" size="45" /></td>
			<td>
			    <input type="button" id="btnbrowse" value="[[Browse]]" class="formbutton" />
			 </td>
		</tr>
		<tr>
			<td valign="middle" style="white-space:nowrap" >[[Alternate]]:</td>
			<td><input type="text" id="AlternateText" size="24" name="AlternateText" /></td>
			<td valign="middle" style="white-space:nowrap" >[[ID]]:</td>
			<td><input type="text" id="inp_id" size="12" /></td>
			<td></td>
		</tr>
		<tr>
			<td valign="middle" style="white-space:nowrap" >[[longDesc]]:</td>
			<td colspan="3"><input type="text" id="longDesc" size="45" name="longDesc" />
			</td>
			<td><img alt="" src="Load.ashx?type=image&file=Accessibility.gif" /></td>
		</tr>
	</table>
</fieldset>
<table class="normal" cellpadding="0" cellspacing="0">
	<tr>
		<td valign="top">
			<fieldset>
				<legend>[[Layout]]</legend>
				<table border="0" cellpadding="3" cellspacing="1" class="normal" width="100%">
					<tr>
						<td>
							<table border="0" cellpadding="2" cellspacing="1" class="normal" width="100%">
								<tr>
									<td style="width:70" width="90">[[Alignment]]:</td>
									<td>
<select name="ImgAlign" style="WIDTH : 80px" id="Align">
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
									<td></td>
								</tr>
								<tr>
									<td>[[Bordersize]]:</td>
									<td>
										<input type="text" size="2" name="Border" onkeypress="return CancelEventIfNotDigit()" style="WIDTH : 80px"
											id="Border" />
									</td>
									<td></td>
								</tr>
								<tr>
									<td>[[BorderColor]]:</td>
									<td style="white-space:nowrap;">
<input autocomplete="off" type="text" id="bordercolor" name="bordercolor" size="7" />
<img alt="" src="Load.ashx?type=image&file=colorpicker.gif" id="bordercolor_Preview" style='vertical-align:top;' />
									</td>
									<td>
									</td>
								</tr>
								<tr>
									<td style="white-space:nowrap;">[[Width]]:</td>
									<td>
<input type="text" size="2" id="inp_width" onkeyup="checkConstrains('width');" rem-skipautofirechanged="1" onkeypress="return CancelEventIfNotDigit()" style="WIDTH : 80px" />
									</td>
									<td rowspan="2" align="right" valign="middle"><img src="Load.ashx?type=image&file=locked.gif" id="imgLock" width="25" height="32" title="[[ConstrainProportions]]" /></td>
								</tr>
								<tr>
									<td>[[Height]]:</td>
									<td>
<input type="text" size="2" id="inp_height" onkeyup="checkConstrains('width');" rem-skipautofirechanged="1" onkeypress="return CancelEventIfNotDigit()" style="WIDTH : 80px" />
									</td>
								</tr>
								<tr>
									<td colspan="2">
<input type="checkbox" id="constrain_prop" checked="checked" onclick="javascript:toggleConstrains();" />[[ConstrainProportions]]</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</fieldset>
			<fieldset>
				<legend>
					[[Spacing]]</legend>
				<table border="0" cellpadding="4" cellspacing="0" class="normal">
					<tr>
						<td>
							<table border="0" cellpadding="2" cellspacing="0" class="normal">
								<tr>
									<td valign="middle" style="width:70">[[Horizontal]]:</td>
									<td>
									    <input type="text" size="2" value="5" onkeypress="return CancelEventIfNotDigit()" style="WIDTH:80px" id="HSpace" />
								    </td>
								</tr>
								<tr>
									<td valign="middle">[[Vertical]]:</td>
									<td>
									    <input type="text" size="2" name="VSpace" onkeypress="return CancelEventIfNotDigit()" style="WIDTH:80px" id="VSpace" />
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</fieldset>
		</td>
		<td style="white-space:nowrap; width:5" >&nbsp;</td>
		<td valign="top">
			<div id="outer" style="width:230px; height:251px">
			    <img alt="" src="Load.ashx?type=image&file=1x1.gif" id="img_demo" />
			</div>
		</td>
	</tr>
</table>
<script type="text/javascript" src="Load.ashx?type=dialogscript&file=Dialog_Tag_Image.js"></script>
