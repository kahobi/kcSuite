dofile("./kcSuite/kcVar")
os.loadAPI("./kcSuite/kcAPI")
os.loadAPI("./kcSuite/kcAPI001")
os.loadAPI("./kcSuite/kcAPI002")

function CurrentPramiters ()
	print("--Number of sections to be built: ".. SectNum" ")
	--print("--Number of sections to be built: ".. SectNumx" ")
	--print("--Number of sections to be built: ".. SectNumy" ")
	--print("--Number of sections to be built: ".. SectNumz" ")
	print("--Primary dimension to be used: ".. SectDim" ")
	print("--Total Length of sections to be built ".. SectLen)
	print("--Ender IO Conduits:")
	print("----ME Network Conduit: "if EioME then "Enabled" else "Disabled" end)
	print("----Energy Conduit: "if EioEn then "Enabled" else "Disabled" end)
	print("----Fluid Conduit: "if EioFl then "Enabled" else "Disabled" end)
	print("----Item Conduit: "if EioIt then "Enabled" else "Disabled" end)
	print("----Redstone Conduit: "if EioRs then "Enabled" else "Disabled" end)
	
--function setPeramiters (SectDim)

function addHall (SectNum , SectDim) --x section length , y conduit true or false
	kcAPI.mvColx(2)
	kcAPI001.xfloor(LineDis , y)
	kcAPI.mvColx(7)
	kcAPI002.xWall()
end

function EnderIOAddon (a)
	if a == "enable" then
		os.loadAPI("kcEIO.lua")
	end
	if a == "disable" then
		os.unloadAPI("kcEIO.lua")
	end
end

function BigReactorAddon (a)
	if a == "enable" then
		os.loadAPI("kcBigReactor.lua")
	end
	if a == "disable" then
		os.unloadAPI("kcBigReactor.lua")
	end
end