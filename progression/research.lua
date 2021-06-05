--Research logic which makes it so the player spend money to research instead.
--Patent feature? Which makes some technologies insanely expensive or temporarily unavailable...
--Maybe to unlock the patented it will require the player to eliminate the competition(boss? mission?)

forceCredit = 0
researchCompleted = 0

function handleResearch(research)

	if is_research_affordable() then
    game.print(research.name .. " researched!")
		research(research)
  else
    game.print("Not enough credit!")
    cancel_research(research)
	end
end

function on_update_forceCredit(value)
  forceCredit = value
  for _, player in pairs(game.players) do
    player.gui.top.Finances.caption = "Credit: " .. tostring(value)
  end

  return value
end

function is_research_affordable()
	isAffordable = false

	local researchCost = 100 * researchCompleted;
	if forceCredit >= researchCost then
		isAffordable = true
	end

	return isAffordable
end

function research(technology)
  local researchCost = 100 * researchCompleted;
	technology.researched = true;
  researchCompleted = researchCompleted + 1
  forceCredit = on_update_forceCredit(forceCredit - researchCost)
end

function cancel_research(technology)
	researchingForce = technology.force
	researchingForce.cancel_current_research()
end

function ingameGUIOverlaySetup(player)
	--Top left corner, cash display
	player.gui.top.add({
		type="label",
		name="Finances",
		caption="Credit: " .. tostring(forceCredit);
		ignored_by_interaction = true,

	})
end
