local NumSect = 0				--The number of sections going forward -eventually to become a section total
											--Perahps this should be indicating just the type of section the program is making, so I can expand on it and chose more 
											--than one type of section to be built, and a control program running the construction programs

local SectLen = 6				--7th segment in a section is shared, the start of the next.

local MENetwork = true			--Adding Conduits to the floor, also accounts for facades
local EnNetwork = true

--print("Please specify the number of sections to be built. Recommended not to exceeed 10. "local NumSect = ..."")

--print("Please specify if ME Conduit is to to be added, true/false "local MENCond = ..."")
--	if MENCond ~= true or MENCond ~= false then
--		repeat
--			print("Please specify true or false "local MENCond = ..."")
--		until(MENConD == true or MENCond == false)
--	end

--print("Add Energy Conduit to Hall? true/false "local EneCond = ..."")
--	if EneCond ~= true or EneCond ~= false then
--		repeat
--			print("Please specify true or false "local EneCond = ..."")
--		until(EneCond == true or EneCond == false)
--	end
-- 

local NetherQ = 16
local SmokedQ = 15
local NetherF = 14
local SmokedF = 13
local IOMECon = 12
local IOEnCon = 11

--Starting location, start at an edge centre block facing the empty space you wish to build in.  All space ahead must be clear
turtle.turnLeft()
turtle.forward()
turtle.forward()
turtle.turnRight()
 
turtle.select(SmokedQ)
for i = 1 , NumSect do	--Colum 2 - Left smoke, Send
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
for i =1 , NumSect do	--Colum 3, - Left Nether, Return
	for i = 1 , SectDim do
		turtle.forward()
		turtle.placeDown()
	end
end

turtle.forward()
turtle.turnLeft()
turtle.forward()
turtle.turnLeft()

for i = 1 , NumSect do --Colum 4, - Centre Nether or Facade, Send
		if (not MENetwork and not EnNetwork) then
			turtle.select(NetherQ)
			for i = 1 , SectDim do
				turtle.forward()
				turtle.placeDown()
			end
		else
		for i = 1 , SectDim do
			turtle.select(NetherF)
			turtle.forward()
			turtle.placeDown()
			if MENetwork then
				turtle.select(IOMECon)
				turtle.placeDown()
			and if EnNetwork then
				turtle.select(IOEnCon)
				turtle.placeDown()
			end
		else
			turtle.forward()
			turtle.placeDown()
		end
	end
end

turtle.forward()
turtle.turnRight()
turtle.forward()
turtle.turnRight()

for i = 1 , NumSect do
	if (not MENetwork and not EnNetwork) then	--Colum 5, - Left Nether, Return
		turtle.select(NetherQ)
		for i = 1 , SectDim do
			turtle.forward()
			turtle.placeDown()
		end
	else
		turtle.select(NetherF)
			turtle.forward()
			turtle.placeDown()
			if MENetwork then
				turtle.select(IOMECon)
				turtle.placeDown()
			and if EnNetwork then
				turtle.select(IOEnCon)
				turtle.placeDown()
			end
		turtle.select(NetherQ)
	for i = 1 , (SectDim-1) do
		turtle.forward()
		turtle.placeDown()
	end
end

turtle.forward()
turtle.turnLeft()
turtle.forward()
turtle.turnLeft()

for i = 1 , NumSect do
	if (not MENetwork and not EnNetwork) then	--Colum 6, - Left Smoked, Send
		turtle.select(SmokedQ)
		for i = 1 , SectDim do
			turtle.forward()
			turtle.placeDown()
		end
	else
		turtle.select(SmokedQ)
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
		and if EnNetwork then
			turtle.select(IOEnCon)
			turtle.placeDown()
		end
	end
end

turtle.turnLeft()		--Return to start
turtle.forward()
turtle.forward()
turtle.turnRight()
for i = 1 , SectDim do
	turtle.back()
end