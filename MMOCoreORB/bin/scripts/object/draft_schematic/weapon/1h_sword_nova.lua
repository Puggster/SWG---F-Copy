object_draft_schematic_weapon_1h_sword_nova = object_draft_schematic_weapon_shared_1h_sword_nova:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Nova Edge Sword",

   craftingToolTab = 1, -- (See DraftSchematicObjectTemplate.h)
   complexity = 20, 
   size = 4, 

   xpType = "crafting_weapons_general", 
   xp = 90, 

   assemblySkill = "weapon_assembly", 
   experimentingSkill = "weapon_experimentation", 
   customizationSkill = "weapon_customization", 
   factoryCrateSize = 0,

   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n"},
   ingredientTitleNames = {"sword_core_jacket", "cutting_edge", "grip", "reinforcement_core", "reinforcement_core"},
   ingredientSlotType = {0, 0, 0, 1, 1},
   resourceTypes = {"iron_kammris", "metal", "aluminum_linksteel", "object/tangible/component/weapon/shared_reinforcement_core.iff", "object/tangible/component/weapon/shared_reinforcement_core.iff"},
   resourceQuantities = {60, 12, 12, 1, 1},
   contribution = {100, 100, 100, 100, 100},


   targetTemplate = "object/weapon/melee/sword/sword_rebel.iff",

   additionalTemplates = {
             }

}
ObjectTemplates:addTemplate(object_draft_schematic_weapon_1h_sword_nova, "object/draft_schematic/weapon/1h_sword_nova.iff")
