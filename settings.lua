data:extend({
  {
    type = "bool-setting",
    name = "CheapMode-override-infinite-research",
    setting_type = "startup",
    default_value = true
  },
  {
    type = "double-setting",
    name = "CheapMode-research-cost-factor",
    setting_type = "startup",
    default_value = 0.25,
    minimum_value = 0.0625,
    maximum_value = 1
  }
})
