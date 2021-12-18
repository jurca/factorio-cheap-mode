local technologies = data.raw.technology

local cost_factor =  0.25

for _,technology in pairs(technologies) do
  if( technology.unit and technology.unit.count ~= nil )
  then
    technology.unit.count = math.max(math.floor(technology.unit.count * cost_factor), 1)
  end
end

-- https://github.com/wube/factorio-data/blob/master/base/prototypes/technology.lua
technologies['physical-projectile-damage-7'].unit.count_formula = '2^(L-7)*250'
technologies['stronger-explosives-7'].unit.count_formula = '2^(L-7)*250'
technologies['refined-flammables-7'].unit.count_formula = '2^(L-7)*250'
technologies['energy-weapons-damage-7'].unit.count_formula = '2^(L-7)*250'
technologies['artillery-shell-range-1'].unit.count_formula = '2^L*250'
technologies['artillery-shell-speed-1'].unit.count_formula = '250+3^(L-1)*250'
technologies['follower-robot-count-7'].unit.count_formula = '25(L-6)+225'
technologies['worker-robots-speed-6'].unit.count_formula = '2^(L-6)*250'
technologies['mining-productivity-4'].unit.count_formula = '625*(L - 3)'
