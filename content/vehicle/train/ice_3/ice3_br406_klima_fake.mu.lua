function data()
return {
	vehicles = {
		{ name = "vehicle/train/ICE3/BR406/apmzf406.0_klima_fake.mdl", forward = true },
        { name = "vehicle/waggon/ICE3/BR406/avmz406.1_klima_fake.mdl", forward = true },
        { name = "vehicle/waggon/ICE3/BR406/bvmz406.2_klima_fake.mdl", forward = false },
        { name = "vehicle/waggon/ICE3/BR406/brmz406.3_klima_fake.mdl", forward = false },
        { name = "vehicle/waggon/ICE3/BR406/bpmbz406.8_klima_fake.mdl", forward = true },
        { name = "vehicle/waggon/ICE3/BR406/bpmz406.7_klima_fake.mdl", forward = true },
        { name = "vehicle/waggon/ICE3/BR406/bpmz406.6_klima_fake.mdl", forward = false },
        { name = "vehicle/train/ICE3/BR406/bpmzf406.5_klima_fake.mdl", forward = false },
	},
	name = _("ICE3_BR406_1_klima_fake_name"),
	desc = _("ICE3_BR406_1_desc") .. _("ICE3_klima_desc"),
    groupFileName = "menu_ice_3_fake.mdl",
	filterTags = { "default" },
}
end
