dofile("kcVar.lua")
os.loadAPI("kcAPI.lua")
os.loadAPI("kcAPI001.lua")
os.loadAPI("kcAPI002.lua")
--------XXXXX
---7---XX---XX
---6--XX-----XX
---5--X-------X
---4--X-------X
---3--X-------X
---2--XX-----XX
---1---XXXXXXX
-------1234567

--1--XXOOOXX234567
--6---XOOOXXXXXXXX
--5---XOOOOOOOOOOO
--4---XOOOOOOOOOOO
--3---XOOOOOOOOOOO
--2---XOOOXXXXXXXX
--1--XXOOOXX------
--6---XOOOX--XXXXX
--5---XOOOX--X--
--4---XOOOX--X--
--3---XOOOX--X--
--2---XOOOX--X--
--1--XXOOOXX----
-----1234561234561234561
----1XX----XXOOOXX----XX
----2XXXXXXXXOOOXXXXXXXX
----3-X---------------X-
----4-X---------------X-
----5-X---------------X-
----6-X---------------X-
----1XX---------------XX
----2-X---------------X-
----3-X---------------X-
----4-X---------------X-
----5-X---------------X-
----6XXXXXXXXXXXXXXXXXXX
----1XX---X-----X-----XX
-----1234561234561234561

function CurrentPramiters ()
	print("--Number of sections to be built: ".. SectNum" ")
	--print("--Number of sections to be built: ".. SectNumx" ")
	--print("--Number of sections to be built: ".. SectNumy" ")
	--print("--Number of sections to be built: ".. SectNumz" ")
	print("--Primary dimension to be used: ".. SectDim" ")
	print("--Total Length of sections to be built ".. SectLen)
	print("--Ender IO Conduits:")
	print("----ME Network Conduit: "if EioME then "Enabled" else "Disabled")
	print("----Energy Conduit: "if EioEn then "Enabled" else "Disabled")
	print("----Fluid Conduit: "if EioFl then "Enabled" else "Disabled")
	print("----Item Conduit: "if EioIt then "Enabled" else "Disabled")
	print("----Redstone Conduit: "if EioRS then "Enabled" else "Disabled")
	
function setPeramiters (SectDim)

function addHall (SectNum , SectDim) --x section length , y conduit true or false
	kcAPI.mvColx(2)
	kcAPI001.xfloor(LineDis , y)
	kcAPI.mvColx(7)
	kcAPI002.xWall()
end

function EnableEnderIO ()
	if ***** == enable then
		os.loadAPI("kcEIO")
	end
	if ***** == disable then
	
	
end