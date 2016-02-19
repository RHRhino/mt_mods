--
--PIG
--
mobs:register_mob("ccmobs:pig", {
	type = "animal",
	hp_max = 4,
	collisionbox = {-0.25, -0.33, -0.25, 0.25, 0.33, 0.25},
	visual = "cube",
	visual_size = {x = 0.7, y = 0.7},
	textures = {"pig_side.png", "pig_side.png", "pig_side.png", "pig_side.png", "pig_front.png", "pig_back.png"},
	makes_footstep_sound = false,
	walk_velocity = 2,
	armor = 100,
	drops = {
		{name = "ccmobs:meat_raw",
		chance = 1,
		min = 1,
		max = 1,},
		},
	drawtype = "front",
	water_damage = 1,
	lava_damage = 1,
	light_damage = 0,
	on_rightclick = function(self, clicker)
		tool = clicker:get_wielded_item():get_name()
		if tool == "ccmobs:cage" then
				clicker:get_inventory():remove_item("main", "ccmobs:cage")
				clicker:get_inventory():add_item("main", "ccmobs:pig")
				self.object:remove()
		end
	end,
})

minetest.register_craftitem("ccmobs:pig", {
	description = "Pig",
	inventory_image = "pig_front.png",
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.above then
			minetest.env:add_entity(pointed_thing.above, "ccmobs:pig")
			if minetest.setting_getbool("creative_mode") then
				itemstack:take_item()
			else 
				itemstack:take_item()
				placer:get_inventory():add_item("main", "ccmobs:cage")
			end
		end
		return itemstack
	end,
})

minetest.register_craftitem("ccmobs:meat_raw", {
	description = "raw meat",
	inventory_image = "meat_raw.png",
	on_use = minetest.item_eat(0),
})

minetest.register_craftitem("ccmobs:meat_cooked", {
	description = "cooked meat",
	inventory_image = "meat_cooked.png",
	on_use = minetest.item_eat(6),
})
	
minetest.register_craft({
	type = "cooking",
	recipe = "ccmobs:meat_raw",
	output = "ccmobs:meat_cooked",
})

minetest.register_node("ccmobs:pig_block", {
	description = "pig block",
	tiles = {"pig_side.png", "pig_side.png", "pig_side.png", "pig_side.png", "pig_back.png", "pig_front.png"},
	paramtype2 = "facedir",
	groups = {cracky = 2},
	is_ground_content = false,
	sounds = default.node_sound_defaults(),
})

minetest.register_craft({
	type = "shapeless",
	output = "ccmobs:pig_block",
	recipe = {"ccmobs:pig", "ccmobs:pig", "ccmobs:pig", "ccmobs:pig"}
})