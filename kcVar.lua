NumSect = 0				--The number of sections to be built, colum by colum
SectDim = 6				--7th segment in a section is shared, the start of the next.

LineDis = (NumSect + SectDim)

TurtCol = 4			--Turtle starting position.  Beginning location should be centre(4) of previous section.  Should usually end at 2 or 6.

EioME = true
EioEn = true
EioFL = false
EioIt = false
EioRS = false

--bType01 = Fuel
--bType02 =
--bType03 =
--bType04 =
--bType05 =
--bType06 =
--bType07 =
--bType08 =
--bType09 =
--bType10 =
--bType11 =
--bType12 =
--bType13 =
--bType14 =
--bType15 =
--bType16 =

--bType64 = IOMECon		--ME Network Conduit
--bType65 = IOEnCon		--Energy Conduit, can use as a catch all for Enhanced or Ender
--bType66 = IOEECon		--Enhanced Energy Conduit
--bType67 = IOEDCon		--Ender Energy Conduit
--bType68 = IOFlCon		--Fluid Conduit
--bType69 = IOFPCon		--Pressurized Fluid Conduit
--bType70 = IOItCon		--Item Conduit
if (EioME or EioEn or EioFL or EioIt or EioRS) then
	EnderIO = true
end
						--Inventory
NetherQ = 16
SmokedQ = 15
NetherF = 14
SmokedF = 13
IOMECon = 12
IOEnCon = 11
IOFlCon = 10
IOItCon = 09
IORECon = 08
--
--
--
--
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

