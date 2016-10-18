data:extend(
{
  {
    type = "recipe",
    name = "bergius-process-GDIW",
    category = "oil-processing",
    enabled = false,
    energy_required = 5,
    ingredients =
    {
        {type="fluid", name="liquefied-coal", amount=8},
        {type="fluid", name="heavy-oil", amount=2}
    },
    results=
    {
        {type="fluid", name="heavy-oil", amount=3},
        {type="fluid", name="light-oil", amount=1},
        {type="fluid", name="petroleum-gas", amount=2}
    },
    icon = "__GDIW_Bergius__/graphics/GDIW_Bergius.png",
    subgroup = "fluid-recipes",
    order = "a[oil-processing]-c[bergius-process-GDIW]"
  },

  {
    type = "recipe",
    name = "bergius-process-GDIW-2",
    category = "oil-processing",
    enabled = false,
    energy_required = 5,
    ingredients =
    {
        {type="fluid", name="heavy-oil", amount=2},
        {type="fluid", name="liquefied-coal", amount=8}
    },
    results=
    {
        {type="fluid", name="petroleum-gas", amount=2},
        {type="fluid", name="light-oil", amount=1},
        {type="fluid", name="heavy-oil", amount=3}

    },
    icon = "__GDIW_Bergius__/graphics/GDIW_Bergius-2.png",
    subgroup = "fluid-recipes",
    order = "a[oil-processing]-c[bergius-process-GDIW-2]"
  },

  {
    type = "recipe",
    name = "bergius-process-GDIW-3",
    category = "oil-processing",
    enabled = false,
    energy_required = 5,
    ingredients =
    {
        {type="fluid", name="liquefied-coal", amount=8},
        {type="fluid", name="heavy-oil", amount=2}
    },
    results=
    {
        {type="fluid", name="petroleum-gas", amount=2},
        {type="fluid", name="light-oil", amount=1},
        {type="fluid", name="heavy-oil", amount=3}
    },
    icon = "__GDIW_Bergius__/graphics/GDIW_Bergius-3.png",
    subgroup = "fluid-recipes",
    order = "a[oil-processing]-c[bergius-process-GDIW-3]"
  }
})

data.raw["recipe"]["bergius-process"].icon = "__GDIW_Bergius__/graphics/bergius-process.png"

table.insert(data.raw["technology"]["Bergius-Process"].effects,{type="unlock-recipe",recipe="bergius-process-GDIW"})
table.insert(data.raw["technology"]["Bergius-Process"].effects,{type="unlock-recipe",recipe="bergius-process-GDIW-2"})
table.insert(data.raw["technology"]["Bergius-Process"].effects,{type="unlock-recipe",recipe="bergius-process-GDIW-3"})

--Thanks to BlakeMW/FreeER for this method of enabling productivity modules
for k, v in pairs(data.raw.module) do
    if v.name:find("productivity%-module") and v.limitation then
        for _, recipe in ipairs({"bergius-process-GDIW", "bergius-process-GDIW-2", "bergius-process-GDIW-3"}) do
            table.insert(v.limitation, recipe)
        end
    end
end