local technologies = data.raw.technology

local cost_factor =  settings.startup["CheapMode-research-cost-factor"].value

local function set_technology_formula (name, formula)
  local technology = technologies[name]
  if( technology and technology.unit and technology.unit.count_formula )
  then
    technology.unit.count_formula = formula
  end
end

for _,technology in pairs(technologies) do
  if( technology.unit and technology.unit.count ~= nil )
  then
    technology.unit.count = math.max(math.floor(technology.unit.count * cost_factor), 1)
  end
end

if( settings.startup["CheapMode-override-infinite-research"].value )
then
  -- https://github.com/wube/factorio-data/blob/master/base/prototypes/technology.lua
  set_technology_formula('physical-projectile-damage-7', '2^(L-7)*250')
  set_technology_formula('stronger-explosives-7', '2^(L-7)*250')
  set_technology_formula('refined-flammables-7', '2^(L-7)*250')
  set_technology_formula('energy-weapons-damage-7', '2^(L-7)*250')
  set_technology_formula('artillery-shell-range-1', '2^L*250')
  set_technology_formula('artillery-shell-speed-1', '250+3^(L-1)*250')
  set_technology_formula('follower-robot-count-7', '25(L-6)+225')
  set_technology_formula('worker-robots-speed-6', '2^(L-6)*250')
  set_technology_formula('mining-productivity-4', '625*(L - 3)')
end
