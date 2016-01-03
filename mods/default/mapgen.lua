minetest.register_alias("mapgen_stone", "default:stone")
minetest.register_alias("mapgen_tree", "default:log_1")
minetest.register_alias("mapgen_leaves", "default:leaves_1")
minetest.register_alias("mapgen_dirt", "default:dirt")
minetest.register_alias("mapgen_sand", "default:sand")
minetest.register_alias("mapgen_dirt_with_grass", "default:grass")
minetest.register_alias("mapgen_water_source", "default:water_source")
minetest.register_alias("mapgen_gravel", "default:gravel")

minetest.register_biome({
	name = "grassland",
	node_top = "default:grass",
	depth_top = 1,
	node_filler = "default:dirt",
	depth_filler = 0,
	y_min = 6,
	y_max = 31000,
	heat_point = 45,
	humidity_point = 30,
})

minetest.register_biome({
	name = "beach",
	node_top = "default:sand",
	depth_top = 1,
	node_filler = "default:sand",
	depth_filler = 2,
	y_min = -112,
	y_max = 5,
	heat_point = 45,
	humidity_point = 30,
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:grass"},
	sidelen = 16,
	noise_params = {
		offset = -0.015,
		scale = 0.5,
		spread = {x=200, y=200, z=200},
		seed = 329,
		octaves = 3,
		persist = 0.6
	},
	biomes = {
		"grassland"
	},
	y_min = 0,
	y_max = 31000,
	decoration = "default:plant_grass",
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:sand"},
	sidelen = 16,
	noise_params = {
		offset = -0.015,
		scale = 0.05,
		spread = {x=200, y=200, z=200},
		seed = 329,
		octaves = 3,
		persist = 0.6
	},
	biomes = {
		"beach"
	},
	y_min = 0,
	y_max = 31000,
	decoration = "default:plant_grass",
})

minetest.register_biome({
	name = "swamp",
	node_top = "default:dirt",
	depth_top = 1,
	node_filler = "default:dirt",
	depth_filler = 2,
	node_stone = "default:wet_stone",
	y_min = -3,
	y_max = 4,
	heat_point = 95,
	humidity_point = 90,
})


