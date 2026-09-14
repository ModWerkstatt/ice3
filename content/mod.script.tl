local mod = {}

mod.postRunFn = function(captureParams : NativeLuaTable, configDict : {{string, string}}, allModParams : {string : {string : integer}} )

	local multipleUnitsToHide: {{string}} = {
		[1] = { 
			"mw_ice_3::/vehicle/train/ice_3/ice3_br403_fake.mu",
			"mw_ice_3::/vehicle/train/ice_3/ice3_br403_gruen_fake.mu",
			"mw_ice_3::/vehicle/train/ice_3/ice3_br403_klima_fake.mu",
			"mw_ice_3::/vehicle/train/ice_3/ice3_br403_pride_fake.mu",
			"mw_ice_3::/vehicle/train/ice_3/ice3_br403_serie2_fake.mu",
			"mw_ice_3::/vehicle/train/ice_3/ice3_br403_serie2_gruen_fake.mu",
			"mw_ice_3::/vehicle/train/ice_3/ice3_br403_serie2_klima_fake.mu",
			"mw_ice_3::/vehicle/train/ice_3/ice3_br406_europa_fake.mu",
			"mw_ice_3::/vehicle/train/ice_3/ice3_br406_fake.mu",
			"mw_ice_3::/vehicle/train/ice_3/ice3_br406_gruen_fake.mu",
			"mw_ice_3::/vehicle/train/ice_3/ice3_br406_hispeed_fake.mu",
			"mw_ice_3::/vehicle/train/ice_3/ice3_br406_klima_fake.mu",
			"mw_ice_3::/vehicle/train/ice_3/ice3_br406_ns_fake.mu",
		},
		[2] = { }
	}
	
	local selectedfilter_fake: integer = allModParams[getCurrentModId()].ice_3_fake

	for _, v in ipairs(multipleUnitsToHide[selectedfilter_fake]) do
		api.res.multipleUnitRep.setVisible(api.res.multipleUnitRep.find(v), false)
	end
	

end

return mod