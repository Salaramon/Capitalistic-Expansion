
local explosionCloud = table.deepcopy(data.raw["explosion"]["nuke-explosion"].animations.hr_version)
explosionCloud.name = "explosionCloud"
explosionCloud.type = "animation"
explosionCloud.dice_y = 0
explosionCloud.dice_x = 0
explosionCloud.dice = 0
explosionCloud.priority = "extra-high"
explosionCloud.animation_speed = 1.0

data:extend{explosionCloud}
