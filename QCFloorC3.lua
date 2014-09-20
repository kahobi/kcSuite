dofile("QCVar.lua")
os.loadAPI("qcAPI.lua")

qcAPI.mvToStart()

qcAPI.xBlockForward(LineDis , SmokedQ)							--Colum 2 - Left Smoked, Send
qcAPI.mvNextR()

qcAPI.xBlockForward(LineDis , NetherQ)							--Colum 3, Left Nether, Return
qcAPI.mvNextL()

if EnderIO then													--Colum 4, Centre Nether, Send
	qcAPI.xConduitForward(LineDis , NetherF)
else
    qcAPI.xBlockForward(LineDis , NetherQ)
end
qcAPI.mvNextR()

if EnderIO  then												--Colum 5, Right Nether --Return
	qcAPI.xConduitForward(1 , NetherF)
	qcAPI.xBlockForawrd((LineDis - 1) , NetherQ) 
else
	qcAPI.xBlockForward(LineDis , NetherQ)
end
qcAPI.mvNextL()

if EnderIO  then												--Colum 6, Right Smoked --Send
	qcAPI.xBlockForawrd((LineDis - 1) , SmokedQ)
	qcAPI.xConduitForward(1 , SmokedF) 
else
	qcAPI.xBlockForward(LineDis , SmokedQ)
end

TurtleAO = 6