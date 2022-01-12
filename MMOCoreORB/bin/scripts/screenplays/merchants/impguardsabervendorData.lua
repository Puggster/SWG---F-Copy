impguardsaberVendorLogic = VendorLogic:new {
	scriptName = "impguardsaberVendorLogic",
	currencies = {
	--For Tokens: Displayed Name, full template string (without shared_), if applicable: ScreenPlayData string, ScreenPlayData key
		{currency = "token", name = "Community Token", template = "object/tangible/loot/token/event_token.iff", ScreenPlayDataString = "vendorToken", ScreenPlayDataKey = "event_token"},
	},
	--Displayed Name, full template string (without shared_), cost in {}, use the same structure as currencies
	merchandise = {
	{name = "", template = "object/tangible/wearables/armor/armor_imperial_guard_saber/armor_imperial_guard_saber_bicep_l.iff", cost = {100,}},
	{name = "", template = "object/tangible/wearables/armor/armor_imperial_guard_shadow/armor_imperial_guard_saber_bicep_r.iff", cost = {100,}},
	{name = "", template = "object/tangible/wearables/armor/armor_imperial_guard_shadow/armor_imperial_guard_saber_boots.iff", cost = {100,}},
	{name = "", template = "object/tangible/wearables/armor/armor_imperial_guard_shadow/armor_imperial_guard_saber_bracer_l.iff", cost = {100,}},
	{name = "", template = "object/tangible/wearables/armor/armor_imperial_guard_shadow/armor_imperial_guard_saber_bracer_r.iff", cost = {100,}},
	{name = "", template = "object/tangible/wearables/armor/armor_imperial_guard_shadow/armor_imperial_guard_saber_chest_plate.iff", cost = {100,}},
	{name = "", template = "object/tangible/wearables/armor/armor_imperial_guard_shadow/armor_imperial_guard_saber_gloves.iff", cost = {100,}},
	{name = "", template = "object/tangible/wearables/armor/armor_imperial_guard_shadow/armor_imperial_guard_saber_helmet.iff", cost = {100,}},
	{name = "", template = "object/tangible/wearables/armor/armor_imperial_guard_shadow/armor_imperial_guard_saber_pants.iff", cost = {100,}},
	},
}

registerScreenPlay("imguardsaberVendorLogic", false)
