dofile("./kcSuite/kcVar")
os.loadAPI("./kcSuite/kcAPI")
os.loadAPI("./kcSuite/kcAPI001")
os.loadAPI("./kcSuite/kcAPI002")

fs.move("./kcVar.lua" , "./KcVar")
fs.move("./kcAPI.lua" , "./kcAPI")
fs.move("./kcAPI001.lua" , "./kcAPI001")
fs.move("./kcAPI002.lua" , "./kcAPI002")