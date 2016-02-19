--
--RABBIT
--
mobs:register_mob("ccmobs:rabbit", {
	type = "animal",
	hp_max = 4,
	collisionbox = {-0.25*(0.5/0.7), -0.33*(0.5/0.7), -0.25*(0.5/0.7), 0.25*(0.5/0.7), 0.33*(0.5/0.7), 0.25*(0.5/0.7)},
	visual = "cube",
	visual_size = {x = 0.5, y = 0.5},
	textures = {"rabbit_top.png", "rabbit_side.png", "rabbit_side.png", "rabbit_side.png", "rabbit_front.png", "rabbit_back.png"},
	makes_footstep_sound = false,
	walk_velocity = 4,
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
				clicker:get_inventory():add_item("main", "ccmobs:rabbit")
				self.object:remove()
		end
	end,
})

minetest.register_craftitem("ccmobs:rabbit", {
	description = "Rabbit",
	inventory_image = "rabbit_front.png",
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.above then
			minetest.env:add_entity(pointed_thing.above, "ccmobs:rabbit")
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
minetest.register_node("ccmobs:rabbit_block", {
	description = "rabbit block",
	tiles = {"rabbit_top.png^[transformR180]", "rabbit_side.png", "rabbit_side.png", "rabbit_side.png", "rabbit_back.png", "rabbit_front.png"},
	paramtype2 = "facedir",
	groups = {cracky = 2},
	is_ground_content = false,
	sounds = default.node_sound_defaults(),
})

minetest.register_craft({
	type = "shapeless",
	output = "ccmobs:rabbit_block",
	recipe = {"ccmobs:rabbit", "ccmobs:rabbit", "ccmobs:rabbit", "ccmobs:rabbit"}
})

minetest.register_craft({
	output = "ccmobs:cage",
	recipe = {
		{"group:stick", "group:stick", "group:stick"}, 
		{"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"}, 
		{"group:stick", "group:stick", "group:stick"}
	},
})

minetest.register_craftitem("ccmobs:cage", {
	description = "animal cage",
	inventory_image = "cage.png"
})
