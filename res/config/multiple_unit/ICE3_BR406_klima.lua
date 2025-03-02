function data()
return {
	vehicles = {
		{ name = "vehicle/train/ICE3/BR406/Apmzf406.0_klima.mdl", forward = true },
        { name = "vehicle/waggon/ICE3/BR406/Avmz406.1_klima.mdl", forward = true },
        { name = "vehicle/waggon/ICE3/BR406/Bvmz406.2_klima.mdl", forward = false },
        { name = "vehicle/waggon/ICE3/BR406/BRmz406.3_klima.mdl", forward = false },
        { name = "vehicle/waggon/ICE3/BR406/Bpmbz406.8_klima.mdl", forward = true },
        { name = "vehicle/waggon/ICE3/BR406/Bpmz406.7_klima.mdl", forward = true },
        { name = "vehicle/waggon/ICE3/BR406/Bpmz406.6_klima.mdl", forward = false },
        { name = "vehicle/train/ICE3/BR406/Bpmzf406.5_klima.mdl", forward = false },
	},
	name = _("ICE3_BR406_1_klima_name"),
	desc = _("ICE3_BR406_1_desc") .. _("ICE3_klima_desc"),
    groupFileName = "vehicle/train/ICE3/menu_ICE3.mdl",
}
end
