--Logic which makes the player only able to build on player placed tiles.

ownedLandTileList = {"refined-concrete"}
disallowedEntityBuildOnOwnedLandExceptionList = {"rail-chain-signal", "rail-signal", "rail", "straight-rail", "curved-rail", "train-stop"}


function is_entity_on_owned_land(entity)
	tileFound = false;

	entityPosition = entity.position
	entitySurface = entity.surface
	entityName = entity.name

	if math.floor(entityPosition) == entitySurface.get_tile(entityPosition) then

		for i = 1, #disallowedEntityBuildOnOwnedLandExceptionList do
			if entityName ~= disallowedEntityBuildOnOwnedLandExceptionList[i] then
				tileFound = true
			end
		end

	end

	return tileFound

end
