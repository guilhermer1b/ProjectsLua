local map = require("GameMapa/map")

for k, v in pairs(map.load("GameMapa/level1.txt")) do 
    print("Line: " .. map.wall(v))
end

print(map.load("GameMapa/level2.txt"))