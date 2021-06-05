--Overrides health of enemy entities.
--Maybe players and walls can be considered as well.
--Custom resistances?

function render_text_on_entity(text, entity, offset)

	return rendering.draw_text({
		text = text,
		surface = "nauvis",
		target = entity,
		target_offset = offset,
		color = {r = 1, g = 1, b = 1},
		scale = 2.0
	})
