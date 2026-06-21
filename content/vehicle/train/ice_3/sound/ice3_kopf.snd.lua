local soundsetutil = require "::/scripts/soundsetutil.lua"

function data()

local data = soundsetutil.makeSoundSet()

soundsetutil.addTrackParam01
(data, "ice3/stehen1.wav", 25.0,
				{
									{ 0.0 , 1.0 },
									{ 0.05, 0.5 },
									{ 0.1 , 0.1 },
									{ 0.11, 0.0 },
									{ 1.0 , 0.0 } },
				{
									{ .0, 1.0   },},
									{"vehicle", "speed01"})

soundsetutil.addTrackParam01
(data, "ice3/drive3.wav", 25.0,
				{
									{ 0.01,0.1 },
									{ 0.1, 0.4 },
									{ 0.15, 0.6 },
									{ 0.3,0.7 },
									{ 0.5, 0.8 },
									{ 0.8, 0.9 },
									{ 1.0, 1.0 } },
				{
									{ .0, 0.7 },
									{ 1.0, 1.0 } },
									{"vehicle", "speed01"})

soundsetutil.addTrackParam01
(data, "ice3/summen.wav", 25.0,
				{
									{ 0.0, 0.0 },
									{ 0.01, 0.5 },
									{ 0.02, 1.5 },
									{ 0.021, 1.5 },
									{ 0.1, 0.1 },
									{ 1.0, 0.0 } },
				{
									{ .0, 1.0 },
									{ 1.0, 1.0 } },
									{"vehicle", "speed01"})

soundsetutil.addTrackParam01
(data, "ice3/drive3.wav", 25.0,
				{
									{ 0.0000, 0.0 },
									{ 0.021, 0.30 },
									{ 0.024, 0.37 },
									{ 0.0300, 1.00 },
									{ 0.100, 1.0 },
									{ 0.1510, 0.0 },
									{ 1.0000, 0.0 } },
				{
									{ 0.0000, 0.00 },
									{ 0.0001, 0.300 },
									{ 0.0048, 0.300 },
									{ 0.0050, 0.340 },
									{ 0.0098, 0.340 },
									{ 0.0100, 0.380 },
									{ 0.0148, 0.380 },
									{ 0.0150, 0.400 },
									{ 0.0198, 0.400 },
									{ 0.0200, 0.440 },
									{ 0.0248, 0.440 },
									{ 0.0250, 0.490 },
									{ 0.0298, 0.490 },
									{ 0.0300, 0.540 },
									{ 0.0348, 0.540 },
									{ 0.0350, 0.590 },
									{ 0.0398, 0.590 },
									{ 0.0400, 0.660 },
									{ 0.0448, 0.660 },
									{ 0.0450, 0.740 },
									{ 0.0498, 0.740 },
									{ 0.0500, 0.780 },
									{ 0.0548, 0.780 },
									{ 0.0550, 0.890 },
									{ 0.0598, 0.890 },
									{ 0.0600, 1.000 },
									{ 1.0000, 1.000 } },
									{"vehicle", "speed01"})

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


soundsetutil.addEvent(data, "horn", { "ice3/horn.wav" }, 50.0)
soundsetutil.addTrackSqueal(data, "ice3/kurve.wav", 25.0)
soundsetutil.addTrackBrake(data, "ice3/bremsen.wav", 25.0, 1.0)

soundsetutil.addEvent(data, "openDoors", { "ice3/ice3_opendoor.wav" }, 5.0)
soundsetutil.addEvent(data, "closeDoors", { "ice3/ice3_closedoor.wav" }, 5.0)


return data

end
