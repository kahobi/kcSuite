dofile("QCVar.lua")
--local NumSect = 0				--The number of sections to be built, colum by colum
--local SectDim = 6				--7th segment in a section is shared, the start of the next.
--local NetherQ = 1
--local SmokedQ = 10



--Starting location, start at an edge centre block facing the empty space you wish to build in.  All space ahead must be clear
turtle.turnLeft()
turtle.forward()
turtle.forward()
turtle.turnRight()

turtle.select(SmokedQ)
for i = 1 , NumSect do								--Colum 2 - Left smoked, Send
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
for i =1 , NumSect do								--Colum 3, - Left Nether, Return
	for i = 1 , SectDim do
		turtle.forward()
		turtle.placeDown()
	end
end

turtle.forward()
turtle.turnLeft()
turtle.forward()
turtle.turnLeft()
for i = 1 , NumSect do 								--Colum 4, - Centre Nether --Send
	for i = 1 , SectDim do
		turtle.forward()
		turtle.placeDown()
	end
end

turtle.forward()
turtle.turnRight()
turtle.forward()
turtle.turnRight()
for i = 1 , NumSect do								--Colum 5, - Right Nether --Return
	for i = 1 , SectDim do
		turtle.forward()
		turtle.placeDown()
	end
end

turtle.forward()
turtle.turnLeft()
turtle.forward()
turtle.turnLeft()
turtle.select(SmokedQ)
for i = 1 , NumSect do								--Colum 6, - Right Smoked --Send
	for i = 1 , SectDim do
		turtle.forward()
		turtle.placeDown()
	end
end

turtle.turnLeft()									--Return to start
turtle.forward()
turtle.forward()
turtle.turnRight()
for i = 1 , NumSect do
	for i = 1 , SectDim do
	turtle.back()
	end
end