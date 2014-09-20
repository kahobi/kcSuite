dofile("QCVar.lua")
os.loadAPI("qc.lua")
--Starting location, middle block of end of last section

turtle.turnLeft()
turtle.forward()
turtle.forward()
turtle.turnRight()


turtle.select(SmokedQ)							--Colum 2 - Left Smoked, Send
for i = 1 , NumSect do
	qc.SDBlock()
end
qc.ColumR()


turtle.select(NetherQ)							--Colum 3, Left Nether, Return
for i = 1 , NumSect do
	qc.SDBlock()
end
qc.ColumL()

if EnderIO then
	turtle.select(NetherF) 						--Colum 4, Centre Nether, Send
else
	turtle.select(NetherQ
	for i = 1 , NumSect do
		qc.SDConduit()
	end
end
qc.ColumR()

turtle.select(NetherQ)							--Colum 5, Right Nether --Return
qc.SD1Conduit()
qc.SDless1Block()
if (NumSect >= 2) then
	for i = 1 (NumSect - 1) do
		qc.SDBlock()
	end
end
qc.ColumL()

turtle.select(SmokedQ)							--Colum 6, Right Smoked --Send
if (NumSect >= 2) then
	for i = 1 , (NumSect - 1) do
		qc.SDBlock()
	end
end
qc.SDless1Block()
qc.SD1Conduit()

turtle.turnRight()
turtle.forward()

turtle.select(SmokedF)											--Right Pillar, End of Line
qc.SDPillarC()

qc.DimBack()
qc.DimDown()

turtle.select(SmokedQ)											--Left Pillar, End of Line
qc.SDPillarB()

if (NumSect >= 2) then
	turtle.turnRight()
	qc.DimForward()
	qc.DimDown()
	turtle.turnLeft()
	for i = 1 , (math.floor(NumSect / 2)) do
		qc.SDPillarB()							--Left Pillar
		qc.DimForward()
		qc.DimDown()
		qc.SDPillarB()							--Right Pillar
		if (NumSect >= 3)then
			turtle.turnRight()
			qc.dimForward()
			qc.DimDown()
			qc.SDPillarB()						--Right Pillar
			turtle.turnLeft()
			qc.DimBack()
			qc.DimDown()
			qc.SDPillarB()						--Left Pillar
		end
	end
end
if (NumSect % > 0) then
	turtle.forward()
	turtle.forward()
	turtle.forward()
	turtle.turnLeft()
else
	turtle.back()
	turtle.back()
	turtle.back()
	turtle.turnLeft()
end
qc.DimDown()
qc.DimBack()