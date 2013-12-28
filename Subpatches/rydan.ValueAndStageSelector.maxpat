{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 279.0, 44.0, 744.0, 678.0 ],
		"bglocked" : 0,
		"defrect" : [ 279.0, 44.0, 744.0, 678.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "live.dial",
					"varname" : "Transp",
					"prototypename" : "transp",
					"patching_rect" : [ 352.0, 62.0, 44.0, 47.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-5",
					"parameter_enable" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"presentation_rect" : [ 4.0, 24.0, 44.0, 47.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_mmax" : 24.0,
							"parameter_mmin" : -24.0,
							"parameter_initial" : [ 0 ],
							"parameter_type" : 1,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "Transp",
							"parameter_modmax" : 24.0,
							"parameter_longname" : "Transp",
							"parameter_modmin" : -24.0,
							"parameter_linknames" : 1,
							"parameter_modmode" : 4,
							"parameter_info" : "",
							"parameter_units" : "",
							"parameter_order" : 0,
							"parameter_defer" : 0,
							"parameter_speedlim" : 1.0,
							"parameter_invisible" : 0,
							"parameter_steps" : 0,
							"parameter_annotation_name" : "",
							"parameter_exponent" : 1.0,
							"parameter_unitstyle" : 7
						}

					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 312.0, 198.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"id" : "obj-8",
					"numoutlets" : 0,
					"comment" : "AddedValue"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 193.0, 404.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"id" : "obj-6",
					"numoutlets" : 0,
					"comment" : "NextStage"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "+ 0",
					"fontname" : "Arial Bold",
					"patching_rect" : [ 316.0, 134.0, 32.5, 18.0 ],
					"numinlets" : 2,
					"id" : "obj-9",
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 303.0, 80.0, 25.0, 25.0 ],
					"numinlets" : 0,
					"id" : "obj-4",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : "Value"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 207.0, 77.0, 25.0, 25.0 ],
					"numinlets" : 0,
					"id" : "obj-3",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : "Bang"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"patching_rect" : [ 216.0, 254.0, 101.0, 89.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-1",
					"name" : "WeightStage.maxpat",
					"numoutlets" : 1,
					"args" : [  ],
					"outlettype" : [ "" ],
					"presentation_rect" : [ 50.0, 0.0, 100.0, 86.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"prototypename" : "M4L.border",
					"border" : 1,
					"patching_rect" : [ 55.0, 502.0, 120.0, 120.0 ],
					"bordercolor" : [ 0.415686, 0.454902, 0.52549, 1.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-56",
					"rounded" : 16,
					"grad2" : [ 0.415686, 0.454902, 0.52549, 1.0 ],
					"numoutlets" : 0,
					"presentation_rect" : [ 1.0, 1.0, 48.0, 84.0 ],
					"bgcolor" : [ 0.094118, 0.113725, 0.137255, 0.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-9", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ],
		"parameters" : 		{
			"obj-1::obj-76" : [ "live.numbox[5]", "live.numbox[2]", 0 ],
			"obj-1::obj-3" : [ "live.numbox", "live.numbox", 0 ],
			"obj-1::obj-58" : [ "live.numbox[3]", "live.numbox[2]", 0 ],
			"obj-5" : [ "Transp", "Transp", 0 ],
			"obj-1::obj-63" : [ "live.numbox[4]", "live.numbox[2]", 0 ],
			"obj-1::obj-5" : [ "live.numbox[7]", "live.numbox", 0 ],
			"obj-1::obj-4" : [ "live.numbox[6]", "live.numbox", 0 ]
		}

	}

}
