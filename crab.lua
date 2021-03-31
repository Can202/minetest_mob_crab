
-- crab 

mobs:register_mob("mob_crab:crab", {
	type = "animal",
	passive = true,
	hp_min = 1,
	hp_max = 2,
	armor = 200,
	collisionbox = {-0.2, -0.04, -0.2, 0.2, 0.5, 0.2},
	--collisionbox = {-0.2, -0.01, -0.2, 0.2, 0.5, 0.2},
	visual = "mesh",
	mesh = "mob_crab.obj",
	textures = {
		{"mob_crab.png"},
	},
	blood_texture = "mob_crab.png",
	blood_amount = 1,
	makes_footstep_sound = true,
	--sounds = {
	--	random = "mobs_bee",
	--},
	walk_velocity = 3,
	jump = false,
	drops = {
		{name = "mobs:meat_raw", chance = 2, min = 1, max = 1},
		{name = "mobs:leather", chance = 2, min = 1, max = 1},
	},
	water_damage = 1,
	lava_damage = 2,
	light_damage = 0,
	fall_damage = 0,
	fall_speed = -3,
	animation = {
		speed_normal = 15,
		stand_start = 0,
		stand_end = 30,
		walk_start = 35,
		walk_end = 65,
	},
})


if not mobs.custom_spawn_animal then
mobs:spawn({
	name = "mob_crab:crab",
	nodes = {"default:sand"},
	min_light = 14,
	interval = 30,
	chance = 9000,
	min_height = 3,
	max_height = 200,
	day_toggle = true,
})
end


mobs:register_egg("mob_crab:crab", ("Crab"), "mob_crab_inv.png")
