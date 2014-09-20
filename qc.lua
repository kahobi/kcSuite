dofile("QCVar.lua")
--
--qc.SDblock()
--qc.SDConduit()
--qc.SDless1Block()
--qc.SD1Conduit()
--qc.SDPillarB()
--qc.SDPillarC()
--qc.SDColumR()
--qc.SDColumL()
--qc.DimBack()
--qc.DimForward()
--qc.DimDown()
--qc.DimUp
--

function SDBlock ()
	for i = 1 , SectDim do
		turtle.forward()
		turtle.placeDown()
	end
end

function SDConduit ()
	Slot = turtle.getSelectedSlot()
	for i = 1 , SectDim do
		turtle.select(Slot)
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
		if FluidNetw then
			turtle.select(IOFlCon)
			turtle.placeDown()
		end
		if Item_Netw then
			turtle.select(IOItCon)
			turtle.placeDown()
		end
		if RedNetwor then
			turtle.select(IORECon)
			turtle.placeDown()
		end
	end
end

function SDless1Block ()
	for i = 1 , (SectDim-1) do
		turtle.forward()
		turtle.placeDown()
	end
end

function SD1Conduit ()
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
		if FluidNetw then
			turtle.select(IOFlCon)
			turtle.placeDown()
		end
		if Item_Netw then
			turtle.select(IOItCon)
			turtle.placeDown()
		end
		if RedNetwor then
			turtle.select(IORECon)
			turtle.placeDown()
		end
end

function SDPillarB ()
	for i = 1 , SectDim do
		turtle.placeDown()
		turtle.up()
	end
end

function SDPillarC ()
	Slot = turtle.getSelectedSlot()
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
		if FluidNetw then
			turtle.select(IOFlCon)
			turtle.placeDown()
		end
		if Item_Netw then
			turtle.select(IOItCon)
			turtle.placeDown()
		end
		if RedNetwor then
			turtle.select(IORECon)
			turtle.placeDown()
		end
		turtle.up()
		turtle.select(Slot)
	end
end

function ColumR ()
	turtle.forward()
	turtle.turnRight()
	turtle.forward()
	turtle.turnRight()
end

function ColumL ()
	turtle.forward()
	turtle.turnLeft()
	turtle.forward()
	turtle.turnLeft()
end

function DimBack ()
	for i = 1 , SectDim do
		turtle.back()
	end
end

function DimForward ()
	for i = 1 , SectDim do
		turtle.forward()
	end
end

function DimDown ()
	for i = 1 , SectDim do
		turtle.down()
	end
end

function DimUp ()
	for i = 1 , SectDim do
		turtle.up()
	end
end