local bbs2util = require "bbs2util"

function data()
return {
	tracks = {
		{ name = "vehicle/ice3/stehen1.wav", refDist = 25.0 },
		{ name = "vehicle/ice3/drive3.wav", refDist = 25.0 },
		{ name = "vehicle/ice3/summen.wav", refDist = 25.0 },
		{ name = "vehicle/ice3/drive3.wav", refDist = 25.0 },
		{ name = "vehicle/ice3/roll.wav", refDist = 25.0 },
		{ name = "vehicle/ice3/kurve.wav", refDist = 20.0 },
		{ name = "vehicle/ice3/bremsen.wav", refDist = 25.0 },

	},
	events =  {
		horn = { names = { "vehicle/ice3/Horn.wav" }, refDist = 25.0 },
		openDoors = { names = { "vehicle/ice3/ice3_opendoor.wav" }, refDist = 10.0 },	
		closeDoors = { names = { "vehicle/ice3/ice3_closedoor.wav" }, refDist = 10.0 }
	},

	updateFn = function (input)
		local axleRefWeight = 10.0
		
		return {
			tracks = {
				{ 
					gain = bbs2util.sampleCurve({ 
									{ 0.0 , 1.0 }, 
									{ 0.05, 0.5 }, 
									{ 0.1 , 0.1 },
									{ 0.11, 0.0 },
									{ 1.0 , 0.0 } }, input.speed01),
					pitch = bbs2util.sampleCurve({ 
									{ .0, 1.0 },
									{ 1.0, 1.0 } }, input.speed01)
				},
				{ 
					gain = bbs2util.sampleCurve({ 
									{ 0.01,0.1 }, 
									{ 0.1, 0.4 },
									{ 0.15, 0.6 },
									{ 0.3,0.7 }, 
									{ 0.5, 0.8 },
									{ 0.8, 0.9 },
									{ 1.0, 1.0 } }, input.power01),
					pitch = bbs2util.sampleCurve({ 
									{ .0, 0.7 },
									{ 1.0, 1.0 } }, input.power01)
				},
				{ 
					gain = bbs2util.sampleCurve({ 
									{ 0.0, 0.0 }, 
									{ 0.01, 0.5 },
									{ 0.02, 1.5 },
									{ 0.021, 1.5 },
									{ 0.1, 0.1 },
									{ 1.0, 0.0 } }, input.speed01),
					pitch = bbs2util.sampleCurve({ 
									{ .0, 1.0 },
									{ 1.0, 1.0 } }, input.speed01)
				},
				{ 
					gain = bbs2util.sampleCurve({ { 0.0000, 0.0 }, { 0.021, 0.30 }, { 0.024, 0.37 }, { 0.0300, 1.00 }, { 0.100, 1.0 }, { 0.1510, 0.0 }, { 1.0000, 0.0 } }, input.speed01),
					pitch = bbs2util.sampleCurve({ 	{ 0.0000, 0.00 },	{ 0.0001, 0.300 }, { 0.0048, 0.300 },  { 0.0050, 0.340 }, { 0.0098, 0.340 },  { 0.0100, 0.380 }, { 0.0148, 0.380 },  { 0.0150, 0.400 }, { 0.0198, 0.400 },
																				{ 0.0200, 0.440 }, { 0.0248, 0.440 },  { 0.0250, 0.490 }, { 0.0298, 0.490 },  { 0.0300, 0.540 }, { 0.0348, 0.540 },  { 0.0350, 0.590 }, { 0.0398, 0.590 }, 
																				{ 0.0400, 0.660 }, { 0.0448, 0.660 },  { 0.0450, 0.740 }, { 0.0498, 0.740 },  { 0.0500, 0.780 }, { 0.0548, 0.780 },  { 0.0550, 0.890 }, { 0.0598, 0.890 }, 
																				{ 0.0600, 1.000 }, { 1.0000, 1.000 } }, input.speed01),
				},
				{ 
					gain = bbs2util.sampleCurve({ { 0.0, 0.0 }, { 1.0, 1.2 } }, input.speed01),
					pitch = bbs2util.sampleCurve({ { 0.0, 0.9 }, { 0.57, 1.00 }, { 1.0, 1.033 } }, input.speed01)
				},						
				bbs2util.squeal(input.speed, input.sideForce, input.maxSideForce),
				bbs2util.brake(input.speed, input.brakeDecel, 1.2),
			},
			events = {
			}
		}
	end
}
end
