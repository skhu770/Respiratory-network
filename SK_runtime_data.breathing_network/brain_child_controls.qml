import QtQuick 2.2
import QtQuick.Controls 1.1
import QtQuick.Controls.Styles 1.1
import BL_qml 1.0
//import QtQml 2.2

ScrollView
{
	Item
	{
		id: window_parent
		width: 500
		height: 4000
		property color mode_name_colour: "#FFA9D9DF"
		property color mode_value_colour: "#FFA9D9DF"
		property color slider_groove_filled_colour: "#FFA9D9DF"
		
		
		function variable_values_to_string()
		{
			var precision=3;
			var value_string,temp_value;
			value_string="";
			temp_value=pons_tonic_firing_rate.get_BL_variable_value();
			value_string=value_string + temp_value.toFixed(precision) + ";";
			temp_value=rtn_tonic_firing_rate.get_BL_variable_value();
			value_string=value_string + temp_value.toFixed(precision) + ";";
			temp_value=raphe_tonic_firing_rate.get_BL_variable_value();
			value_string=value_string + temp_value.toFixed(precision) + ";";
			temp_value=pre_i_weights.get_BL_variable_value();
			value_string=value_string + temp_value.toFixed(precision) + ";";
			temp_value=pre_i_weights_2.get_BL_variable_value();
			value_string=value_string + temp_value.toFixed(precision) + ";";
			temp_value=early_i_weights.get_BL_variable_value();
			value_string=value_string + temp_value.toFixed(precision) + ";";
			temp_value=early_i_weights_1.get_BL_variable_value();
			value_string=value_string + temp_value.toFixed(precision) + ";";
			temp_value=post_i_weights.get_BL_variable_value();
			value_string=value_string + temp_value.toFixed(precision) + ";";
			temp_value=post_i_weights_1.get_BL_variable_value();
			value_string=value_string + temp_value.toFixed(precision) + ";";
			temp_value=post_i_weights_2.get_BL_variable_value();
			value_string=value_string + temp_value.toFixed(precision) + ";";
			temp_value=aug_e_weights.get_BL_variable_value();
			value_string=value_string + temp_value.toFixed(precision) + ";";
			temp_value=aug_e_weights_1.get_BL_variable_value();
			value_string=value_string + temp_value.toFixed(precision) + ";";
			temp_value=aug_e_weights_2.get_BL_variable_value();
			value_string=value_string + temp_value.toFixed(precision) + ";";
			temp_value=pre_i_weights_1.get_BL_variable_value();
			value_string=value_string + temp_value.toFixed(precision) + ";";
			temp_value=self_ifc_ex.get_BL_variable_value();
			value_string=value_string + temp_value.toFixed(precision) + ";";
			temp_value=pre_ifc_ex.get_BL_variable_value();
			value_string=value_string + temp_value.toFixed(precision) + ";";
			temp_value=pre_mfc_ex.get_BL_variable_value();
			value_string=value_string + temp_value.toFixed(precision) + ";";
			temp_value=early_ifc_in.get_BL_variable_value();
			value_string=value_string + temp_value.toFixed(precision) + ";";
			temp_value=early_mfc_in.get_BL_variable_value();
			value_string=value_string + temp_value.toFixed(precision) + ";";
			temp_value=post_ifc_in.get_BL_variable_value();
			value_string=value_string + temp_value.toFixed(precision) + ";";
			temp_value=post_mfc_in.get_BL_variable_value();
			value_string=value_string + temp_value.toFixed(precision) + ";";
			temp_value=aug_ifc_in.get_BL_variable_value();
			value_string=value_string + temp_value.toFixed(precision) + ";";
			temp_value=aug_mfc_in.get_BL_variable_value();
			value_string=value_string + temp_value.toFixed(precision) + ";";
			value_string=value_string + temp_value.toFixed(precision) + ";";
			temp_value=pre_i_weights_3.get_BL_variable_value();
			temp_value=rvrg_weights.get_BL_variable_value();
			value_string=value_string + temp_value.toFixed(precision) + ";";
			temp_value=rvrg_weights_1.get_BL_variable_value();
			value_string=value_string + temp_value.toFixed(precision) + ";";
			temp_value=rvrg_ifc_ex.get_BL_variable_value();
			value_string=value_string + temp_value.toFixed(precision) + ";";
			temp_value=rvrg_mfc_ex.get_BL_variable_value();
			value_string=value_string + temp_value.toFixed(precision) + ";";
			temp_value=dia_ifc_ex.get_BL_variable_value();
			value_string=value_string + temp_value.toFixed(precision) + ";";
			temp_value=dia_mfc_ex.get_BL_variable_value();
			value_string=value_string + temp_value.toFixed(precision) + ";";
			temp_value=ext_ifc_ex.get_BL_variable_value();
			value_string=value_string + temp_value.toFixed(precision) + ";";
			temp_value=ext_mfc_ex.get_BL_variable_value();
			value_string=value_string + temp_value.toFixed(precision) + ";";
			return (value_string)
		}
		
		function string_to_variable_values(value_string)
		{
			var tokens=value_string.split(";");
			var temp_value;
			temp_value=Number(tokens[0]);
			if (!isNaN(temp_value))
			{
				pons_tonic_firing_rate_slider.value=temp_value;
			}
			temp_value=Number(tokens[1]);
			if (!isNaN(temp_value))
			{
				rtn_tonic_firing_rate_slider.value=temp_value;
			}
			temp_value=Number(tokens[2]);
			if (!isNaN(temp_value))
			{
				raphe_tonic_firing_rate_slider.value=temp_value;
				
			}
			temp_value=Number(tokens[3]);
			if (!isNaN(temp_value))
			{
				pre_i_weights_slider.value=temp_value;
			}
			temp_value=Number(tokens[4]);
			if (!isNaN(temp_value))
			{
				pre_i_weights_2_slider.value=temp_value;
			}
			temp_value=Number(tokens[5]);
			if (!isNaN(temp_value))
			{	
				early_i_weights_slider.value=temp_value;
			}
			temp_value=Number(tokens[6]);
			if (!isNaN(temp_value))
			{	
				early_i_weights_1_slider.value=temp_value;
			}
			temp_value=Number(tokens[7]);
			if (!isNaN(temp_value))
			{	
				post_i_weights_slider.value=temp_value;
			}
			temp_value=Number(tokens[8]);
			if (!isNaN(temp_value))
			{	
				post_i_weights_1_slider.value=temp_value;
			}
			temp_value=Number(tokens[9]);
			if (!isNaN(temp_value))
			{	
				post_i_weights_2_slider.value=temp_value;
			}
			temp_value=Number(tokens[10]);
			if (!isNaN(temp_value))
			{	
				aug_e_weights_slider.value=temp_value;
			}
			temp_value=Number(tokens[11]);
			if (!isNaN(temp_value))
			{	
				aug_e_weights_1_slider.value=temp_value;
			}
			temp_value=Number(tokens[12]);
			if (!isNaN(temp_value))
			{	
				aug_e_weights_2_slider.value=temp_value;
			}
			temp_value=Number(tokens[13]);
			if (!isNaN(temp_value))
			{	
				pre_i_weights_1_slider.value=temp_value;
			}
			temp_value=Number(tokens[14]);
			if (!isNaN(temp_value))
			{	
				self_ifc_ex_slider.value=temp_value;
			}
			temp_value=Number(tokens[15]);
			if (!isNaN(temp_value))
			{	
				pre_ifc_ex_slider.value=temp_value;
			}
			temp_value=Number(tokens[16]);
			if (!isNaN(temp_value))
			{	
				pre_mfc_ex_slider.value=temp_value;
			}
			temp_value=Number(tokens[17]);
			if (!isNaN(temp_value))
			{	
				early_ifc_in_slider.value=temp_value;
			}
			temp_value=Number(tokens[18]);
			if (!isNaN(temp_value))
			{	
				early_mfc_in_slider.value=temp_value;
			}
			temp_value=Number(tokens[19]);
			if (!isNaN(temp_value))
			{	
				post_ifc_in_slider.value=temp_value;
			}
			temp_value=Number(tokens[20]);
			if (!isNaN(temp_value))
			{	
				post_mfc_in_slider.value=temp_value;
			}
			temp_value=Number(tokens[21]);
			if (!isNaN(temp_value))
			{	
				aug_ifc_in_slider.value=temp_value;
			}
			temp_value=Number(tokens[22]);
			if (!isNaN(temp_value))
			{	
				aug_mfc_in_slider.value=temp_value;
			}
			temp_value=Number(tokens[23]);
			if (!isNaN(temp_value))
			{
				pre_i_weights_3_slider.value=temp_value;
			}
			temp_value=Number(tokens[24]);
			if (!isNaN(temp_value))
			{	
				rvrg_weights_slider.value=temp_value;
			}
			temp_value=Number(tokens[25]);
			if (!isNaN(temp_value))
			{	
				rvrg_weights_1_slider.value=temp_value;
			}
			temp_value=Number(tokens[26]);
			if (!isNaN(temp_value))
			{	
				rvrg_ifc_ex_slider.value=temp_value;
			}
			temp_value=Number(tokens[27]);
			if (!isNaN(temp_value))
			{	
				rvrg_mfc_ex_slider.value=temp_value;
			}
			temp_value=Number(tokens[28]);
			if (!isNaN(temp_value))
			{	
				dia_ifc_ex_slider.value=temp_value;
			}
			temp_value=Number(tokens[29]);
			if (!isNaN(temp_value))
			{	
				dia_mfc_ex_slider.value=temp_value;
			}
			temp_value=Number(tokens[30]);
			if (!isNaN(temp_value))
			{	
				ext_ifc_ex_slider.value=temp_value;
			}
			temp_value=Number(tokens[31]);
			if (!isNaN(temp_value))
			{	
				ext_mfc_ex_slider.value=temp_value;
			}
		}
		
		Row
		{
			spacing: 30
		
			Column
			{
				spacing:20
				
				Row
				{
					spacing : 20
					BL_variable_qml
					{
						objectName: "pons_tonic_firing_rate"
						variable_name: "breathing_network/pons/tonic_firing_rate"
						id: pons_tonic_firing_rate
					}
					Label
					{
						text: "Pons TFR to Post I"
						color: window_parent.mode_name_colour
					}
					Column
					{
						Slider
						{
							id:pons_tonic_firing_rate_slider
							enabled: true
							style: SliderStyle
							{
								groove: Rectangle
								{
									implicitWidth: 300
									implicitHeight: 8
									color: "gray"
									radius: 8
									Rectangle
									{
										implicitWidth: styleData.handlePosition
										implicitHeight: 8
										color: window_parent.slider_groove_filled_colour
										radius: 8
									}
								}
								handle: Rectangle
								{
									anchors.centerIn: parent
									color: control.pressed ? "white" : "lightgray"
									border.color: "gray"
									border.width: 1
									implicitWidth: 18
									implicitHeight: 18
									radius: 9
								}
							}
							minimumValue: -1.0
							maximumValue: 1.0
							value: 0.0
							stepSize: 0.05
							orientation: Qt.Horizontal
							onValueChanged:
							{
								pons_tonic_firing_rate.set_BL_variable_value(value)
							}
						}
						Label
						{
							text: pons_tonic_firing_rate_slider.value
							color: window_parent.mode_value_colour
						}
					}
				}
				Row
				{
					spacing : 20
					BL_variable_qml
					{
						objectName: "rtn_tonic_firing_rate"
						variable_name: "breathing_network/rtn/tonic_firing_rate"
						id: rtn_tonic_firing_rate
					}
					Label
					{
						text: "RTN TFR to Aug-E"
						color: window_parent.mode_name_colour
					}
					Column
					{
						Slider
						{
							id:rtn_tonic_firing_rate_slider
							enabled: true
							style: SliderStyle
							{
								groove: Rectangle
								{
									implicitWidth: 300
									implicitHeight: 8
									color: "gray"
									radius: 8
									Rectangle
									{
										implicitWidth: styleData.handlePosition
										implicitHeight: 8
										color: window_parent.slider_groove_filled_colour
										radius: 8
									}
								}
								handle: Rectangle
								{
									anchors.centerIn: parent
									color: control.pressed ? "white" : "lightgray"
									border.color: "gray"
									border.width: 1
									implicitWidth: 18
									implicitHeight: 18
									radius: 9
								}
							}
							minimumValue: -1.0
							maximumValue: 1.0
							value: 0.
							stepSize: 0.05
							orientation: Qt.Horizontal
							onValueChanged:
							{
								rtn_tonic_firing_rate.set_BL_variable_value(value)
							}
						}
						Label
						{
							text: rtn_tonic_firing_rate_slider.value
							color: window_parent.mode_value_colour
						}
					}
				}
				Row
				{
					spacing : 20
					BL_variable_qml
					{
						objectName: "raphe_tonic_firing_rate"
						variable_name: "breathing_network/raphe/tonic_firing_rate"
						id: raphe_tonic_firing_rate
					}
					Label
					{
						text: "Raphe TFR to Pre-I"
						color: window_parent.mode_name_colour
					}
					Column
					{
						Slider
						{
							id:raphe_tonic_firing_rate_slider
							enabled: true
							style: SliderStyle
							{
								groove: Rectangle
								{
									implicitWidth: 300
									implicitHeight: 8
									color: "gray"
									radius: 8
									Rectangle
									{
										implicitWidth: styleData.handlePosition
										implicitHeight: 8
										color: window_parent.slider_groove_filled_colour
										radius: 8
									}
								}
								handle: Rectangle
								{
									anchors.centerIn: parent
									color: control.pressed ? "white" : "lightgray"
									border.color: "gray"
									border.width: 1
									implicitWidth: 18
									implicitHeight: 18
									radius: 9
								}
							}
							minimumValue: -1.0
							maximumValue: 1.0
							value: 0.0
							stepSize: 0.05
							orientation: Qt.Horizontal
							onValueChanged:
							{
								raphe_tonic_firing_rate.set_BL_variable_value(value)
							}
						}
						Label
						{
							text: raphe_tonic_firing_rate_slider.value
							color: window_parent.mode_value_colour
						}
					}
				}
				Row
				{
					spacing : 20
					BL_variable_qml
					{
						objectName: "pre_i_weights"
						variable_name: "breathing_network/weights_constants/output_pre_i[0]"
						id: pre_i_weights
					}
					Label
					{
						text: "Pre I to early I"
						color: window_parent.mode_name_colour
					}
					Column
					{
						Slider
						{
							id:pre_i_weights_slider
							enabled: true
							style: SliderStyle
							{
								groove: Rectangle
								{
									implicitWidth: 300
									implicitHeight: 8
									color: "gray"
									radius: 8
									Rectangle
									{
										implicitWidth: styleData.handlePosition
										implicitHeight: 8
										color: window_parent.slider_groove_filled_colour
										radius: 8
									}
								}
								handle: Rectangle
								{
									anchors.centerIn: parent
									color: control.pressed ? "white" : "lightgray"
									border.color: "gray"
									border.width: 1
									implicitWidth: 18
									implicitHeight: 18
									radius: 9
								}
							}
							minimumValue: -1.0
							maximumValue: 1
							value: 0.
							stepSize: 0.05
							orientation: Qt.Horizontal
							onValueChanged:
							{
								pre_i_weights.set_BL_variable_value(value)
							}
						}
						Label
						{
							text: pre_i_weights_slider.value
							color: window_parent.mode_value_colour
						}
					}
				}
				Row
				{
					spacing : 20
					BL_variable_qml
					{
						objectName: "pre_i_weights_2"
						variable_name: "breathing_network/weights_constants/output_pre_i[2]"
						id: pre_i_weights_2
					}
					Label
					{
						text: "Pre I to Aug E"
						color: window_parent.mode_name_colour
					}
					Column
					{
						Slider
						{
							id:pre_i_weights_2_slider
							enabled: true
							style: SliderStyle
							{
								groove: Rectangle
								{
									implicitWidth: 300
									implicitHeight: 8
									color: "gray"
									radius: 8
									Rectangle
									{
										implicitWidth: styleData.handlePosition
										implicitHeight: 8
										color: window_parent.slider_groove_filled_colour
										radius: 8
									}
								}
								handle: Rectangle
								{
									anchors.centerIn: parent
									color: control.pressed ? "white" : "lightgray"
									border.color: "gray"
									border.width: 1
									implicitWidth: 18
									implicitHeight: 18
									radius: 9
								}
							}
							minimumValue: -1.0
							maximumValue: 1
							value: 0.
							stepSize: 0.05
							orientation: Qt.Horizontal
							onValueChanged:
							{
								pre_i_weights_2.set_BL_variable_value(value)
							}
						}
						Label
						{
							text: pre_i_weights_2_slider.value
							color: window_parent.mode_value_colour
						}
					}
				}
				Row
				{
					spacing : 20
					BL_variable_qml
					{
						objectName: "early_i_weights"
						variable_name: "breathing_network/weights_constants/output_early_i[0]"
						id: early_i_weights
					}
					Label
					{
						text: "Early I to Post I"
						color: window_parent.mode_name_colour
					}
					Column
					{
						Slider
						{
							id:early_i_weights_slider
							enabled: true
							style: SliderStyle
							{
								groove: Rectangle
								{
									implicitWidth: 300
									implicitHeight: 8
									color: "gray"
									radius: 8
									Rectangle
									{
										implicitWidth: styleData.handlePosition
										implicitHeight: 8
										color: window_parent.slider_groove_filled_colour
										radius: 8
									}
								}
								handle: Rectangle
								{
									anchors.centerIn: parent
									color: control.pressed ? "white" : "lightgray"
									border.color: "gray"
									border.width: 1
									implicitWidth: 18
									implicitHeight: 18
									radius: 9
								}
							}
							minimumValue: -1.0
							maximumValue: 1
							value: 0.
							stepSize: 0.05
							orientation: Qt.Horizontal
							onValueChanged:
							{
								early_i_weights.set_BL_variable_value(value)
							}
						}
						Label
						{
							text: early_i_weights_slider.value
							color: window_parent.mode_value_colour
						}
					}
				}
				Row
				{
					spacing : 20
					BL_variable_qml
					{
						objectName: "early_i_weights_1"
						variable_name: "breathing_network/weights_constants/output_early_i[1]"
						id: early_i_weights_1
					}
					Label
					{
						text: "Early I to Aug E"
						color: window_parent.mode_name_colour
					}
					Column
					{
						Slider
						{
							id:early_i_weights_1_slider
							enabled: true
							style: SliderStyle
							{
								groove: Rectangle
								{
									implicitWidth: 300
									implicitHeight: 8
									color: "gray"
									radius: 8
									Rectangle
									{
										implicitWidth: styleData.handlePosition
										implicitHeight: 8
										color: window_parent.slider_groove_filled_colour
										radius: 8
									}
								}
								handle: Rectangle
								{
									anchors.centerIn: parent
									color: control.pressed ? "white" : "lightgray"
									border.color: "gray"
									border.width: 1
									implicitWidth: 18
									implicitHeight: 18
									radius: 9
								}
							}
							minimumValue: -1.0
							maximumValue: 1
							value: 0.
							stepSize: 0.05
							orientation: Qt.Horizontal
							onValueChanged:
							{
								early_i_weights_1.set_BL_variable_value(value)
							}
						}
						Label
						{
							text: early_i_weights_1_slider.value
							color: window_parent.mode_value_colour
						}
					}
				}
				Row
				{
					spacing : 20
					BL_variable_qml
					{
						objectName: "post_i_weights"
						variable_name: "breathing_network/weights_constants/output_post_i[0]"
						id: post_i_weights
					}
					Label
					{
						text: "Post I to Pre I"
						color: window_parent.mode_name_colour
					}
					Column
					{
						Slider
						{
							id:post_i_weights_slider
							enabled: true
							style: SliderStyle
							{
								groove: Rectangle
								{
									implicitWidth: 300
									implicitHeight: 8
									color: "gray"
									radius: 8
									Rectangle
									{
										implicitWidth: styleData.handlePosition
										implicitHeight: 8
										color: window_parent.slider_groove_filled_colour
										radius: 8
									}
								}
								handle: Rectangle
								{
									anchors.centerIn: parent
									color: control.pressed ? "white" : "lightgray"
									border.color: "gray"
									border.width: 1
									implicitWidth: 18
									implicitHeight: 18
									radius: 9
								}
							}
							minimumValue: -1.0
							maximumValue: 1
							value: 0.
							stepSize: 0.05
							orientation: Qt.Horizontal
							onValueChanged:
							{
								post_i_weights.set_BL_variable_value(value)
							}
						}
						Label
						{
							text: post_i_weights_slider.value
							color: window_parent.mode_value_colour
						}
					}
				}
				Row
				{
					spacing : 20
					BL_variable_qml
					{
						objectName: "post_i_weights_1"
						variable_name: "breathing_network/weights_constants/output_post_i[1]"
						id: post_i_weights_1
					}
					Label
					{
						text: "Post I to Early I"
						color: window_parent.mode_name_colour
					}
					Column
					{
						Slider
						{
							id:post_i_weights_1_slider
							enabled: true
							style: SliderStyle
							{
								groove: Rectangle
								{
									implicitWidth: 300
									implicitHeight: 8
									color: "gray"
									radius: 8
									Rectangle
									{
										implicitWidth: styleData.handlePosition
										implicitHeight: 8
										color: window_parent.slider_groove_filled_colour
										radius: 8
									}
								}
								handle: Rectangle
								{
									anchors.centerIn: parent
									color: control.pressed ? "white" : "lightgray"
									border.color: "gray"
									border.width: 1
									implicitWidth: 18
									implicitHeight: 18
									radius: 9
								}
							}
							minimumValue: -1.0
							maximumValue: 1
							value: 0.
							stepSize: 0.05
							orientation: Qt.Horizontal
							onValueChanged:
							{
								post_i_weights_1.set_BL_variable_value(value)
							}
						}
						Label
						{
							text: post_i_weights_1_slider.value
							color: window_parent.mode_value_colour
						}
					}
				}
				Row
				{
					spacing : 30
					BL_variable_qml
					{
						objectName: "post_i_weights_2"
						variable_name: "breathing_network/weights_constants/output_post_i[2]"
						id: post_i_weights_2
					}
					Label
					{
						text: "Post I to Aug E"
						color: window_parent.mode_name_colour
					}
					Column
					{
						Slider
						{
							id:post_i_weights_2_slider
							enabled: true
							style: SliderStyle
							{
								groove: Rectangle
								{
									implicitWidth: 300
									implicitHeight: 8
									color: "gray"
									radius: 8
									Rectangle
									{
										implicitWidth: styleData.handlePosition
										implicitHeight: 8
										color: window_parent.slider_groove_filled_colour
										radius: 8
									}
								}
								handle: Rectangle
								{
									anchors.centerIn: parent
									color: control.pressed ? "white" : "lightgray"
									border.color: "gray"
									border.width: 1
									implicitWidth: 18
									implicitHeight: 18
									radius: 9
								}
							}
							minimumValue: -1.0
							maximumValue: 1
							value: 0.
							stepSize: 0.05
							orientation: Qt.Horizontal
							onValueChanged:
							{
								post_i_weights_2.set_BL_variable_value(value)
							}
						}
						Label
						{
							text: post_i_weights_2_slider.value
							color: window_parent.mode_value_colour
						}
					}
				}
				Row
				{
					spacing : 20
					BL_variable_qml
					{
						objectName: "aug_e_weights"
						variable_name: "breathing_network/weights_constants/output_aug_e[0]"
						id: aug_e_weights
					}
					Label
					{
						text: "Aug E to Pre I"
						color: window_parent.mode_name_colour
					}
					Column
					{
						Slider
						{
							id:aug_e_weights_slider
							enabled: true
							style: SliderStyle
							{
								groove: Rectangle
								{
									implicitWidth: 300
									implicitHeight: 8
									color: "gray"
									radius: 8
									Rectangle
									{
										implicitWidth: styleData.handlePosition
										implicitHeight: 8
										color: window_parent.slider_groove_filled_colour
										radius: 8
									}
								}
								handle: Rectangle
								{
									anchors.centerIn: parent
									color: control.pressed ? "white" : "lightgray"
									border.color: "gray"
									border.width: 1
									implicitWidth: 18
									implicitHeight: 18
									radius: 9
								}
							}
							minimumValue: -1.0
							maximumValue: 1
							value: 0.
							stepSize: 0.05
							orientation: Qt.Horizontal
							onValueChanged:
							{
								aug_e_weights.set_BL_variable_value(value)
							}
						}
						Label
						{
							text: aug_e_weights_slider.value
							color: window_parent.mode_value_colour
						}
					}
				}
				Row
				{
					spacing : 20
					BL_variable_qml
					{
						objectName: "aug_e_weights_1"
						variable_name: "breathing_network/weights_constants/output_aug_e[1]"
						id: aug_e_weights_1
					}
					Label
					{
						text: "Aug E to Early I"
						color: window_parent.mode_name_colour
					}
					Column
					{
						Slider
						{
							id:aug_e_weights_1_slider
							enabled: true
							style: SliderStyle
							{
								groove: Rectangle
								{
									implicitWidth: 300
									implicitHeight: 8
									color: "gray"
									radius: 8
									Rectangle
									{
										implicitWidth: styleData.handlePosition
										implicitHeight: 8
										color: window_parent.slider_groove_filled_colour
										radius: 8
									}
								}
								handle: Rectangle
								{
									anchors.centerIn: parent
									color: control.pressed ? "white" : "lightgray"
									border.color: "gray"
									border.width: 1
									implicitWidth: 18
									implicitHeight: 18
									radius: 9
								}
							}
							minimumValue: -1.0
							maximumValue: 1
							value: 0.
							stepSize: 0.05
							orientation: Qt.Horizontal
							onValueChanged:
							{
								aug_e_weights_1.set_BL_variable_value(value)
							}
						}
						Label
						{
							text: aug_e_weights_1_slider.value
							color: window_parent.mode_value_colour
						}
					}
				}
				Row
				{
					spacing : 20
					BL_variable_qml
					{
						objectName: "aug_e_weights_2"
						variable_name: "breathing_network/weights_constants/output_aug_e[2]"
						id: aug_e_weights_2
					}
					Label
					{
						text: "Aug E to Post I"
						color: window_parent.mode_name_colour
					}
					Column
					{
						Slider
						{
							id:aug_e_weights_2_slider
							enabled: true
							style: SliderStyle
							{
								groove: Rectangle
								{
									implicitWidth: 300
									implicitHeight: 8
									color: "gray"
									radius: 8
									Rectangle
									{
										implicitWidth: styleData.handlePosition
										implicitHeight: 8
										color: window_parent.slider_groove_filled_colour
										radius: 8
									}
								}
								handle: Rectangle
								{
									anchors.centerIn: parent
									color: control.pressed ? "white" : "lightgray"
									border.color: "gray"
									border.width: 1
									implicitWidth: 18
									implicitHeight: 18
									radius: 9
								}
							}
							minimumValue: -1.0
							maximumValue: 1
							value: 0.
							stepSize: 0.05
							orientation: Qt.Horizontal
							onValueChanged:
							{
								aug_e_weights_2.set_BL_variable_value(value)
							}
						}
						Label
						{
							text: aug_e_weights_2_slider.value
							color: window_parent.mode_value_colour
						}
					}
				}
				Row
				{
					spacing : 20
					BL_variable_qml
					{
						objectName: "pre_i_weights_1"
						variable_name: "breathing_network/weights_constants/output_pre_i[1]"
						id: pre_i_weights_1
					}
					Label
					{
						text: "Pre I to Pre I"
						color: window_parent.mode_name_colour
					}
					Column
					{
						Slider
						{
							id: pre_i_weights_1_slider
							enabled: true
							style: SliderStyle
							{
								groove: Rectangle
								{
									implicitWidth: 300
									implicitHeight: 8
									color: "gray"
									radius: 8
									Rectangle
									{
										implicitWidth: styleData.handlePosition
										implicitHeight: 8
										color: window_parent.slider_groove_filled_colour
										radius: 8
									}
								}
								handle: Rectangle
								{
									anchors.centerIn: parent
									color: control.pressed ? "white" : "lightgray"
									border.color: "gray"
									border.width: 1
									implicitWidth: 18
									implicitHeight: 18
									radius: 9
								}
							}
							minimumValue: -1.0
							maximumValue: 1
							value: 0.
							stepSize: 0.05
							orientation: Qt.Horizontal
							onValueChanged:
							{
								pre_i_weights_1.set_BL_variable_value(value)
							}
						}
						Label
						{
							text: pre_i_weights_1_slider.value
							color: window_parent.mode_value_colour
						}
					}
				}
				
			}
			Column
			{
				spacing:20
			
				Row
				{
					spacing : 20
					BL_variable_qml
					{
						objectName: "self_ifc_ex"
						variable_name: "breathing_network/frequency_constants/self_ifc_ex"
						id: self_ifc_ex
					}
					Label
					{
						text: "Self IFC"
						color: window_parent.mode_name_colour
					}
					Column
					{
						Slider
						{
							id: self_ifc_ex_slider
							enabled: true
							style: SliderStyle
							{
								groove: Rectangle
								{
									implicitWidth: 300
									implicitHeight: 8
									color: "gray"
									radius: 8
									Rectangle
									{
										implicitWidth: styleData.handlePosition
										implicitHeight: 8
										color: window_parent.slider_groove_filled_colour
										radius: 8
									}
								}
								handle: Rectangle
								{
									anchors.centerIn: parent
									color: control.pressed ? "white" : "lightgray"
									border.color: "gray"
									border.width: 1
									implicitWidth: 18
									implicitHeight: 18
									radius: 9
								}
							}
							minimumValue: 0
							maximumValue: 100
							value: 50
							stepSize: 1.0
							orientation: Qt.Horizontal
							onValueChanged:
							{
								self_ifc_ex.set_BL_variable_value(value)
							}
						}
						Label
						{
							text: self_ifc_ex_slider.value
							color: window_parent.mode_value_colour
						}
					}
				}
				Row
				{
					spacing : 20
					BL_variable_qml
					{
						objectName: "pre_ifc_ex"
						variable_name: "breathing_network/frequency_constants/pre_ifc_ex"
						id: pre_ifc_ex
					}
					Label
					{
						text: "Pre I IFC"
						color: window_parent.mode_name_colour
					}
					Column
					{
						Slider
						{
							id: pre_ifc_ex_slider
							enabled: true
							style: SliderStyle
							{
								groove: Rectangle
								{
									implicitWidth: 300
									implicitHeight: 8
									color: "gray"
									radius: 8
									Rectangle
									{
										implicitWidth: styleData.handlePosition
										implicitHeight: 8
										color: window_parent.slider_groove_filled_colour
										radius: 8
									}
								}
								handle: Rectangle
								{
									anchors.centerIn: parent
									color: control.pressed ? "white" : "lightgray"
									border.color: "gray"
									border.width: 1
									implicitWidth: 18
									implicitHeight: 18
									radius: 9
								}
							}
							minimumValue: 0
							maximumValue: 100
							value: 50
							stepSize: 1.0
							orientation: Qt.Horizontal
							onValueChanged:
							{
								pre_ifc_ex.set_BL_variable_value(value)
							}
						}
						Label
						{
							text: pre_ifc_ex_slider.value
							color: window_parent.mode_value_colour
						}
					}
				}
				Row
				{
					spacing : 20
					BL_variable_qml
					{
						objectName: "pre_mfc_ex"
						variable_name: "breathing_network/frequency_constants/pre_mfc_ex"
						id: pre_mfc_ex
					}
					Label
					{
						text: "Pre I MFC"
						color: window_parent.mode_name_colour
					}
					Column
					{
						Slider
						{
							id: pre_mfc_ex_slider
							enabled: true
							style: SliderStyle
							{
								groove: Rectangle
								{
									implicitWidth: 300
									implicitHeight: 8
									color: "gray"
									radius: 8
									Rectangle
									{
										implicitWidth: styleData.handlePosition
										implicitHeight: 8
										color: window_parent.slider_groove_filled_colour
										radius: 8
									}
								}
								handle: Rectangle
								{
									anchors.centerIn: parent
									color: control.pressed ? "white" : "lightgray"
									border.color: "gray"
									border.width: 1
									implicitWidth: 18
									implicitHeight: 18
									radius: 9
								}
							}
							minimumValue: 0
							maximumValue: 100
							value: 50
							stepSize: 1.0
							orientation: Qt.Horizontal
							onValueChanged:
							{
								pre_mfc_ex.set_BL_variable_value(value)
							}
						}
						Label
						{
							text: pre_mfc_ex_slider.value
							color: window_parent.mode_value_colour
						}
					}
				}
				Row
				{
					spacing : 20
					BL_variable_qml
					{
						objectName: "early_ifc_in"
						variable_name: "breathing_network/frequency_constants/early_ifc_in"
						id: early_ifc_in
					}
					Label
					{
						text: "Early I IFC"
						color: window_parent.mode_name_colour
					}
					Column
					{
						Slider
						{
							id: early_ifc_in_slider
							enabled: true
							style: SliderStyle
							{
								groove: Rectangle
								{
									implicitWidth: 300
									implicitHeight: 8
									color: "gray"
									radius: 8
									Rectangle
									{
										implicitWidth: styleData.handlePosition
										implicitHeight: 8
										color: window_parent.slider_groove_filled_colour
										radius: 8
									}
								}
								handle: Rectangle
								{
									anchors.centerIn: parent
									color: control.pressed ? "white" : "lightgray"
									border.color: "gray"
									border.width: 1
									implicitWidth: 18
									implicitHeight: 18
									radius: 9
								}
							}
							minimumValue: 0
							maximumValue: 100
							value: 50
							stepSize: 1.0
							orientation: Qt.Horizontal
							onValueChanged:
							{
								early_ifc_in.set_BL_variable_value(value)
							}
						}
						Label
						{
							text: early_ifc_in_slider.value
							color: window_parent.mode_value_colour
						}
					}
				}
				Row
				{
					spacing : 20
					BL_variable_qml
					{
						objectName: "early_mfc_in"
						variable_name: "breathing_network/frequency_constants/early_mfc_in"
						id: early_mfc_in
					}
					Label
					{
						text: "Early I MFC"
						color: window_parent.mode_name_colour
					}
					Column
					{
						Slider
						{
							id: early_mfc_in_slider
							enabled: true
							style: SliderStyle
							{
								groove: Rectangle
								{
									implicitWidth: 300
									implicitHeight: 8
									color: "gray"
									radius: 8
									Rectangle
									{
										implicitWidth: styleData.handlePosition
										implicitHeight: 8
										color: window_parent.slider_groove_filled_colour
										radius: 8
									}
								}
								handle: Rectangle
								{
									anchors.centerIn: parent
									color: control.pressed ? "white" : "lightgray"
									border.color: "gray"
									border.width: 1
									implicitWidth: 18
									implicitHeight: 18
									radius: 9
								}
							}
							minimumValue: 0
							maximumValue: 100
							value: 50
							stepSize: 1.0
							orientation: Qt.Horizontal
							onValueChanged:
							{
								early_mfc_in.set_BL_variable_value(value)
							}
						}
						Label
						{
							text: early_mfc_in_slider.value
							color: window_parent.mode_value_colour
						}
					}
				}
				Row
				{
					spacing : 20
					BL_variable_qml
					{
						objectName: "post_ifc_in"
						variable_name: "breathing_network/frequency_constants/post_ifc_in"
						id: post_ifc_in
					}
					Label
					{
						text: "Post I IFC"
						color: window_parent.mode_name_colour
					}
					Column
					{
						Slider
						{
							id: post_ifc_in_slider
							enabled: true
							style: SliderStyle
							{
								groove: Rectangle
								{
									implicitWidth: 300
									implicitHeight: 8
									color: "gray"
									radius: 8
									Rectangle
									{
										implicitWidth: styleData.handlePosition
										implicitHeight: 8
										color: window_parent.slider_groove_filled_colour
										radius: 8
									}
								}
								handle: Rectangle
								{
									anchors.centerIn: parent
									color: control.pressed ? "white" : "lightgray"
									border.color: "gray"
									border.width: 1
									implicitWidth: 18
									implicitHeight: 18
									radius: 9
								}
							}
							minimumValue: 0
							maximumValue: 100
							value: 50
							stepSize: 1.0
							orientation: Qt.Horizontal
							onValueChanged:
							{
								post_ifc_in.set_BL_variable_value(value)
							}
						}
						Label
						{
							text: post_ifc_in_slider.value
							color: window_parent.mode_value_colour
						}
					}
				}
				Row
				{
					spacing : 20
					BL_variable_qml
					{
						objectName: "post_mfc_in"
						variable_name: "breathing_network/frequency_constants/post_mfc_in"
						id: post_mfc_in
					}
					Label
					{
						text: "Post I MFC"
						color: window_parent.mode_name_colour
					}
					Column
					{
						Slider
						{
							id: post_mfc_in_slider
							enabled: true
							style: SliderStyle
							{
								groove: Rectangle
								{
									implicitWidth: 300
									implicitHeight: 8
									color: "gray"
									radius: 8
									Rectangle
									{
										implicitWidth: styleData.handlePosition
										implicitHeight: 8
										color: window_parent.slider_groove_filled_colour
										radius: 8
									}
								}
								handle: Rectangle
								{
									anchors.centerIn: parent
									color: control.pressed ? "white" : "lightgray"
									border.color: "gray"
									border.width: 1
									implicitWidth: 18
									implicitHeight: 18
									radius: 9
								}
							}
							minimumValue: 0
							maximumValue: 100
							value: 50
							stepSize: 1.0
							orientation: Qt.Horizontal
							onValueChanged:
							{
								post_mfc_in.set_BL_variable_value(value)
							}
						}
						Label
						{
							text: post_mfc_in_slider.value
							color: window_parent.mode_value_colour
						}
					}
				}
				Row
				{
					spacing : 20
					BL_variable_qml
					{
						objectName: "aug_ifc_in"
						variable_name: "breathing_network/frequency_constants/aug_ifc_in"
						id: aug_ifc_in
					}
					Label
					{
						text: "Aug E IFC"
						color: window_parent.mode_name_colour
					}
					Column
					{
						Slider
						{
							id: aug_ifc_in_slider
							enabled: true
							style: SliderStyle
							{
								groove: Rectangle
								{
									implicitWidth: 300
									implicitHeight: 8
									color: "gray"
									radius: 8
									Rectangle
									{
										implicitWidth: styleData.handlePosition
										implicitHeight: 8
										color: window_parent.slider_groove_filled_colour
										radius: 8
									}
								}
								handle: Rectangle
								{
									anchors.centerIn: parent
									color: control.pressed ? "white" : "lightgray"
									border.color: "gray"
									border.width: 1
									implicitWidth: 18
									implicitHeight: 18
									radius: 9
								}
							}
							minimumValue: 0
							maximumValue: 100
							value: 50
							stepSize: 1.0
							orientation: Qt.Horizontal
							onValueChanged:
							{
								aug_ifc_in.set_BL_variable_value(value)
							}
						}
						Label
						{
							text: aug_ifc_in_slider.value
							color: window_parent.mode_value_colour
						}
					}
				}
				Row
				{
					spacing : 20
					BL_variable_qml
					{
						objectName: "aug_mfc_in"
						variable_name: "breathing_network/frequency_constants/aug_mfc_in"
						id: aug_mfc_in
					}
					Label
					{
						text: "Aug E MFC"
						color: window_parent.mode_name_colour
					}
					Column
					{
						Slider
						{
							id: aug_mfc_in_slider
							enabled: true
							style: SliderStyle
							{
								groove: Rectangle
								{
									implicitWidth: 300
									implicitHeight: 8
									color: "gray"
									radius: 8
									Rectangle
									{
										implicitWidth: styleData.handlePosition
										implicitHeight: 8
										color: window_parent.slider_groove_filled_colour
										radius: 8
									}
								}
								handle: Rectangle
								{
									anchors.centerIn: parent
									color: control.pressed ? "white" : "lightgray"
									border.color: "gray"
									border.width: 1
									implicitWidth: 18
									implicitHeight: 18
									radius: 9
								}
							}
							minimumValue: 0
							maximumValue: 100
							value: 50
							stepSize: 1.0
							orientation: Qt.Horizontal
							onValueChanged:
							{
								aug_mfc_in.set_BL_variable_value(value)
							}
						}
						Label
						{
							text: aug_mfc_in_slider.value
							color: window_parent.mode_value_colour
						}
					}
				}
				Row
				{
					spacing : 20
					BL_variable_qml
					{
					objectName: "pre_i_weights_3"
					variable_name: "breathing_network/weights_constants/output_pre_i[3]"
					id: pre_i_weights_3
					}
					Label
					{
					text: "Pre I to rVRG"
					color: window_parent.mode_name_colour
					}
					Column
					{
						Slider
						{
							id:pre_i_weights_3_slider
							enabled: true
							style: SliderStyle
							{
								groove: Rectangle
								{
									implicitWidth: 300
									implicitHeight: 8
									color: "gray"
									radius: 8
									Rectangle
									{
										implicitWidth: styleData.handlePosition
										implicitHeight: 8
										color: window_parent.slider_groove_filled_colour
										radius: 8
									}
								}
								handle: Rectangle
								{
									anchors.centerIn: parent
									color: control.pressed ? "white" : "lightgray"
									border.color: "gray"
									border.width: 1
									implicitWidth: 18
									implicitHeight: 18
									radius: 9
								}
							}
							minimumValue: -1.0
							maximumValue: 1
							value: 0.
							stepSize: 0.05
							orientation: Qt.Horizontal
							onValueChanged:
							{
								pre_i_weights_3.set_BL_variable_value(value)
							}
						}
						Label
						{	
							text: pre_i_weights_3_slider.value
							color: window_parent.mode_value_colour
						}
					}
				}
				Row
				{
					spacing : 20
					BL_variable_qml
					{
					objectName: "rvrg_weights"
					variable_name: "breathing_network/weights_constants/output_rvrg[0]"
					id: rvrg_weights
					}
					Label
					{
					text: "rVRG to Diaphragm"
					color: window_parent.mode_name_colour
					}
					Column
					{
						Slider
						{
							id:rvrg_weights_slider
							enabled: true
							style: SliderStyle
							{
								groove: Rectangle
								{
									implicitWidth: 300
									implicitHeight: 8
									color: "gray"
									radius: 8
									Rectangle
									{
										implicitWidth: styleData.handlePosition
										implicitHeight: 8
										color: window_parent.slider_groove_filled_colour
										radius: 8
									}
								}
								handle: Rectangle
								{
									anchors.centerIn: parent
									color: control.pressed ? "white" : "lightgray"
									border.color: "gray"
									border.width: 1
									implicitWidth: 18
									implicitHeight: 18
									radius: 9
								}
							}
							minimumValue: -1.0
							maximumValue: 1
							value: 0.
							stepSize: 0.05
							orientation: Qt.Horizontal
							onValueChanged:
							{
								rvrg_weights.set_BL_variable_value(value)
							}
						}
						Label
						{	
							text: rvrg_weights_slider.value
							color: window_parent.mode_value_colour
						}
					}
				}
				Row
				{
					spacing : 20
					BL_variable_qml
					{
					objectName: "rvrg_weights_1"
					variable_name: "breathing_network/weights_constants/output_rvrg[1]"
					id: rvrg_weights_1
					}
					Label
					{
					text: "rVRG to External Int"
					color: window_parent.mode_name_colour
					}
					Column
					{
						Slider
						{
							id:rvrg_weights_1_slider
							enabled: true
							style: SliderStyle
							{
								groove: Rectangle
								{
									implicitWidth: 300
									implicitHeight: 8
									color: "gray"
									radius: 8
									Rectangle
									{
										implicitWidth: styleData.handlePosition
										implicitHeight: 8
										color: window_parent.slider_groove_filled_colour
										radius: 8
									}
								}
								handle: Rectangle
								{
									anchors.centerIn: parent
									color: control.pressed ? "white" : "lightgray"
									border.color: "gray"
									border.width: 1
									implicitWidth: 18
									implicitHeight: 18
									radius: 9
								}
							}
							minimumValue: -1.0
							maximumValue: 1
							value: 0.
							stepSize: 0.05
							orientation: Qt.Horizontal
							onValueChanged:
							{
								rvrg_weights_1.set_BL_variable_value(value)
							}
						}
						Label
						{	
							text: rvrg_weights_1_slider.value
							color: window_parent.mode_value_colour
						}
					}
				}
				Row
				{
					spacing : 20
					BL_variable_qml
					{
						objectName: "rvrg_ifc_ex"
						variable_name: "breathing_network/frequency_constants/rvrg_ifc_ex"
						id: rvrg_ifc_ex
					}
					Label
					{
						text: "rVRG IFC"
						color: window_parent.mode_name_colour
					}
					Column
					{
						Slider
						{
							id: rvrg_ifc_ex_slider
							enabled: true
							style: SliderStyle
							{
								groove: Rectangle
								{
									implicitWidth: 300
									implicitHeight: 8
									color: "gray"
									radius: 8
									Rectangle
									{
										implicitWidth: styleData.handlePosition
										implicitHeight: 8
										color: window_parent.slider_groove_filled_colour
										radius: 8
									}
								}
								handle: Rectangle
								{
									anchors.centerIn: parent
									color: control.pressed ? "white" : "lightgray"
									border.color: "gray"
									border.width: 1
									implicitWidth: 18
									implicitHeight: 18
									radius: 9
								}
							}
							minimumValue: 0
							maximumValue: 100
							value: 50
							stepSize: 1.0
							orientation: Qt.Horizontal
							onValueChanged:
							{
								rvrg_ifc_ex.set_BL_variable_value(value)
							}
						}
						Label
						{
							text: rvrg_ifc_ex_slider.value
							color: window_parent.mode_value_colour
						}
					}
				}
				Row
				{
					spacing : 20
					BL_variable_qml
					{
						objectName: "rvrg_mfc_ex"
						variable_name: "breathing_network/frequency_constants/rvrg_mfc_ex"
						id: rvrg_mfc_ex
					}
					Label
					{
						text: "rVRG MFC"
						color: window_parent.mode_name_colour
					}
					Column
					{
						Slider
						{
							id: rvrg_mfc_ex_slider
							enabled: true
							style: SliderStyle
							{
								groove: Rectangle
								{
									implicitWidth: 300
									implicitHeight: 8
									color: "gray"
									radius: 8
									Rectangle
									{
										implicitWidth: styleData.handlePosition
										implicitHeight: 8
										color: window_parent.slider_groove_filled_colour
										radius: 8
									}
								}
								handle: Rectangle
								{
									anchors.centerIn: parent
									color: control.pressed ? "white" : "lightgray"
									border.color: "gray"
									border.width: 1
									implicitWidth: 18
									implicitHeight: 18
									radius: 9
								}
							}
							minimumValue: 0
							maximumValue: 100
							value: 50
							stepSize: 1.0
							orientation: Qt.Horizontal
							onValueChanged:
							{
								rvrg_mfc_ex.set_BL_variable_value(value)
							}
						}
						Label
						{
							text: rvrg_mfc_ex_slider.value
							color: window_parent.mode_value_colour
						}
					}
				}
				Row
				{
					spacing : 20
					BL_variable_qml
					{
						objectName: "dia_ifc_ex"
						variable_name: "breathing_network/frequency_constants/dia_ifc_ex"
						id: dia_ifc_ex
					}
					Label
					{
						text: "Diaphragm IFC"
						color: window_parent.mode_name_colour
					}
					Column
					{
						Slider
						{
							id: dia_ifc_ex_slider
							enabled: true
							style: SliderStyle
							{
								groove: Rectangle
								{
									implicitWidth: 300
									implicitHeight: 8
									color: "gray"
									radius: 8
									Rectangle
									{
										implicitWidth: styleData.handlePosition
										implicitHeight: 8
										color: window_parent.slider_groove_filled_colour
										radius: 8
									}
								}
								handle: Rectangle
								{
									anchors.centerIn: parent
									color: control.pressed ? "white" : "lightgray"
									border.color: "gray"
									border.width: 1
									implicitWidth: 18
									implicitHeight: 18
									radius: 9
								}
							}
							minimumValue: 0
							maximumValue: 100
							value: 50
							stepSize: 1.0
							orientation: Qt.Horizontal
							onValueChanged:
							{
								dia_ifc_ex.set_BL_variable_value(value)
							}
						}
						Label
						{
							text: dia_ifc_ex_slider.value
							color: window_parent.mode_value_colour
						}
					}
				}
				Row
				{
					spacing : 20
					BL_variable_qml
					{
						objectName: "dia_mfc_ex"
						variable_name: "breathing_network/frequency_constants/dia_mfc_ex"
						id: dia_mfc_ex
					}
					Label
					{
						text: "Diaphragm MFC"
						color: window_parent.mode_name_colour
					}
					Column
					{
						Slider
						{
							id: dia_mfc_ex_slider
							enabled: true
							style: SliderStyle
							{
								groove: Rectangle
								{
									implicitWidth: 300
									implicitHeight: 8
									color: "gray"
									radius: 8
									Rectangle
									{
										implicitWidth: styleData.handlePosition
										implicitHeight: 8
										color: window_parent.slider_groove_filled_colour
										radius: 8
									}
								}
								handle: Rectangle
								{
									anchors.centerIn: parent
									color: control.pressed ? "white" : "lightgray"
									border.color: "gray"
									border.width: 1
									implicitWidth: 18
									implicitHeight: 18
									radius: 9
								}
							}
							minimumValue: 0
							maximumValue: 100
							value: 50
							stepSize: 1.0
							orientation: Qt.Horizontal
							onValueChanged:
							{
								dia_mfc_ex.set_BL_variable_value(value)
							}
						}
						Label
						{
							text: dia_mfc_ex_slider.value
							color: window_parent.mode_value_colour
						}
					}
				}
				Row
				{
					spacing : 20
					BL_variable_qml
					{
						objectName: "ext_ifc_ex"
						variable_name: "breathing_network/frequency_constants/ext_ifc_ex"
						id: ext_ifc_ex
					}	
					Label
					{
						text: "External Int IFC"
						color: window_parent.mode_name_colour
					}
					Column
					{
						Slider
						{
							id: ext_ifc_ex_slider
							enabled: true
							style: SliderStyle
							{
								groove: Rectangle
								{
									implicitWidth: 300
									implicitHeight: 8
									color: "gray"
									radius: 8
									Rectangle
									{
										implicitWidth: styleData.handlePosition
										implicitHeight: 8
										color: window_parent.slider_groove_filled_colour
										radius: 8
									}	
								}
								handle: Rectangle
								{
									anchors.centerIn: parent
									color: control.pressed ? "white" : "lightgray"
									border.color: "gray"
									border.width: 1
									implicitWidth: 18
									implicitHeight: 18
									radius: 9
								}
							}
							minimumValue: 0
							maximumValue: 100
							value: 50
							stepSize: 1.0
							orientation: Qt.Horizontal
							onValueChanged:
							{
								ext_ifc_ex.set_BL_variable_value(value)
							}
						}
						Label
						{
							text: ext_ifc_ex_slider.value
							color: window_parent.mode_value_colour
						}
					}
				}
				Row
				{
					spacing : 20
					BL_variable_qml
					{
						objectName: "ext_mfc_ex"
						variable_name: "breathing_network/frequency_constants/ext_mfc_ex"
						id: ext_mfc_ex
					}
					Label
					{
						text: "External Int MFC"
						color: window_parent.mode_name_colour
					}
					Column
					{
						Slider
						{
							id: ext_mfc_ex_slider
							enabled: true
							style: SliderStyle
							{
								groove: Rectangle
								{
									implicitWidth: 300
									implicitHeight: 8
									color: "gray"
									radius: 8
									Rectangle
									{
										implicitWidth: styleData.handlePosition
										implicitHeight: 8
										color: window_parent.slider_groove_filled_colour
										radius: 8
									}	
								}
								handle: Rectangle
								{
									anchors.centerIn: parent
									color: control.pressed ? "white" : "lightgray"
									border.color: "gray"
									border.width: 1
									implicitWidth: 18
									implicitHeight: 18
									radius: 9
								}
							}
							minimumValue: 0
							maximumValue: 100
							value: 50
							stepSize: 1.0
							orientation: Qt.Horizontal
							onValueChanged:
							{
								ext_mfc_ex.set_BL_variable_value(value)
							}
						}
						Label
						{
							text: ext_mfc_ex_slider.value
							color: window_parent.mode_value_colour
						}
					}
				}
				Row
				{
					spacing : 20
					BL_variable_qml
					{
						objectName: "speech_tfr"
						variable_name: "breathing_network/speech/tonic_firing_rate"
						id: speech_tfr
					}
					Label
					{
						text: "Speech"
						color: window_parent.mode_name_colour
					}	
					Column
					{
						Slider
						{
							id: speech_tfr_slider
							enabled: true
							style: SliderStyle
							{
								groove: Rectangle
								{
									implicitWidth: 300
									implicitHeight: 8
									color: "gray"
									radius: 8
									Rectangle
									{
										implicitWidth: styleData.handlePosition
										implicitHeight: 8
										color: window_parent.slider_groove_filled_colour
										radius: 8
									}
								}
								handle: Rectangle
								{
									anchors.centerIn: parent
									color: control.pressed ? "white" : "lightgray"
									border.color: "gray"
									border.width: 1
									implicitWidth: 18
									implicitHeight: 18
									radius: 9
								}
							}
							minimumValue: 0
							maximumValue: 1
							value: 0
							stepSize: 1.0
							orientation: Qt.Horizontal
							onValueChanged:
							{
								speech_tfr.set_BL_variable_value(value)
							}
						}
						Label
						{
							text: speech_tfr_slider.value
							color: window_parent.mode_value_colour
						}
					}
				}
				TextArea
				{
					id: edit
					width: 0.75*parent.width
					height: 50
					wrapMode: TextEdit.Wrap
				}
				Row
				{
					spacing: 20
					Button
					{
						id: load_values_button
						text: "Load Values"
						height: 50
						onClicked:
						{
							window_parent.string_to_variable_values(edit.text);
						}
					}
					Button
					{
						id: save_values_button
						text: "Save Values"
						height: 50
						onClicked:
						{
							edit.text=window_parent.variable_values_to_string();
						}
					}
				}
				Row
				{
					spacing: 20
					Button
					{
						id: record_data_button
						text: "Start recording data"
						height: 50
						checkable: true
						checked: false
						BL_variable_qml
						{
							objectName: "file_export_trigger"
							variable_name: "file_export_constants/record"
							id: file_export_trigger
						}
						
						onClicked:
						{
							
							if (record_data_button.checked)
							{
								file_export_trigger.set_BL_variable_value(1.0);
								record_data_button.text="Stop recording data"
							}
							else
							{
								file_export_trigger.set_BL_variable_value(0.0);
								record_data_button.text="Start recording data"
							}
						}
					}
				}
			}
		}
	}
}