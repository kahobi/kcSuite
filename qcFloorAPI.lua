dofile("QCVar.lua")
os.loadAPI("qcAPI.lua")

function xfloor (x , b1 , b2 , b3 , b4)
	qcAPI.mvToStart()

	qcAPI.xBlockForward(x , b2)							--Colum 2 - Left Smoked, Send
	qcAPI.mvNextR()

	qcAPI.xBlockForward(x , b1)							--Colum 3, Left Nether, Return
	qcAPI.mvNextL()

	if EnderIO then													--Colum 4, Centre Nether, Send
		qcAPI.xConduitForward(x , b3)
	else
	    qcAPI.xBlockForward(x , b1)
	end
	qcAPI.mvNextR()

	if EnderIO  then												--Colum 5, Right Nether --Return
		qcAPI.xConduitForward(1 , b3)
		qcAPI.xBlockForawrd((x - 1) , b1) 
	else
		qcAPI.xBlockForward(x , b1)
	end
	qc.ColumL()

	if EnderIO  then												--Colum 6, Right Smoked --Send
		qcAPI.xBlockForawrd((x - 1) , b2)
		qcAPI.xConduitForward(1 , b4) 
	else
		qcAPI.xBlockForward(x , b2)
	end

	qcAPI.mvToStart()
end