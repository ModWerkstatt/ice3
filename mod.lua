function data()
return {
	info = {
		minorVersion = 1,
		severityAdd = "NONE",
		severityRemove = "WARNING",
		name = _("mod_name"),
		description = _("mod_desc"),
		tags = { "europe", "train", "deutsche bahn", "ice", "high speed" },

        params = {
			{
				key = "ice3fake",
				name = _("Fake"),
				values = { "No", "Yes", },
				tooltip = _("option_fake_ice3_desc"),
				defaultIndex = 0,
			},
		},

		dependencies = { },

        requiredMods = { },

		authors = {
		    {
		        name = "ModWerkstatt",
		        role = "CREATOR",
		    },
		},
		url = "",
		visible = true,
	},

	runFn = function (settings, modParams)

	    local hidden = {
			["BR403_fake.lua"] = true,
			["BR406_fake.lua"] = true,
			["BR403_europa_fake.lua"] = true,
			["BR406_europa_fake.lua"] = true,
			["BR403_gruen_fake.lua"] = true,
			["BR406_gruen_fake.lua"] = true,
			["BR403_klima_fake.lua"] = true,
			["BR406_klima_fake.lua"] = true,
			["BR403_serie2_fake.lua"] = true,
			["BR403_serie2_gruen_fake.lua"] = true,
			["BR403_serie2_klima_fake.lua"] = true,
            ["BR406_NS_fake.lua"] = true,
            ["BR406_hispeed_fake.lua"] = true,
            ["BR403_pride_fake.lua"] = true,
		}

		local modelFilter = function(fileName, data)
			local modelName = fileName:match('/ICE3_([^/]*.lua)')
			return (modelName==nil or hidden[modelName]~=true)
		end

		if modParams[getCurrentModId()] ~= nil then
			local params = modParams[getCurrentModId()]
			if params["ice3fake"] == 0 then
				addFileFilter("multipleUnit", modelFilter)
			end
		else
			addFileFilter("multipleUnit", modelFilter)
		end
	end
	}
end
