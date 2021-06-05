require "dynamism/explosive"
require "progression/research"



script.on_init(function()

end)


script.on_load(function()

end)

script.on_nth_tick(999999999, function(event)
	ingameGUIOverlaySetup(game.players[1])

end)


script.on_event(defines.events.on_tick, function(event)

end)


script.on_event(defines.events.on_research_started, function(event)
	handleResearch(event.research)

end)

script.on_event(defines.events.on_entity_died, function(event)
  handleExplosiveEntity(event.entity)
end)
