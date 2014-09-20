dofile("QCVar.lua")



--Starting location, middle block of end of last section

turtle.turnLeft()
turtle.forward()
turtle.forward()
turtle.turnRight()

turtle.select(SmokedQ)
for i = 1 , NumSect do						--Colum 2 - Left smoked, Send
	for i = 1 , SectDim do
		turtle.forward()
		turtle.placeDown()
	end
end
turtle.forward()
turtle.turnRight()
turtle.forward()
turtle.turnRight()


turtle.select(NetherQ)
for i = 1 , NumSect do							--Colum 3, - Left Nether, Return
	for i = 1 , SectDim do
		turtle.forward()
		turtle.placeDown()
	end
end
turtle.forward()
turtle.turnLeft()
turtle.forward()
turtle.turnLeft()


for i = 1 , NumSect do 						--Colum 4, - Centre Nether --Send
	for i = 1 , SectDim do
		turtle.select(NetherF)
		turtle.forward()
		turtle.placeDown()
		if MENetwork then
			turtle.select(IOMECon)
			turtle.placeDown()
		end
		if EnNetwork then
			turtle.select(IOEnCon)
			turtle.placeDown()
		end
	end
end
turtle.forward()
turtle.turnRight()
turtle.forward()
turtle.turnRight()



turtle.select(NetherF)							--Colum 5, - Right Nether --Return
turtle.forward()
turtle.placeDown()
if MENetwork then
	turtle.select(IOMECon)
	turtle.placeDown()
end
if EnNetwork then
	turtle.select(IOEnCon)
	turtle.placeDown()
end
turtle.select(NetherQ)
for i = 1 , (SectDim-1)  do
	turtle.forward()
	turtle.placeDown()
end
turtle.select(NetherQ)
if (NumSect >= 2) then
	for i = 1 , (NumSect - 1) do
		for i = 1 , SectDim do
			turtle.forward()
			turtle.placeDown()
		end
	end
end
turtle.forward()
turtle.turnLeft()
turtle.forward()
turtle.turnLeft()

turtle.select(SmokedQ)
if (NumSect >= 2) then
	for i = 1 , (NumSect - 1) do								--Colum 6, - Right Smoked --Send
		for i = 1 , SectDim do
			turtle.forward()
			turtle.placeDown()
		end
	end
end
for i = 1 , (SectDim-1) do
	turtle.forward()
	turtle.placeDown()
end
turtle.select(SmokedF)
turtle.forward()
turtle.placeDown()
if MENetwork then
	turtle.select(IOMECon)
	turtle.placeDown()
end
if EnNetwork then
	turtle.select(IOEnCon)
	turtle.placeDown()
end

turtle.turnRight()
turtle.forward()

turtle.select(SmokedF)											--Right Pillar, End of Line
for i = 1 , SectDim do
	turtle.placeDown()
	if MENetwork then
		turtle.select(IOMECon)
		turtle.placeDown()
	end
	if EnNetwork then
		turtle.select(IOEnCon)
		turtle.placeDown()
	end
turtle.up()
end

for i = 1 , SectDim do
	turtle.back()
end

for i = 1 , SectDim do
	turtle.down()
end

turtle.select(SmokedQ)											--Left Pillar, End of Line
for i = 1 , SectDim do
	turtle.placeDown()
	turtle.up()
end

if (NumSect >= 2) then
	turtle.turnRight
	for i = 1 , SectDim do
		turtle.forward()
	end
	for i = 1 , SectDim do
		turtle.down()
	end
	turtle.turnLeft()
	for i = 1 , (math.floor(NumSect / 2)) do
		for i = 1 , SectDim do		--Left Pillar
			turtle.placeDown()
			turtle.up()
		end
		for i = 1 , SectDim do
			turtle.forward()
		end
		for i = 1 , SectDim do
			turtle.down()
		end
		for i = 1 , SectDim do		--Right Pillar
			turtle.placeDown()
			turtle.up()
		end
		if (NumSect >= 3)then		--Return for next row
			turtle.turnRight()
			for i = 1 , SectDim do
				turtle.forward()
			end
			for i = 1 , SectDim do
				turtle.down()
			end
			for i = 1 , SectDim do		--Right Pillar
				turtle.placeDown()
				turtle.up()
			end
			turtle.turnLeft()
			for i = 1 , SectDim do
				turtle.back()
			end
			for i = 1 , SectDim do
				turtle.down()
			end
			for i = 1 , SectDim do		--Left Pillar
				turtle.placeDown()
				turtle.up()
			end
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
for i = 1 , SectDim do
	turtle.down()
end	
for i = 1 , SectDim do
	turtle.back()
end