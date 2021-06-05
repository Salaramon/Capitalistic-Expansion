data:extend({
	{
		type = "unit",
		name = "corporate_vermin",
		order="b-b-d",
		icon = "__base__/graphics/icons/small-biter.png",
		icon_size = 32,
		flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable", "player-creation"},
		max_health = 1000000,
		subgroup="enemies",
		healing_per_tick = 0,
			 collision_box = {{-0.2,-0.2},{0.2,0.2}},
		selection_box = {{-0.4, -0.7}, {0.7, 0.4}},
		distraction_cooldown = 300,
		min_pursue_time = 1000000,
		max_pursue_distance = 1000000,
		ai_settings = biter_ai_settings,
		can_open_gates = true,
		pollution_to_join_attack = 0,
		attack_parameters = {
			type = "projectile",
			range = 1,
			cooldown = 60,
			ammo_type = make_unit_melee_ammo_type(1000000),
			sound = {
				{
					filename = "__base__/sound/creatures/biter-roar-1.ogg",
					volume = 0.35
				},
				{
					filename = "__base__/sound/creatures/biter-roar-2.ogg",
					volume = 0.35
				},
				{
					filename = "__base__/sound/creatures/biter-roar-3.ogg",
					volume = 0.35
				},
				{
					filename = "__base__/sound/creatures/biter-roar-4.ogg",
					volume = 0.35
				},
				{
					filename = "__base__/sound/creatures/biter-roar-5.ogg",
					volume = 0.35
				},
				{
					filename = "__base__/sound/creatures/biter-roar-6.ogg",
					volume = 0.35
				}
			},
			animation = {
				layers = {
					{
						animation_speed = 0.4,
						direction_count = 16,
						filenames = {
							"__base__/graphics/entity/biter/biter-attack-01.png",
							"__base__/graphics/entity/biter/biter-attack-02.png",
							"__base__/graphics/entity/biter/biter-attack-03.png",
							"__base__/graphics/entity/biter/biter-attack-04.png"
						},
						frame_count = 11,
						height = 176,
						hr_version = {
							animation_speed = 0.4,
							direction_count = 16,
							filenames = {
								"__base__/graphics/entity/biter/hr-biter-attack-01.png",
								"__base__/graphics/entity/biter/hr-biter-attack-02.png",
								"__base__/graphics/entity/biter/hr-biter-attack-03.png",
								"__base__/graphics/entity/biter/hr-biter-attack-04.png"
							},
							frame_count = 11,
							height = 348,
							line_length = 16,
							lines_per_file = 4,
							scale = 0.25,
							shift = {0,-0.390625},
							slice = 11,
							width = 356
						},
						line_length = 16,
						lines_per_file = 4,
						scale = 0.5,
						shift = {-0.03125,-0.40625},
						slice = 11,
						width = 182
					},

					{
						animation_speed = 0.4,
						direction_count = 16,
						filenames = {
							"__base__/graphics/entity/biter/biter-attack-mask1-01.png",
							"__base__/graphics/entity/biter/biter-attack-mask1-02.png",
							"__base__/graphics/entity/biter/biter-attack-mask1-03.png",
							"__base__/graphics/entity/biter/biter-attack-mask1-04.png"
						},
						flags = {
							"mask"
						},
						frame_count = 11,
						height = 144,
						hr_version = {
							animation_speed = 0.4,
							direction_count = 16,
							filenames = {
								"__base__/graphics/entity/biter/hr-biter-attack-mask1-01.png",
								"__base__/graphics/entity/biter/hr-biter-attack-mask1-02.png",
								"__base__/graphics/entity/biter/hr-biter-attack-mask1-03.png",
								"__base__/graphics/entity/biter/hr-biter-attack-mask1-04.png"
							},
							frame_count = 11,
							height = 282,
							line_length = 16,
							lines_per_file = 4,
							scale = 0.25,
							shift = {-0.015625,-0.640625},
							slice = 11,
							tint = 0,
							width = 360
						},
						line_length = 16,
						lines_per_file = 4,
						scale = 0.5,
						shift = {0,-0.65625},
						slice = 11,
						tint = 0,
						width = 178
					},

					{
						animation_speed = 0.4,
						direction_count = 16,
						filenames = {
							"__base__/graphics/entity/biter/biter-attack-mask2-01.png",
							"__base__/graphics/entity/biter/biter-attack-mask2-02.png",
							"__base__/graphics/entity/biter/biter-attack-mask2-03.png",
							"__base__/graphics/entity/biter/biter-attack-mask2-04.png"
						},
						flags = {"mask"},
						frame_count = 11,
						height = 144,
						hr_version = {
							animation_speed = 0.4,
							direction_count = 16,
							filenames = {
								"__base__/graphics/entity/biter/hr-biter-attack-mask2-01.png",
								"__base__/graphics/entity/biter/hr-biter-attack-mask2-02.png",
								"__base__/graphics/entity/biter/hr-biter-attack-mask2-03.png",
								"__base__/graphics/entity/biter/hr-biter-attack-mask2-04.png"
							},
							frame_count = 11,
							height = 282,
							line_length = 16,
							lines_per_file = 4,
							scale = 0.25,
							shift = {-0.015625,-0.640625},
							slice = 11,
							tint = 0,
							width = 358
						},
						line_length = 16,
						lines_per_file = 4,
						scale = 0.5,
						shift = {-0.03125,-0.65625},
						slice = 11,
						tint = 0,
						width = 182
					},

					{
						animation_speed = 0.4,
						direction_count = 16,
						draw_as_shadow = true,
						filenames = {
							"__base__/graphics/entity/biter/biter-attack-shadow-01.png",
							"__base__/graphics/entity/biter/biter-attack-shadow-02.png",
							"__base__/graphics/entity/biter/biter-attack-shadow-03.png",
							"__base__/graphics/entity/biter/biter-attack-shadow-04.png"
						},
						frame_count = 11,
						height = 128,
						hr_version = {
							animation_speed = 0.4,
							direction_count = 16,
							draw_as_shadow = true,
							filenames = {
								"__base__/graphics/entity/biter/hr-biter-attack-shadow-01.png",
								"__base__/graphics/entity/biter/hr-biter-attack-shadow-02.png",
								"__base__/graphics/entity/biter/hr-biter-attack-shadow-03.png",
								"__base__/graphics/entity/biter/hr-biter-attack-shadow-04.png"
							},
							frame_count = 11,
							height = 258,
							line_length = 16,
							lines_per_file = 4,
							scale = 0.25,
							shift = {0.484375,-0.015625},
							slice = 11,
							width = 476
						},
					  line_length = 16,
					  lines_per_file = 4,
					  scale = 0.5,
					  shift = {0.46875,0},
					  slice = 11,
					  width = 240
					}
				}
			},
		},
		vision_distance = 100,
		movement_speed = 0.1,
		distance_per_frame = 0.105,
		--dying_explosion = "small-biter-die",
		working_sound = {
			max_sounds_per_type = 2,
			probability = 0.0013888888888888888,
			sound = {
				{
					filename = "__base__/sound/creatures/biter-call-1.ogg",
					volume = 0.57999999999999998
				},
				{
					filename = "__base__/sound/creatures/biter-call-2.ogg",
					volume = 0.57999999999999998
				},
				{
					filename = "__base__/sound/creatures/biter-call-3.ogg",
					volume = 0.57999999999999998
				},
				{
					filename = "__base__/sound/creatures/biter-call-4.ogg",
					volume = 0.57999999999999998
				},
				{
					filename = "__base__/sound/creatures/biter-call-5.ogg",
					volume = 0.57999999999999998
				}
			}
		},
		dying_sound = {
			{
				filename = "__base__/sound/creatures/spitter-death-1.ogg",
				volume = 0.45
			},
			{
				filename = "__base__/sound/creatures/spitter-death-2.ogg",
				volume = 0.45
			},
			{
				filename = "__base__/sound/creatures/spitter-death-3.ogg",
				volume = 0.45
			},
			{
				filename = "__base__/sound/creatures/spitter-death-4.ogg",
				volume = 0.45
			},
			{
				filename = "__base__/sound/creatures/spitter-death-5.ogg",
				volume = 0.45
			}
		},
		run_animation = {
			layers = {
				{
					direction_count = 16,
					filenames = {
						"__base__/graphics/entity/biter/biter-run-01.png",
						"__base__/graphics/entity/biter/biter-run-02.png",
						"__base__/graphics/entity/biter/biter-run-03.png",
						"__base__/graphics/entity/biter/biter-run-04.png"
					},
					frame_count = 16,
					height = 158,
					hr_version = {
						direction_count = 16,
						filenames = {
							"__base__/graphics/entity/biter/hr-biter-run-01.png",
							"__base__/graphics/entity/biter/hr-biter-run-02.png",
							"__base__/graphics/entity/biter/hr-biter-run-03.png",
							"__base__/graphics/entity/biter/hr-biter-run-04.png"
						},
						frame_count = 16,
						height = 310,
						line_length = 8,
						lines_per_file = 8,
						scale = 0.25,
						shift = {-0.015625,-0.078125},
						slice = 8,
						width = 398
					},
					line_length = 8,
					lines_per_file = 8,
					scale = 0.5,
					shift = {-0.03125,-0.09375},
					slice = 8,
					width = 202
				},

				{
					direction_count = 16,
					filenames = {
						"__base__/graphics/entity/biter/biter-run-mask1-01.png",
						"__base__/graphics/entity/biter/biter-run-mask1-02.png",
						"__base__/graphics/entity/biter/biter-run-mask1-03.png",
						"__base__/graphics/entity/biter/biter-run-mask1-04.png"
					},
					flags = {"mask"},
					frame_count = 16,
					height = 94,
					hr_version = {
						direction_count = 16,
						filenames = {
							"__base__/graphics/entity/biter/hr-biter-run-mask1-01.png",
							"__base__/graphics/entity/biter/hr-biter-run-mask1-02.png",
							"__base__/graphics/entity/biter/hr-biter-run-mask1-03.png",
							"__base__/graphics/entity/biter/hr-biter-run-mask1-04.png"
						},
						frame_count = 16,
						height = 182,
						line_length = 8,
						lines_per_file = 8,
						scale = 0.25,
						shift = {-0.015625,-0.578125},
						slice = 8,
						tint = 0,
						width = 238
					},
					line_length = 8,
					lines_per_file = 8,
					scale = 0.5,
					shift = {0,-0.59375},
					slice = 8,
					tint = 0,
					width = 118
				},

				{
					direction_count = 16,
					filenames = {
						"__base__/graphics/entity/biter/biter-run-mask2-01.png",
						"__base__/graphics/entity/biter/biter-run-mask2-02.png",
						"__base__/graphics/entity/biter/biter-run-mask2-03.png",
						"__base__/graphics/entity/biter/biter-run-mask2-04.png"
					},
					flags = {"mask"},
					frame_count = 16,
					height = 92,
					hr_version = {
						direction_count = 16,
						filenames = {
							"__base__/graphics/entity/biter/hr-biter-run-mask2-01.png",
							"__base__/graphics/entity/biter/hr-biter-run-mask2-02.png",
							"__base__/graphics/entity/biter/hr-biter-run-mask2-03.png",
							"__base__/graphics/entity/biter/hr-biter-run-mask2-04.png"
						},
						frame_count = 16,
						height = 184,
						line_length = 8,
						lines_per_file = 8,
						scale = 0.25,
						shift = {0,-0.59375},
						slice = 8,
						tint = 0,
						width = 232
					},
					line_length = 8,
					lines_per_file = 8,
					scale = 0.5,
					shift = {-0.03125,-0.59375},
					slice = 8,
					tint = 0,
					width = 120
				},

				{
					direction_count = 16,
					draw_as_shadow = true,
					filenames = {
						"__base__/graphics/entity/biter/biter-run-shadow-01.png",
						"__base__/graphics/entity/biter/biter-run-shadow-02.png",
						"__base__/graphics/entity/biter/biter-run-shadow-03.png",
						"__base__/graphics/entity/biter/biter-run-shadow-04.png"
					},
					frame_count = 16,
					height = 144,
					hr_version = {
						direction_count = 16,
						draw_as_shadow = true,
						filenames = {
							"__base__/graphics/entity/biter/hr-biter-run-shadow-01.png",
							"__base__/graphics/entity/biter/hr-biter-run-shadow-02.png",
							"__base__/graphics/entity/biter/hr-biter-run-shadow-03.png",
							"__base__/graphics/entity/biter/hr-biter-run-shadow-04.png"
						},
						frame_count = 16,
						height = 292,
						line_length = 8,
						lines_per_file = 8,
						scale = 0.25,
						shift = {0.125,-0.015625},
						slice = 8,
						width = 432
					},
					line_length = 8,
					lines_per_file = 8,
					scale = 0.5,
					shift = {0.125,0},
					slice = 8,
					width = 216
				}
			}
		}
	}
})
