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
-----1234567----


function addHall (x , y) --x section length , y conduit true or false
	NumSect = x
	kcAPI.mvColx(2)
	kcAPI001.xfloor(LineDis , y)
	kcAPI.mvColx(7)
	kcAPI002.xWall()
	
end

function addIntersection (x , y)		--x = where in to make intersection, y left, right, T, or 4 way.


end

function addLeftWall (x , y) x length, y skip