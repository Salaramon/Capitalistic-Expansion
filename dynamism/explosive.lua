

function distanceBetween(pos1, pos2)
  return math.abs(math.sqrt(((pos2.x-pos1.x)^2)+((pos2.y-pos1.y)^2)))
end

function math.round(value)
  return (value + 0.5 - (value + 0.5) % 1)
end


function handleExplosiveEntity(entity)
  make_explosion(entity.position,calculate_explosion_energy(entity))
end

--The explosion damage is calcualted as a the input energy over the spherical volume distance between explosion center and target
function make_explosion(position, energy)

  if energy > 1 then
    affected_radius = ((3.0*energy)/(4.0*math.pi))^(1/3)
    local affected_targets = game.surfaces.nauvis.find_entities_filtered{position=position, radius=affected_radius}
    if #affected_targets ~= 0 then
      for i = 1, #affected_targets do
        if affected_targets[i].valid and affected_targets[i].is_entity_with_health then
          affected_targets[i].damage(energy/((1+distanceBetween(affected_targets[i].position, position)^3)*math.pi*(3/4)), "neutral", "explosion")
        end
      end
    end


    local animationSpeed = 100/(affected_radius+1)
    if animationSpeed < 1/5 then
      animationSpeed = 1/5
    end
    local animationLife = 100/animationSpeed
    local animationOffset = -((game.tick * animationSpeed) % 100)
    local animationID = rendering.draw_animation{animation="explosionCloud", x_scale=affected_radius/100, y_scale=affected_radius/100, time_to_live=animationLife, animation_speed=animationSpeed, target={position.x,position.y }, animation_offset = animationOffset, surface="nauvis"}
  end
end

--create a thing that gets every inventory https://lua-api.factorio.com/latest/LuaControl.html#LuaControl.get_inventory
function calculate_explosion_energy(entity)
  local entityAllBelongingItems = {}
  local explosionEnergy = 0
  if Explosive_Item_List[entity.name] ~= nil then
    explosionEnergy = Explosive_Item_List[entity.name].energy
  end
  if explosionEnergy == nil then
    explosionEnergy = 0
  end

  for k1,v1 in pairs(defines.inventory) do
    if entity.get_inventory(v1) ~= nil then
      local entityInventory = entity.get_inventory(v1).get_contents()
      for k2,v2 in pairs(entityInventory) do
        if Explosive_Item_List[k2] ~= nil then
          explosionEnergy = explosionEnergy + (Explosive_Item_List[k2].energy * v2)
        end
      end
    end
  end

  return explosionEnergy
end

Explosive_Item_List = {}
Explosive_Item_List["accumulator"] = {energy = 250}
Explosive_Item_List["battery"] = {energy = 50}
Explosive_Item_List["battery-equipment"] = {energy = 250}
Explosive_Item_List["battery-mk2-equipment"] = {energy = 505}
Explosive_Item_List["construction-robot"] = {energy = 100}
Explosive_Item_List["discharge-defense-equipment"] = {energy = 505}
Explosive_Item_List["electric-energy-interface"] = {energy = 250}
Explosive_Item_List["energy-shield-mk2-equipment"] = {energy = 25}
Explosive_Item_List["exoskeleton-equipment"] = {energy = 50}
Explosive_Item_List["explosives"] = {energy = 3000}
Explosive_Item_List["flying-robot-frame"] = {energy = 100}
Explosive_Item_List["fusion-reactor-equipment"] = {energy = 1000}
Explosive_Item_List["land-mine"] = {energy = 1500}
Explosive_Item_List["laser-turret"] = {energy = 600}
Explosive_Item_List["logistic-robot"] = {energy = 100}
Explosive_Item_List["nuclear-fuel"] = {energy = 1210000}
Explosive_Item_List["personal-laser-defense-equipment"] = {energy = 3100}
Explosive_Item_List["personal-roboport-equipment"] = {energy = 2250}
Explosive_Item_List["personal-roboport-mk2-equipment"] = {energy = 11750}
Explosive_Item_List["petroleum-gas-barrel"] = {energy = 2680}
Explosive_Item_List["processing-unit"] = {energy = 5}
Explosive_Item_List["rocket-fuel"] = {energy = 100000}
Explosive_Item_List["rocket-part"] = {energy = 1000050}
Explosive_Item_List["rocket-silo"] = {energy = 1000}
Explosive_Item_List["satellite"] = {energy = 5025500}
Explosive_Item_List["solid-fuel"] = {energy = 12000}
Explosive_Item_List["sulfur"] = {energy = 800}
Explosive_Item_List["sulfuric-acid-barrel"] = {energy = 50}
Explosive_Item_List["uranium-235"] = {energy = 27000000000, citical_mass = 52}
Explosive_Item_List["uranium-fuel-cell"] = {energy = 2700000000, critical_mass = 988}
