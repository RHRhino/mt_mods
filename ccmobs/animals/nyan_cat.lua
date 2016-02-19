--
--NYAN CAT
--
mobs:register_mob("ccmobs:nyan_cat", {
	type = "animal",
	hp_max = 4,
	collisionbox = {-0.25*(0.5/0.7), -0.33*(0.5/0.7), -0.25*(0.5/0.7), 0.25*(0.5/0.7), 0.33*(0.5/0.7), 0.25*(0.5/0.7)},
	visual = "cube",
	visual_size = {x = 0.5, y = 0.5},
	textures = {"nc_side.png", "nc_side.png", "nc_side.png", "nc_side.png", "nc_front.png", "nc_back.png"},
	makes_footstep_sound = false,
	walk_velocity = 3,
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
				clicker:get_inventory():add_item("main", "ccmobs:nyan_cat")
				self.object:remove()
		end
	end,
})

minetest.register_craftitem("ccmobs:nyan_cat", {
	description = "nyan_cat",
	inventory_image = "nc_front.png",
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.above then
			minetest.env:add_entity(pointed_thing.above, "ccmobs:nyan_cat")
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

minetest.register_craft({
	type = "shapeless",
	output = "default:nyancat",
	recipe = {"ccmobs:nyan_cat", "ccmobs:nyan_cat", "ccmobs:nyan_cat", "ccmobs:nyan_cat"}
})
