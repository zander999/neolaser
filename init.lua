
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "neolaser:laser_ore",
	wherein        = "default:stone",
	clust_scarcity = 10*10*10,
	clust_num_ores = 9,
	clust_size     = 5,
	height_min     = -31000,
	height_max     = -100,
})

minetest.register_node("neolaser:laser_ore", {
	description = "Laser ore",
	tiles = {"default_mese.png^laser_ore.png"},
	is_ground_content = true,
	groups = {cracky=3, stone=1},
	drop = 'neolaser:laser_crystal',
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craftitem("neolaser:laser_crystal", {
	description = "Laser Crystal",
	inventory_image = "laser_crystal.png",
})

minetest.register_tool("neolaser:doom_laser", {
	description = "Doom Laser",
	inventory_image = "doom_laser.png",
	tool_capabilities = {
		max_drop_level=99,
		groupcaps={
			cracky={times={[1]=0.05, [2]=0.05, [3]=0.05}, uses=99, maxlevel=99},
			crumbly={times={[1]=0.05, [2]=0.05, [3]=0.05}, uses=99, maxlevel=99},
			snappy={times={[1]=0.05, [2]=0.05, [3]=0.05}, uses=99, maxlevel=99},
			choppy={times={[1]=0.05, [2]=0.05, [3]=0.05}, uses=99, maxlevel=99},

		},
		damage_groups = {fleshy=99},
	},
})
minetest.register_tool("neolaser:green_laser", {
	description = "Green Laser",
	inventory_image = "green_laser.png",
	after_use = function()
		minetest.sound_play("zap")
	end,
	tool_capabilities = {
		max_drop_level=60,
		groupcaps={
			cracky={times={[1]=1.50, [2]=1.50, [3]=1.50}, uses=60, maxlevel=60},
			crumbly={times={[1]=1.50, [2]=1.50, [3]=1.50}, uses=60, maxlevel=60},
			snappy={times={[1]=1.50, [2]=1.50, [3]=1.50}, uses=60, maxlevel=60},
			choppy={times={[1]=1.50, [2]=1.50, [3]=1.50}, uses=60, maxlevel=60},
		},
		damage_groups = {fleshy=60},
	},
})
minetest.register_tool("neolaser:rainbow_laser", {
	description = "Rainbow Laser",
	inventory_image = "rainbow_laser.png",
	after_use = function(itemstack, user, pointed_thing)
	 itemstack:add_wear(2222)
	 end,
	tool_capabilities = {
		full_punch_interval = 2.2,
		max_drop_level=22,
		groupcaps={
			cracky= {times={[1]=0.22, [2]=0.22, [3]=0.22}, uses=22, maxlevel=22},
		},
		damage_groups = {fleshy=22},
	},
})
minetest.register_tool("neolaser:pixel_laser", {
	description = "Pixel Laser",
	inventory_image = "pixel_laser.png",
	tool_capabilities = {
		full_punch_interval = 1.1,
		max_drop_level=1,
		groupcaps={
			cracky = {times={[1]=2.60, [2]=2.00, [3]=1.50}, uses=80, maxlevel=2},
		},
		damage_groups = {fleshy=4},
	},
})
minetest.register_tool("neolaser:zap_gun", {
	description = "Zap Gun",
	inventory_image = "zap_gun.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=1.50, [2]=1.00, [3]=0.50}, uses=20, maxlevel=2},
		},
		damage_groups = {fleshy=3},
	},
})
minetest.register_tool("neolaser:lightsaber", {
	description = "Silent Stealth saber",
	inventory_image = "lightsaber.png",
	tool_capabilities = {
		full_punch_interval = 0.1,
		max_drop_level=99,
		groupcaps={
			cracky={times={[1]=1.50, [2]=1.50, [3]=1.50}, uses=99, maxlevel=99},
			crumbly={times={[1]=1.50, [2]=1.50, [3]=1.50}, uses=99, maxlevel=99},
			snappy={times={[1]=1.50, [2]=1.50, [3]=1.50}, uses=99, maxlevel=99},
			choppy={times={[1]=1.50, [2]=1.50, [3]=1.50}, uses=99, maxlevel=99},
		},
		damage_groups = {fleshy=99},
	},
})

minetest.register_craft({
	output = 'neolaser:doom_laser',
	recipe = {
		{'neolaser:laser_crystal'},
		{'default:stone'},
		{'default:stone'},
	}
})

minetest.register_craft({
	output = 'neolaser:green_laser',
	recipe = {
		{'neolaser:laser_crystal'},
		{'default:steel_ingot'},
		{'default:stick'},
	}
})

minetest.register_craft({
	output = 'neolaser:rainbow_laser',
	recipe = {
		{'neolaser:laser_crystal'},
		{'neolaser:laser_crystal'},
	{'neolaser:laser_crystal'},
	}
})

minetest.register_craft({
	output = 'neolaser:pixel_laser',
	recipe = {
		{'neolaser:laser_crystal'},
		{'neolaser:laser_crystal'},
    {'default:mese_crystal'},
	}
})

minetest.register_craft({
	output = 'neolaser:zap_gun',
	recipe = {
		{'neolaser:laser_crystal'},
		{'neolaser:laser_crystal'},
		{'default:stick'},
	}
})

minetest.register_craft({
	output = 'neolaser:laser_ore',
	recipe = {
		{'neolaser:laser_crystal'},
		{'neolaser:laser_crystal'},
		{'default:diamond'},
	}
})
