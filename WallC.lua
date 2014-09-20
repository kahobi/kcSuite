dofile("QCVar.lua")
os.loadAPI("qcAPI.lua")

turtle.turnRight()
turtle.forward()

qcAPI.xConduitUP(SectDim , Smoked F)					--Right Pillar, End of Line

qcAPI.xBack(SectDim)
qcAPI.XDown(SectDim)

qcAPI.xBlockUp(SectDim , SmokedQ)							--Left Pillar, End of Line

turtle.forward()
turtle.turnLeft()
qcAPI.xDown(SectDim)