dofile("QCVar.lua")
os.loadAPI("qcAPI.lua")

function xfloorB (x)
	qcAPI.xBlockForward(x , SmokedQ)							--Colum 2, Left Smoked, Send
	qcAPI.mvNextR()

	qcAPI.xBlockForward(x , NetherQ)							--Colum 3, Left Nether, Return
	qcAPI.mvNextL()

	qcAPI.xBlockForward(x , NetherQ)							--Colum 4, Center Nether, Send 
	qcAPI.mvNextR()

	qcAPI.xBlockForward(x , NetherQ)							--Colum 5, Right Nether, Return
	qcAPI.mvNextL()

	qcAPI.xBlockForward(x , NetherQ)							--Colum 6, Right Smoked, Send
end

function xfloorC (x)
	qcAPI.xBlockForward(x , SmokedQ)							--Colum 2 - Left Smoked, Send
	qcAPI.mvNextR()

	qcAPI.xBlockForward(x , NetherQ)							--Colum 3, Left Nether, Return
	qcAPI.mvNextL()

	qcAPI.xConduitForward(x , NetherF)						--Colum 4, Centre Nether, Send
	qcAPI.mvNextR()

	qcAPI.xConduitForward(1 , NetherF)						--Colum 5, Right Nether, Return
	qcAPI.xBlockForawrd((x - 1) , NetherQ) 
	qcAPI.mvNextL()

	qcAPI.xBlockForawrd((x - 1) , SmokedQ)				--Colum 6, Right Smoked, Send
	qcAPI.xConduitForward(1 , SmokedF) 
end