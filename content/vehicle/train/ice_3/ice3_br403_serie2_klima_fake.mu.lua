function data()
return {
	vehicles = {
		{ name = "apmzf403.0_klima_serie2_fake.mdl", forward = true },
        { name = "avmz403.1_klima_serie2_fake.mdl", forward = true },
        { name = "bvmz403.2_klima_serie2_fake.mdl", forward = false },
        { name = "brmz403.3_klima_serie2_fake.mdl", forward = false },
        { name = "bpmbz403.8_klima_serie2_fake.mdl", forward = true },
        { name = "bpmz403.7_klima_serie2_fake.mdl", forward = true },
        { name = "bpmz403.6_klima_serie2_fake.mdl", forward = false },
        { name = "bpmzf403.5_klima_serie2_fake.mdl", forward = false },
	},
	name = _("ICE3_BR403_2_klima_fake_name"),
	desc = _("ICE3_BR403_2_desc") .. _("ICE3_klima_desc"),
    groupFileName = "menu_ice_3_fake.mdl",
	filterTags = { "default" },
}
end
