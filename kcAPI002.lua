--kcAPI002.xWallB()
--kcAPI002.xWallC()
--kcAPI002.xWall()
function xWallBlock (x , y)
	for i = 1 , y do
		kcAPI.xBlockUp(x , SmokedQ)
		kcAPI.xBack(2)
		kcAPI.XDown(x)
		
		kcAPI.xBlockUp(2 , SmokedQ)
		kcAPI.xBack(2)
		kcAPI.xDown(2)
		
		kcAPI.xBlockUp(2 , SmokedQ)
		kcAPI.xBack(2)
		kcAPI.xDown(2)
	end
end

function xWallConduit (x , y)
	kcAPI.xConduitUp(x , SmokedF)
	kcAPI.xBack(2)
	kcAPI.XDown(x)
	
	kcAPI.xBlockUp(2 , SmokedQ)
	kcAPI.xBack(2)
	kcAPI.xDown(2)
	
	kcAPI.xBlockUp(2 , SmokedQ)
	kcAPI.xBack(2)
	kcAPI.xDown(2)
	
	for i = 1 , (y - 1) do
		xWallBlock(x , (y - 1))
	end
end

function xWall (x, y, z)
	if z then 
		xWallConduit(x , y)
	else
		xWallBlock(x , y)
	end
end