--kcAPI001.xFloorB()
--kcAPI001.xFloorC()
--kcAPI001.xFllor()
function xFloorB (x)											--x = SectNum*SecDim
	kcAPI.xBlockForward(x , SmokedQ)							--Colum 2, Left Smoked, Send
	kcAPI.mvNextR()

	kcAPI.xBlockForward(x , NetherQ)							--Colum 3, Left Nether, Return
	kcAPI.mvNextL()

	kcAPI.xBlockForward(x , NetherQ)							--Colum 4, Center Nether, Send 
	kcAPI.mvNextR()

	kcAPI.xBlockForward(x , NetherQ)							--Colum 5, Right Nether, Return
	kcAPI.mvNextL()

	kcAPI.xBlockForward(x , NetherQ)							--Colum 6, Right Smoked, Send
end

function xFloorC (x)													--x = SectNum*SecDim
	kcAPI.xBlockForward(x , SmokedQ)							--Colum 2 - Left Smoked, Send
	kcAPI.mvNextR()

	kcAPI.xBlockForward(x , NetherQ)							--Colum 3, Left Nether, Return
	qcAPI.mvNextL()

	kcAPI.xConduitForward(x , NetherF)							--Colum 4, Centre Nether, Send
	kcAPI.mvNextR()

	kcAPI.xConduitForward(1 , NetherF)							--Colum 5, Right Nether, Return
	kcAPI.xBlockForawrd((x - 1) , NetherQ) 
	kcAPI.mvNextL()

	kcAPI.xBlockForawrd((x - 1) , SmokedQ)						--Colum 6, Right Smoked, Send
	kcAPI.xConduitForward(1 , SmokedF) 
end

function xFloor (x , y)											--x = SectNum, y = Conduit true/false
	if y = true
		xFloorC(x)
	end
	if y = false
		xFloorB(x)
	end
end