--kcEio.enable()
--kcEio.disable()

EioME = false
EioEn = false
EioFl = false
EioIt = false
EioRs = false

Facade01 = nil
Facade02 = nil
Facade03 = nil
Facade04 = nil
Facade05 = nil
Facade06 = nil
Facade07 = nil
Facade08 = nil
Facade09 = nil
Facade10 = nil

function enable ("a" , "b" , "c" , "d")
	if a ~= nil then EioME = true end
	if b ~= nil then EioEn = true end
	if c ~= nil then EioFl = true end
	if d ~= nil then EioRs = true end
	if (EioME or EioEn or EioFl or EioIt or EioRs) then
		EnderIO = true
	end
end

function disable ("a" , "b" , "c" , "d")
	if a ~= nil then EioME = true end
	if b ~= nil then EioEn = true end
	if c ~= nil then EioFl = true end
	if d ~= nil then EioRs = true end
	if not (EioME and EioEn and EioFl and EioIt and EioRs) then
		EnderIO = false
	end
end

function xFacadeForward (x , b)
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
		if EioFl then
			turtle.select(IOFlCon)
			turtle.placeDown()
		end
		if EioIt then
			turtle.select(IOItCon)
			turtle.placeDown()
		end
		if EioRs then
			turtle.select(IORsCon)
			turtle.placeDown()
		end
	end
end

function xFacadeUp (x , b)
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
		if EioFl then
			turtle.select(IOFlCon)
			turtle.placeDown()
		end
		if EioIt then
			turtle.select(IOItCon)
			turtle.placeDown()
		end
		if EioRs then
			turtle.select(IORsCon)
			turtle.placeDown()
		end
		turtle.up()
	end
end

--bType64 = IOMECon		--ME Network Conduit
--bType65 = IOEnCon		--Energy Conduit, can use as a catch all for Enhanced or Ender
--bType66 = IOEECon		--Enhanced Energy Conduit
--bType67 = IOEDCon		--Ender Energy Conduit
--bType68 = IOFlCon		--Fluid Conduit
--bType69 = IOFPCon		--Pressurized Fluid Conduit
--bType70 = IOItCon		--Item Conduit
--bType71 = IOIeCon		--Empowered Item Conduit
--bType72 = IORsCon		--Redstone Conduit
--bType73 = IORICon		--Insulated Redstone Conduit
