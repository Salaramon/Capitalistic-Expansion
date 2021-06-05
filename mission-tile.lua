data:extend({
	{
		name = "mission-tile",
		type = "tile",
		collision_mask = {"ground-tile"},
		layer = 66,
		map_color = {1,0,0,1},
		pollution_absorption_per_second = 0,
		variants = {
			main =
      {
        {
          picture = "__base__/graphics/terrain/concrete/concrete-dummy.png",
          count = 1,
          size = 1
        },
        {
          picture = "__base__/graphics/terrain/concrete/concrete-dummy.png",
          count = 1,
          size = 2,
          probability = 0.39
        },
        {
          picture = "__base__/graphics/terrain/concrete/concrete-dummy.png",
          count = 1,
          size = 4,
          probability = 1
        }
      },

      inner_corner_mask =
      {
        picture = "__base__/graphics/terrain/concrete/hazard-concrete-inner-corner-mask.png",
        count = 1,
        hr_version =
        {
          picture = "__base__/graphics/terrain/concrete/hr-hazard-concrete-inner-corner-mask.png",
          count = 1,
          scale = 0.5
        }
      },
      outer_corner_mask =
      {
        picture = "__base__/graphics/terrain/concrete/hazard-concrete-outer-corner-mask.png",
        count = 1,
        hr_version =
        {
          picture = "__base__/graphics/terrain/concrete/hr-hazard-concrete-outer-corner-mask.png",
          count = 1,
          scale = 0.5
        }
      },

      side_mask =
      {
        picture = "__base__/graphics/terrain/concrete/hazard-concrete-side-mask.png",
        count = 1,
        hr_version =
        {
          picture = "__base__/graphics/terrain/concrete/hr-hazard-concrete-side-mask.png",
          count = 1,
          scale = 0.5
        }
      },

      u_transition_mask =
      {
        picture = "__base__/graphics/terrain/concrete/hazard-concrete-u-mask.png",
        count = 1,
        hr_version =
        {
          picture = "__base__/graphics/terrain/concrete/hr-hazard-concrete-u-mask.png",
          count = 1,
          scale = 0.5
        }
      },

      o_transition_mask =
      {
        picture = "__base__/graphics/terrain/concrete/hazard-concrete-o-mask.png",
        count = 1,
        hr_version =
        {
          picture = "__base__/graphics/terrain/concrete/hr-hazard-concrete-o-mask.png",
          count = 1,
          scale = 0.5
        }
      },
		},

      material_background =
      {
        picture = "graphics/tile/mission-concrete-left.png",
        count = 8,
        hr_version =
        {
          picture = "graphics/tile/hr-mission-concrete-left.png",
          count = 8,
          scale = 0.5
        }
      }
		}
})
