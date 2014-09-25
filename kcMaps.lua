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


function xPerimiter (No.x , No.y)
	if y == nil then
	y = x
	end
	xBlockForward(No.x)
	turtle.turnRight()
	xBlockForward(No.y)
	turtle.turnRight()
	xBlockForward(No.x)
	turtle.turnRight()
	xBlockForward(No.y)
end

function xSectPerimiter (No.x , No.y)
	if y ~= number then
	y = x
	end
	xBlockForward(SectDim * No.x)
	turtle.turnRight()
	xBlockForward(SectDim * No.y)
	turtle.turnRight()
	xBlockForward(SectDim * No.x)
	turtle.turnRight()
	xBlockForward(SectDim * No.x)
end

function x2by2Cheker (No.x , No.y)
	if y ~= number then 
	y = x
	end
	for i = 1 , ((x*y/2)) do
		kcAPI.xBlockForward(2 , BOne)
		kcAPI.xBlockForward(2 , BTwo)
	end
	kcAPI.mvNextR()
	
end