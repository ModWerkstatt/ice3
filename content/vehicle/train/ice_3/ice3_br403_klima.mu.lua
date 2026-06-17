function data()
return {
	vehicles = {
		{ name = "apmzf403.0_klima.mdl", forward = true },
        { name = "avmz403.1_klima.mdl", forward = true },
        { name = "bvmz403.2_klima.mdl", forward = false },
        { name = "brmz403.3_klima.mdl", forward = false },
        { name = "bpmbz403.8_klima.mdl", forward = true },
        { name = "bpmz403.7_klima.mdl", forward = true },
        { name = "bpmz403.6_klima.mdl", forward = false },
        { name = "bpmzf403.5_klima.mdl", forward = false },
	},
	name = _("ICE3_BR403_1_klima_name"),
	desc = _("ICE3_BR403_1_desc") .. _("ICE3_klima_desc"),
    groupFileName = "menu_ice_3.mdl",
	filterTags = { "default" },
}
end
