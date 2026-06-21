local soundsetutil = require "::/scripts/soundsetutil.lua"

function data()

local data = soundsetutil.makeSoundSet()

soundsetutil.addTrackParam01
(data, "ice3/roll.wav", 25.0,
				{
									{ 0.0000, 0.0 },
									{ 0.2000, 0.0 },
									{ 1.0000, 1.0 } },
				{
									{ 0.0000, 1.00 },
									{ 1.0000, 1.00 } },
									{"vehicle", "speed01"})


soundsetutil.addTrackSqueal(data, "ice3/kurve.wav", 25.0)
soundsetutil.addTrackBrake(data, "ice3/bremsen.wav", 25.0, 1.0)

soundsetutil.addEvent(data, "openDoors", { "ice3/ice3_opendoor.wav" }, 5.0)
soundsetutil.addEvent(data, "closeDoors", { "ice3/ice3_closedoor.wav" }, 5.0)


return data

end
