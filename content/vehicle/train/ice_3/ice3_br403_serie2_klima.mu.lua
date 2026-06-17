function data()
return {
	vehicles = {
		{ name = "apmzf403.0_klima_serie2.mdl", forward = true },
        { name = "avmz403.1_klima_serie2.mdl", forward = true },
        { name = "bvmz403.2_klima_serie2.mdl", forward = false },
        { name = "brmz403.3_klima_serie2.mdl", forward = false },
        { name = "bpmbz403.8_klima_serie2.mdl", forward = true },
        { name = "bpmz403.7_klima_serie2.mdl", forward = true },
        { name = "bpmz403.6_klima_serie2.mdl", forward = false },
        { name = "bpmzf403.5_klima_serie2.mdl", forward = false },
	},
	name = _("ICE3_BR403_2_klima_name"),
	desc = _("ICE3_BR403_2_desc") .. _("ICE3_klima_desc"),
    groupFileName = "menu_ice_3.mdl",
	filterTags = { "default" },
}
end
