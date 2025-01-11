local recipes = data.raw.recipe

local function set_ingredient_amount(recipe_name, ingredient_index, amount)
  local recipe = recipes[recipe_name]
  if( recipe and recipe.ingredients )
  then
    local ingredient = recipe.ingredients[ingredient_index]
    if( ingredient )
    then
      if( ingredient.amount )
      then
        ingredient.amount = amount
      elseif( ingredient[2] )
      then
        ingredient[2] = amount
      end
    end
  end
end

local function set_result_count(recipe_name, result_count)
  local recipe = recipes[recipe_name]
  if( recipe and recipe.normal )
  then
    recipe.result_count = result_count
  end
end

-- https://github.com/wube/factorio-data/blob/master/base/prototypes/recipe.lua
set_ingredient_amount('steam-engine', 1, 6)
set_ingredient_amount('steam-engine', 3, 2)
set_ingredient_amount('iron-gear-wheel', 1, 1)
set_result_count('electronic-circuit', 2)
set_ingredient_amount('electric-mining-drill', 1, 1)
set_ingredient_amount('electric-mining-drill', 2, 3)
set_ingredient_amount('electric-mining-drill', 3, 5)
set_ingredient_amount('burner-mining-drill', 1, 1)
set_ingredient_amount('burner-mining-drill', 3, 1)
set_result_count('pipe', 2)
set_ingredient_amount('submachine-gun', 1, 5)
set_ingredient_amount('submachine-gun', 2, 1)
set_ingredient_amount('submachine-gun', 3, 3)
set_ingredient_amount('assembling-machine-2', 1, 1)
set_ingredient_amount('assembling-machine-2', 2, 1)
set_ingredient_amount('assembling-machine-2', 3, 3)
set_ingredient_amount('steel-plate', 1, 3)
set_result_count('steel-plate', 3)
set_ingredient_amount('cannon-shell', 1, 1)
set_ingredient_amount('cannon-shell', 2, 1)
set_ingredient_amount('explosive-cannon-shell', 1, 1)
set_ingredient_amount('explosive-cannon-shell', 2, 1)
set_ingredient_amount('express-transport-belt', 1, 5)
set_ingredient_amount('tank', 1, 16)
set_ingredient_amount('tank', 2, 25)
set_ingredient_amount('tank', 3, 8)
set_ingredient_amount('tank', 4, 5)
set_ingredient_amount('advanced-circuit', 2, 1)
set_ingredient_amount('advanced-circuit', 3, 2)
set_ingredient_amount('processing-unit', 3, 3)
set_result_count('explosives', 4)
set_ingredient_amount('battery', 1, 10)
set_ingredient_amount('low-density-structure', 3, 1)
