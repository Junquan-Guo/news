<%@ Control Inherits="CuteEditor.EditorUtilityCtrl" Language="c#" AutoEventWireup="false" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<table width="100%" cellpadding="0" cellspacing="0">
	<tr>
		<td valign="top" style="padding:5;padding-bottom:0;height:100%">
			<table>
				<tr>
					<td valign="top" style="padding:3">
						<div style="overflow:auto;border:gray 1 solid;width:115;height:127;">
							<table id="tblBorderStyle" cellpadding="5" cellspacing="0" width="100%" style="table-layout:fixed;background:white">
								<tr>
									<td valign="top" onmouseover="CuteEditor_ColorPicker_ButtonOver(this);" onclick="doBorderStyle('')"
										style="cursor:default;height:25;padding:4;border:white 1 solid;">
										<div style="border:none;height:10;width:100%">[[NotSet]]</div>
									</td>
								</tr>
								<tr>
									<td valign="top" onmouseover="CuteEditor_ColorPicker_ButtonOver(this);" onclick="doBorderStyle('solid')"
										style="cursor:default;height:25;padding:4;border:white 1 solid;">
										<div style="border-bottom:black 1 solid;height:10;width:100%" title="solid"></div>
									</td>
								</tr>
								<tr>
									<td valign="top" onmouseover="CuteEditor_ColorPicker_ButtonOver(this);" onclick="doBorderStyle('dotted')"
										style="cursor:default;height:25;padding:4;border:white 1 solid;">
										<div style="border-bottom:black dotted;height:10;width:100%" title="dotted"></div>
									</td>
								</tr>
								<tr>
									<td valign="top" onmouseover="CuteEditor_ColorPicker_ButtonOver(this);" onclick="doBorderStyle('dashed')"
										style="cursor:default;height:25;padding:4;border:white 1 solid;">
										<div style="border-bottom:black dashed;height:10;width:100%" title="dashed"></div>
									</td>
								</tr>
								<tr>
									<td valign="top" onmouseover="CuteEditor_ColorPicker_ButtonOver(this);" onclick="doBorderStyle('double')"
										style="cursor:default;height:25;padding:4;border:white 1 solid;">
										<div style="border-bottom:black dotted;height:10;width:100%" title="double"></div>
									</td>
								</tr>
								<tr>
									<td valign="top" onmouseover="CuteEditor_ColorPicker_ButtonOver(this);" onclick="doBorderStyle('groove')"
										style="cursor:default;height:25;padding:4;border:white 1 solid;">
										<div style="border-style:groove;height:10;width:100%" title="groove"></div>
									</td>
								</tr>
								<tr>
									<td valign="top" onmouseover="CuteEditor_ColorPicker_ButtonOver(this);" onclick="doBorderStyle('ridge')"
										style="cursor:default;height:25;padding:4;border:white 1 solid;">
										<div style="border-style:ridge;height:10;width:100%" title="ridge"></div>
									</td>
								</tr>
								<tr>
									<td valign="top" onmouseover="CuteEditor_ColorPicker_ButtonOver(this);" onclick="doBorderStyle('inset')"
										style="cursor:default;height:25;padding:4;border:white 1 solid;">
										<div style="border-style:inset;height:10;width:100%" title="inset"></div>
									</td>
								</tr>
								<tr>
									<td valign="top" onmouseover="CuteEditor_ColorPicker_ButtonOver(this);" onclick="doBorderStyle('outset')"
										style="cursor:default;height:25;padding:4;border:white 1 solid;">
										<div style="border-style:outset;height:10;width:100%" title="outset"></div>
									</td>
								</tr>
							</table>
						</div>
						<input type="hidden" name="sel_style" id="sel_style" />
					</td>
					<td valign="top" style="padding:3">
						<div style='overflow:auto;border:gray 1 solid;width:115;height:127'>
							<table cellpadding="5" cellspacing="0" width="100%" style='table-layout:fixed;background:white'>
								<tr>
									<td valign="top" onmouseover="CuteEditor_ColorPicker_ButtonOver(this);" onclick="doWidth('1px')"
										style="height:25;padding:1;border:white 1 solid;">
										<table width="100%">
											<tr>
												<td style="height:25">1px</td>
												<td valign="top" style="width:100%">
													<table style='border-bottom:black 1px solid;height:16;' width="100%">
														<tr>
															<td></td>
														</tr>
													</table>
												</td>
											</tr>
										</table>
									</td>
								</tr>
								<tr>
									<td valign="top" onmouseover="CuteEditor_ColorPicker_ButtonOver(this);" onclick="doWidth('2px')"
										style="height:25;padding:1;border:white 1 solid;">
										<table width="100%">
											<tr>
												<td style="height:25">2px</td>
												<td valign="top" style="width:100%">
													<table style='border-bottom:black 2px solid;height:16;' width="100%">
														<tr>
															<td></td>
														</tr>
													</table>
												</td>
											</tr>
										</table>
									</td>
								</tr>
								<tr>
									<td valign="top" onmouseover="CuteEditor_ColorPicker_ButtonOver(this);" onclick="doWidth('3px')"
										style="height:25;padding:1;border:white 1 solid;">
										<table width="100%">
											<tr>
												<td style="height:25">3px</td>
												<td valign="top" style="width:100%">
													<table style='border-bottom:black 2px solid;height:16;' width="100%">
														<tr>
															<td></td>
														</tr>
													</table>
												</td>
											</tr>
										</table>
									</td>
								</tr>
								<tr>
									<td valign="top" onmouseover="CuteEditor_ColorPicker_ButtonOver(this);" onclick="doWidth('4px')"
										style="height:25;padding:1;border:white 1 solid;">
										<table width="100%">
											<tr>
												<td style="height:25">4px</td>
												<td valign="top" style="width:100%">
													<table style='border-bottom:black 4px solid;height:16;' width="100%">
														<tr>
															<td></td>
														</tr>
													</table>
												</td>
											</tr>
										</table>
									</td>
								</tr>
								<tr>
									<td valign="top" onmouseover="CuteEditor_ColorPicker_ButtonOver(this);" onclick="doWidth('5px')"
										style="height:25;padding:1;border:white 1 solid;">
										<table width="100%">
											<tr>
												<td style="height:25">5px</td>
												<td valign="top" style="width:100%">
													<table style='border-bottom:black 5px solid;height:16;' width="100%">
														<tr>
															<td></td>
														</tr>
													</table>
												</td>
											</tr>
										</table>
									</td>
								</tr>
								<tr>
									<td valign="top" onmouseover="CuteEditor_ColorPicker_ButtonOver(this);" onclick="doWidth('6px')"
										style="height:25;padding:1;border:white 1 solid;">
										<table width="100%">
											<tr>
												<td style="height:25">6px</td>
												<td valign="top" style="width:100%">
													<table style='border-bottom:black 6px solid;height:16;' width="100%">
														<tr>
															<td></td>
														</tr>
													</table>
												</td>
											</tr>
										</table>
									</td>
								</tr>
								<tr>
									<td valign="top" onmouseover="CuteEditor_ColorPicker_ButtonOver(this);" onclick="doWidth('7px')"
										style="height:25;padding:1;border:white 1 solid;">
										<table width="100%">
											<tr>
												<td style="height:25">7px</td>
												<td valign="top" style="width:100%">
													<table style='border-bottom:black 7px solid;height:16;' width="100%">
														<tr>
															<td></td>
														</tr>
													</table>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
							<input type="hidden" name="sel_border" id="sel_border" />
						</div>
					</td>
					<td valign="top" style="white-space:nowrap;padding:3" >
						<div style='overflow:auto;border:gray 1 solid;width:55;height:127'>
							<table cellpadding="5" cellspacing="0" width="100%" style='table-layout:fixed;background:white'>
								<tr>
									<td valign="top" onmouseover="CuteEditor_ColorPicker_ButtonOver(this);" onclick="doPart('none')"
										style="height:30;padding:4;border:white 1 solid;">
										<img src='Load.ashx?type=image&file=border_none.gif' alt='No Border' />
									</td>
								</tr>
								<tr>
									<td valign="top" onmouseover="CuteEditor_ColorPicker_ButtonOver(this);" onclick="doPart('')"
										style="height:30;padding:4;border:white 1 solid;">
										<img src='Load.ashx?type=image&file=border_outside.gif' alt='All' />
									</td>
								</tr>
								<tr>
									<td valign="top" onmouseover="CuteEditor_ColorPicker_ButtonOver(this);" onclick="doPart('left')"
										style="height:30;padding:4;border:white 1 solid;">
										<img src='Load.ashx?type=image&file=border_left.gif' alt='[[Left]]' />
									</td>
								</tr>
								<tr>
									<td valign="top" onmouseover="CuteEditor_ColorPicker_ButtonOver(this);" onclick="doPart('top')"
										style="height:30;padding:4;border:white 1 solid;">
										<img src='Load.ashx?type=image&file=border_top.gif' alt='[[Top]]' />
									</td>
								</tr>
								<tr>
									<td valign="top" onmouseover="CuteEditor_ColorPicker_ButtonOver(this);" onclick="doPart('right')"
										style="height:30;padding:4;border:white 1 solid;">
										<img src='Load.ashx?type=image&file=border_right.gif' alt='[[Right]]' />
									</td>
								</tr>
								<tr>
									<td valign="top" onmouseover="CuteEditor_ColorPicker_ButtonOver(this);" onclick="doPart('bottom')"
										style="height:30;padding:4;border:white 1 solid;">
										<img src='Load.ashx?type=image&file=border_bottom.gif' alt='[[Bottom]]' />
									</td>
								</tr>
							</table>
							<input type="hidden" name="sel_part" id="sel_part" />
						</div>
					</td>
					<td valign="top" style="white-space:nowrap;padding:0 5px 3px 8px;" >
						<table cellpadding="0" cellspacing="0" style="padding-bottom:10">
							<tr>
								<td>[[BorderColor]]:<br />
									<input autocomplete="off" type="text" id="bordercolor" name="bordercolor" size="7" style="WIDTH:57px" />
									<img alt="" id="bordercolor_Preview" src="Load.ashx?type=image&file=colorpicker.gif" style="vertical-align:top"/>
								</td>
							</tr>
							<tr>
								<td>[[ForeColor]]:<br />
									<input autocomplete="off" type="text" id="inp_color" name="inp_color" size="7" style="WIDTH:57px" />
									<img alt="" id="inp_color_Preview" src="Load.ashx?type=image&file=colorpicker.gif" style="vertical-align:top"/>
								</td>
							</tr>
							<tr>
								<td>[[Shade]]:<br />
									<input autocomplete="off" type="text" id="inp_shade" name="inp_shade" size="7" style="WIDTH:57px" />
									<img alt="" id="inp_shade_Preview" src="Load.ashx?type=image&file=colorpicker.gif" style="vertical-align:top"/>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td style="padding-left:8; padding-top:10;white-space:nowrap">
			<table cellpadding="0" cellspacing="0">
				<tr>
					<td>
						<table cellpadding="2" cellspacing="0">
							<tr>
								<td colspan="7">[[Margin]]:</td>
							</tr>
							<tr>
								<td><span>[[Left]]</span>:</td>
								<td><input type="text" id="inp_MarginLeft" size="1" onkeypress="return CancelEventIfNotDigit()" /></td>
								<td>
									px</td>
								<td>&nbsp;&nbsp;</td>
								<td align="right"><span>[[Right]]</span>:</td>
								<td><input type="text" id="inp_MarginRight" size="1" onkeypress="return CancelEventIfNotDigit()" /></td>
								<td>px</td>
							</tr>
							<tr>
								<td><span>[[Top]]</span>:</td>
								<td><input type="text" id="inp_MarginTop" size="1" onkeypress="return CancelEventIfNotDigit()" /></td>
								<td>px</td>
								<td>&nbsp;&nbsp;</td>
								<td align="right"><span>[[Bottom]]</span>:</td>
								<td><input type="text" id="inp_MarginBottom" size="1" onkeypress="return CancelEventIfNotDigit()" /></td>
								<td>px</td>
							</tr>
						</table>
					</td>
					<td>
						<div style="margin:5;height:55;border-left:lightgrey 1 solid"></div>
					</td>
					<td style="padding-bottom:5">
						<table cellpadding="2" cellspacing="0">
							<tr>
								<td colspan="7">[[Padding]]:</td>
							</tr>
							<tr>
								<td><span>[[Left]]</span>:</td>
								<td><input type="text" id="inp_PaddingLeft" size="1" onkeypress="return CancelEventIfNotDigit()" /></td>
								<td>
									px</td>
								<td>&nbsp;&nbsp;</td>
								<td align="right"><span>[[Right]]</span>:</td>
								<td><input type="text" id="inp_PaddingRight" size="1" onkeypress="return CancelEventIfNotDigit()" /></td>
								<td>
									px</td>
							</tr>
							<tr>
								<td><span>[[Top]]</span>:</td>
								<td><input type="text" id="inp_PaddingTop" size="1" onkeypress="return CancelEventIfNotDigit()" /></td>
								<td>
									px</td>
								<td>&nbsp;&nbsp;</td>
								<td align="right"><span>[[Bottom]]</span>:</td>
								<td><input type="text" id="inp_PaddingBottom" size="1" onkeypress="return CancelEventIfNotDigit()" /></td>
								<td>
									px</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td colspan="3" style="padding-top:3;padding-bottom:5;border-top:lightgrey 1 solid">
						<fieldset><legend>[[Common]]</legend>
							<table class="normal">
								<tr>
									<td width="80" style="white-space:nowrap" >[[Width]]:</td>
									<td style="white-space:nowrap">
									    <input type="text" id="inp_width" size="8" onkeypress="return CancelEventIfNotDigit()" />
										<select id="sel_width_unit">
											<option value="px">px</option>
											<option value="%">%</option>
										</select>
									</td>
									<td></td>
									<td>[[Height]]:</td>
									<td style="white-space:nowrap">
									    <input type="text" id="inp_height" size="8" onkeypress="return CancelEventIfNotDigit()" />
										<select id="sel_height_unit">
											<option value="px">px</option>
											<option value="%">%</option>
										</select>
									</td>
								</tr>
								<tr>
									<td valign="middle" style="white-space:nowrap" >[[ID]]:</td>
									<td><input type="text" id="inp_id" size="16" /></td>
									<td></td>
									<td style='width:60px'>[[CssClass]]:</td>
									<td><input type="text" id="inp_class" size="16" /></td>
								</tr>
								<tr>
									<td>[[Alignment]]:</td>
									<td colspan="4">
										<select id="sel_align">
											<option value="">[[NotSet]]</option>
											<option value="left">[[Left]]</option>
											<option value="center">[[Center]]</option>
											<option value="right">[[Right]]</option>
										</select>
										&nbsp; [[Text-Align]] :
										<select id="sel_textalign">
											<option value="">[[NotSet]]</option>
											<option value="left">[[Left]]</option>
											<option value="center">[[Center]]</option>
											<option value="right">[[Right]]</option>
											<option value="justify">[[Justify]]</option>
										</select>
										&nbsp; [[Float]]:
										<select id="sel_float">
											<option value="">[[NotSet]]</option>
											<option value="left">[[Left]]</option>
											<option value="right">[[Right]]</option>
										</select>
									</td>
								</tr>
								<tr>
									<td style='width:60px'>[[Title]] :</td>
									<td colspan="4">
										<textarea id="inp_tooltip" rows="2" cols="20" style="width:320px"></textarea>
									</td>
								</tr>
							</table>
						</fieldset>
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>
<script type="text/javascript" src="Load.ashx?type=dialogscript&file=Dialog_Tag_Div.js"></script>