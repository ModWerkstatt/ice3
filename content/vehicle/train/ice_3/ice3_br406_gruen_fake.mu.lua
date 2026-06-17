function data()
return {
	vehicles = {
		{ name = "vehicle/train/ICE3/BR406/apmzf406.0_gruen_fake.mdl", forward = true },
        { name = "vehicle/waggon/ICE3/BR406/avmz406.1_gruen_fake.mdl", forward = true },
        { name = "vehicle/waggon/ICE3/BR406/bvmz406.2_gruen_fake.mdl", forward = false },
        { name = "vehicle/waggon/ICE3/BR406/brmz406.3_gruen_fake.mdl", forward = false },
        { name = "vehicle/waggon/ICE3/BR406/bpmbz406.8_gruen_fake.mdl", forward = true },
        { name = "vehicle/waggon/ICE3/BR406/bpmz406.7_gruen_fake.mdl", forward = true },
        { name = "vehicle/waggon/ICE3/BR406/bpmz406.6_gruen_fake.mdl", forward = false },
        { name = "vehicle/train/ICE3/BR406/bpmzf406.5_gruen_fake.mdl", forward = false },
	},
	name = _("ICE3_BR406_1_gruen_fake_name"),
	desc = _("ICE3_BR403_1_desc") .. _("ICE3_gruen_desc"),
    groupFileName = "menu_ice_3_fake.mdl",
	filterTags = { "default" },
}
end
