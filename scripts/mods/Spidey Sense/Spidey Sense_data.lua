local mod = get_mod("Spidey Sense")
local options = {
	name = mod:localize("mod_name"),
	description = mod:localize("mod_description"),
	is_togglable = true,
  options = {
    widgets = {
        
    }    
  }
}
local color_options = {}
for i, color_name in ipairs(Color.list) do
  table.insert(color_options, {
    text = color_name,
    value = color_name
  })
end
table.sort(color_options, function(a, b)
  return a.text < b.text
end)
  
local function get_color_options()
  return table.clone(color_options)
end
local function create_option_set(typeName, defaultColour1, defaultColour2)
  return {
				setting_id = typeName .."_colour",
				type = "group",
				sub_widgets = {
          {
            setting_id = typeName .."_active",
            type = "checkbox",
            default_value = true,
          },
          {
          setting_id = typeName .."_radius",
          type = "numeric",
					default_value = 50,
					range = {-125, 200},
					decimals_number = 0
        },
         {
              setting_id = typeName .. "_active_range",
              type = "checkbox",
              tooltip = "active_range_tooltip",
              default_value = false
            },            
            {
              setting_id = typeName .. "_nurgle_blessed",
              type = "checkbox",
              tooltip = "active_range_tooltip",
              default_value = false
            },            
          {
          setting_id = typeName .."_distance",
          type = "numeric",
					default_value = 40,
					range = {0, 40},
					decimals_number = 0
        },    
                  {
          setting_id = typeName .."_arrow_distance",
          type = "numeric",
					default_value = 0,
					range = {0, 40},
					decimals_number = 0
        },  
          {
            setting_id = typeName .."_only_behind",
            type = "checkbox",
            default_value = false,
          },
          {
            setting_id = typeName .."_front_opacity",
            type = "numeric",
            default_value = 255,
            range = {0, 255},
            decimals_number = 0
          },
          {
            setting_id = typeName .."_front_colour",
            type = "dropdown",
            default_value = defaultColour1,
            options = get_color_options()
          },
          {
            setting_id = typeName .."_back_opacity",
            type = "numeric",
            default_value = 255,
            range = {0, 255},
            decimals_number = 0
          },
          {
            setting_id = typeName .."_back_colour",
            type = "dropdown",
            default_value = defaultColour2,
            options = get_color_options()
          },
        }
      }          
end



table.insert(options.options.widgets, create_option_set("burster", "burly_wood", "citadel_averland_sunset"))
table.insert(options.options.widgets, create_option_set("barrel", "cheeseburger", "citadel_balthasar_gold"))
table.insert(options.options.widgets, create_option_set("beast_of_nurgle", "citadel_dorn_yellow", "citadel_balthasar_gold"))
table.insert(options.options.widgets, create_option_set("crusher", "sienna", "ui_red_medium"))
table.insert(options.options.widgets, create_option_set("chaos_spawn", "cheeseburger", "ui_red_medium"))
table.insert(options.options.widgets, create_option_set("daemonhost", "teal", "blue_violet"))
table.insert(options.options.widgets, create_option_set("flamer", "online_green", "medium_violet_red"))
table.insert(options.options.widgets, create_option_set("grenadier", "sandy_brown", "ui_interaction_pickup"))
table.insert(options.options.widgets, create_option_set("hound", "chart_reuse", "cadet_blue"))
table.insert(options.options.widgets, create_option_set("mauler", "turquoise", "ui_blue_light"))
table.insert(options.options.widgets, create_option_set("mutant", "ui_green_light", "spring_green"))
table.insert(options.options.widgets, create_option_set("plague_ogryn", "powder_blue", "citadel_bieltan_green"))
table.insert(options.options.widgets, create_option_set("rager", "medium_spring_green", "midnight_blue"))
table.insert(options.options.widgets, create_option_set("sniper", "powder_blue", "ui_ability_purple"))
table.insert(options.options.widgets, create_option_set("trapper", "ui_hud_overcharge_medium", "ui_hud_overcharge_low"))
table.insert(options.options.widgets, create_option_set("toxbomber", "chart_reuse", "citadel_bieltan_green"))
table.insert(options.options.widgets, 
      {
				setting_id = "backstab_colour",
				type = "group",
				sub_widgets = {
          {
            setting_id = "backstab_active",
            type = "checkbox",
            default_value = true,
          },
          {
            setting_id = "backstab_radius",
            type = "numeric",
            default_value = 50,
            range = {0, 200},
            decimals_number = 0
          },
          {
          setting_id = "backstab_distance",
          type = "numeric",
					default_value = 40,
					range = {0, 40},
					decimals_number = 0
        },              
          {
            setting_id = "backstab_front_opacity",
            type = "numeric",
            default_value = 255,
            range = {0, 255},
            decimals_number = 0
          },
          {
            setting_id = "backstab_front_colour",
            type = "dropdown",
            default_value = "ui_terminal",
            options = get_color_options()
          },
          {
            setting_id = "backstab_back_opacity",
            type = "numeric",
            default_value = 255,
            range = {0, 255},
            decimals_number = 0
          },
          {
            setting_id = "backstab_back_colour",
            type = "dropdown",
            default_value = "ui_terminal",
            options = get_color_options()
          },
        },      
      })  

return options
