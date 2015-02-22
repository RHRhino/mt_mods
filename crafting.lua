

--
-- register crafting recipes:
--
minetest.register_craft({
	output = 'lantern:candle 12',
	recipe = {
		{'default:coal_lump','default:coal_lump'},
		{'group:stick','group:stick'},
		}
})

minetest.register_craft({
	output = 'lantern:lantern 4',
	recipe = {
		{'','group:stick',''},
		{'group:stick','lantern:candle','group:stick'},
		{'','group:stick',''},
		}
})

minetest.register_craft({
	output = 'lantern:lantern 4',
	recipe = {
		{'group:stick','','group:stick'},
		{'','lantern:candle',''},
		{'group:stick','','group:stick'},
		}
})

minetest.register_craft({
	type = "shapeless",
	output = 'lantern:fence_black',
	recipe = {'default:coal_lump', 'default:fence_wood'},
})

minetest.register_craft({
	output = 'lantern:lamp 4',
	recipe = {
	{'','default:steel_ingot',''},
	{'default:steel_ingot','lantern:candle','default:steel_ingot'},
	{'','default:steel_ingot',''},
	}
})

minetest.register_craft({
	output = 'lantern:lamp 4',
	recipe = {
	{'default:steel_ingot','','default:steel_ingot'},
	{'','lantern:candle',''},
	{'default:steel_ingot','','default:steel_ingot'},
	}
})

minetest.register_craft({
	output = 'lantern:lantern_lampost1',
	recipe = {
	{'lantern:fence_black','lantern:fence_black',''},
	{'lantern:fence_black','lantern:lamp',''},
	{'lantern:fence_black','',''},
	}
})

minetest.register_craft({
	type = "shapeless",
	output = 'lantern:lantern_lampost2',
	recipe = {"lantern:lantern_lampost1"}
})

minetest.register_craft({
	type = "shapeless",
	output = 'lantern:lantern_lampost3',
	recipe = {"lantern:lantern_lampost2"}
})

minetest.register_craft({
	type = "shapeless",
	output = 'lantern:lantern_lampost4',
	recipe = {"lantern:lantern_lampost3"}
})

minetest.register_craft({
	type = "shapeless",
	output = 'lantern:lantern_lampost1',
	recipe = {"lantern:lantern_lampost4"}
})