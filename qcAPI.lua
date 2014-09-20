--qcAPI.xForward()
--qcAPI.xBack()
--qcAPI.xUp()
--qcAPI.xDown()

--qcAPI.dTurnToNear()
--qcAPI.dTurnToFar()

--qcAPI.mvNextR()
--qcAPI.mvNextL()
--qcAPI.mvToStartR()
--qcAPI.mvToStartL()

--qcAPI.xBlockForward()
--qcAPI.xBlockUp()
--qcAPI.xConduitForward()
--qcAPI.xConduitUp()

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

function dTurnToward (d)		--... start
	if d == 2 then
		turtle.turnLeft()
	else
		turtle.turnRight()
	end
end

function dTurnAway (d)			--... from start
	if d ~= 2 then
		turtle.turnRight()
	else
		turtle.turnLeft()
	end
end

function mvCol2
	if TurtleAO < 2 then
		turtle.turnRight()
		turtle.forward()
		turtle.turnLeft()
	end
	if TurtleAO > 2 then
	

function mvCol3
function mvCol4
function mvCol5
function mvCol6

function mvNextR ()
	turtle.forward()
	turtle.turnRight()
	turtle.forward()
	turtle.turnRight()
end

function mvNextL ()
	turtle.forward()
	turtle.turnLeft()
	turtle.forward()
	turtle.turnLeft()
end

function mvToStartR ()
	turtle.turnRight()
	xForward(TurtleAO - 2)
	turtle.turnLeft()
end

function mvToStartL ()
	turtle.turnLeft()
	xForward(SectDim - TurtleAO)
	turtle.turnRight()
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