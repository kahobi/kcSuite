--kcAPI.xForward()
--kcAPI.xBack()
--kcAPI.xUp()
--kcAPI.xDown()

--kcAPI.dTurnTo()
--qcAPI.dTurnFrom()

--kcAPI.mvNextR()
--kcAPI.mvNextL()
--kcAPI.mvColx()

--kcAPI.xBlockForward()
--kcAPI.xBlockUp()
--kcAPI.xConduitForward()
--kcAPI.xConduitUp()
--kcAPI.xIntersect()

function xForward (x)
	for i = 1 , x do
		turtle.forward()
	end
end

function xBack (x)
	for i = 1 , x do
		turtle.back()
	end
end

function xUp (x)
	for i = 1 , x do
		turtle.up()
	end
end

function xDown (x)
	for i = 1 , x do
		turtle.down()
	end
end

function dTurnTo ()				--... start
	if TurtCol <= 4 then
		turtle.turnLeft()
	else
		turtle.turnRight()
	end
end

function dTurnFrom ()			--... start
	if TurtCol > 4 then
		turtle.turnRight()
	else
		turtle.turnLeft()
	end
end

function mvColx (x)
	if x < TurtCol then
		turtle.turnRight()
		xForward(TurtCol - x)
		turtle.turnLeft()
	end
	if x > TurtCol then
		turtle.turnLeft()
		xForward(math.abs(TurtCol-x))
		turtle.turnRight()
	end
	TurtCol = x
end

function mvNextR ()
	turtle.forward()
	turtle.turnRight()
	turtle.forward()
	turtle.turnRight()
	TurtCol = (TurtCol + 1)
end

function mvNextL ()
	turtle.forward()
	turtle.turnLeft()
	turtle.forward()
	turtle.turnLeft()
	TurtCol = (TurtCol + 1)
end

function xBlockForward (x , b)
	turtle.select(b)
	for i = 1, x do
		turtle.forward()
		turtle.placeDown()
	end
end

function xBlockUp (x , b)
	turtle.select(b)
	if turtle.detectDown() then
		x = (x - 1)
		turtle.up()
	end
	for i = 1 , x do
		turtle.placeDown()
		turtle.up()
	end
end

function xConduitForward (x , b)
	for i = 1 , x do
		turtle.select(b)
		turtle.forward()
		turtle.placeDown()
		if EioME then
			turtle.select(IOMECon)
			turtle.placeDown()
		end
		if EioEn then
			turtle.select(IOEnCon)
			turtle.placeDown()
		end
		if EioFL then
			turtle.select(IOFlCon)
			turtle.placeDown()
		end
		if EioIt then
			turtle.select(IOItCon)
			turtle.placeDown()
		end
		if EioRS then
			turtle.select(IORECon)
			turtle.placeDown()
		end
	end
end

function xConduitUp (x , b)
	if turtle.detectDown() then
		x = (x - 1)
		turtle.up()
	end
	for i = 1 , x do
		turtle.select(b)
		turtle.placeDown()
		if EioME then
			turtle.select(IOMECon)
			turtle.placeDown()
		end
		if EioEn then
			turtle.select(IOEnCon)
			turtle.placeDown()
		end
		if EioFL then
			turtle.select(IOFlCon)
			turtle.placeDown()
		end
		if EioIt then
			turtle.select(IOItCon)
			turtle.placeDown()
		end
		if EioRS then
			turtle.select(IORECon)
			turtle.placeDown()
		end
		turtle.up()
	end
end

function xIntersect (x)				--x = SectDim
	qcAPI.xBlockForward(1 , SmokedQ)
	qcAPI.xBlockForward((x - 2) , NetherQ)
	qcAPI.xblockForward(1 , SmokedQ)
end