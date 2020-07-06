technologies = data.raw.technology

for technology_name, technology in pairs(technologies) do
  if( technology.unit ~= nil and technology.unit.count ~= nil )
  then
    technology.unit.count = math.floor(technology.unit.count / 4)
  end
end

-- https://github.com/wube/factorio-data/blob/master/base/prototypes/technology/demo-military-upgrades.lua
--   no count_formula

-- https://github.com/wube/factorio-data/blob/master/base/prototypes/technology/demo-technology.lua
--   no count_formula

-- https://github.com/wube/factorio-data/blob/master/base/prototypes/technology/inserter.lua
--   no count_formula

-- https://github.com/wube/factorio-data/blob/master/base/prototypes/technology/military-upgrades.lua
technologies['physical-projectile-damage-7'].unit.count_formula = '2^(L-7)*250'
technologies['stronger-explosives-7'].unit.count_formula = '2^(L-7)*250'
technologies['refined-flammables-7'].unit.count_formula = '2^(L-7)*250'
technologies['energy-weapons-damage-7'].unit.count_formula = '2^(L-7)*250'
technologies['artillery-shell-range-1'].unit.count_formula = '2^L*250'
technologies['artillery-shell-speed-1'].unit.count_formula = '250+3^(L-1)*250'
technologies['follower-robot-count-7'].unit.count_formula = '25(L-6)+225'

-- https://github.com/wube/factorio-data/blob/master/base/prototypes/technology/technology.lua
technologies['worker-robots-speed-6'].unit.count_formula = '2^(L-6)*250'
technologies['mining-productivity-4'].unit.count_formula = '625*(L - 3)'
