local bbs2util = require "bbs2util"

function data()
return {
	tracks = {
		{ name = "vehicle/ice3/roll.wav", refDist = 20.5 },
		{ name = "vehicle/ice3/kurve.wav", refDist = 20.0 },
		{ name = "vehicle/ice3/bremsen.wav", refDist = 20.0 }
	},
	events = {
		openDoors = { names = { "vehicle/ice3/ice3_opendoor.wav" }, refDist = 10.0 },	
		closeDoors = { names = { "vehicle/ice3/ice3_closedoor.wav" }, refDist = 10.0 }
	},	

	updateFn = function (input)
		return {		
			tracks = {
				{ 
					gain = bbs2util.sampleCurve({ { 0.0, 0.0 }, { 1.0, 1.2 } }, input.speed01),
					pitch = bbs2util.sampleCurve({ { 0.0, 0.9 }, { 0.57, 1.00 }, { 1.0, 1.035 } }, input.speed01)
				},
				bbs2util.squeal(input.speed, input.sideForce, input.maxSideForce),
				bbs2util.brake(input.speed, input.brakeDecel, 0.4)
			},
			events = {
				openDoors = { gain = 1.00, pitch = 1.0 },
				closeDoors = { gain = 1.00, pitch = 1.0 }
			}
		}
	end
}
end