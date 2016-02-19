--
--SPAWNING: [true --or-- false]
--
local CHICKEN_SPAWN = true
local COW_SPAWN = true
local NYAN_CAT_SPAWN = true
local PIG_SPAWN = true
local RABBIT_SPAWN = true
local SHEEP_SPAWN = true

dofile(minetest.get_modpath("ccmobs").."/api.lua")
dofile(minetest.get_modpath("ccmobs").."/animals/chicken.lua")
dofile(minetest.get_modpath("ccmobs").."/animals/cow.lua")
dofile(minetest.get_modpath("ccmobs").."/animals/nyan_cat.lua")
dofile(minetest.get_modpath("ccmobs").."/animals/pig.lua")
dofile(minetest.get_modpath("ccmobs").."/animals/rabbit.lua")
dofile(minetest.get_modpath("ccmobs").."/animals/sheep.lua")

if CHICKEN_SPAWN then
	mobs:register_spawn("ccmobs:chicken", {"default:dirt_with_grass"}, 20, 8, 8000, 1, 31000)
end

if COW_SPAWN then
	mobs:register_spawn("ccmobs:cow", {"default:dirt_with_grass"}, 20, 8, 8000, 1, 31000)
end

if NYAN_CAT_SPAWN then
	mobs:register_spawn("ccmobs:nyan_cat", {"default:dirt_with_grass"}, 20, 8, 8000, 1, 31000)
end

if PIG_SPAWN then
	mobs:register_spawn("ccmobs:pig", {"default:dirt_with_grass"}, 20, 8, 8000, 1, 31000)
end

if RABBIT_SPAWN then
	mobs:register_spawn("ccmobs:rabbit", {"default:dirt_with_grass"}, 20, 8, 8000, 1, 31000)
end

if SHEEP_SPAWN then
	mobs:register_spawn("ccmobs:sheep", {"default:dirt_with_grass"}, 20, 8, 8000, 1, 31000)
end