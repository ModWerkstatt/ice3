function data()
return {
	vehicles = {
		{ name = "vehicle/train/ICE3/BR403/Apmzf403.0_klima_serie2.mdl", forward = true },
        { name = "vehicle/waggon/ICE3/BR403/Avmz403.1_klima_serie2.mdl", forward = true },
        { name = "vehicle/waggon/ICE3/BR403/Bvmz403.2_klima_serie2.mdl", forward = false },
        { name = "vehicle/waggon/ICE3/BR403/BRmz403.3_klima_serie2.mdl", forward = false },
        { name = "vehicle/waggon/ICE3/BR403/Bpmbz403.8_klima_serie2.mdl", forward = true },
        { name = "vehicle/waggon/ICE3/BR403/Bpmz403.7_klima_serie2.mdl", forward = true },
        { name = "vehicle/waggon/ICE3/BR403/Bpmz403.6_klima_serie2.mdl", forward = false },
        { name = "vehicle/train/ICE3/BR403/Bpmzf403.5_klima_serie2.mdl", forward = false },
	},
	name = _("ICE3_BR403_2_klima_name"),
	desc = _("ICE3_BR403_2_desc") .. _("ICE3_klima_desc"),
    groupFileName = "vehicle/train/ICE3/menu_ICE3.mdl",
}
end
