dressed_meatlump_hideout_food_supply_tech = Creature:new {
	customName = "dressed_meatlump_hideout_food_supply_tech",
	--objectName = "",
	--randomNameType = NAME_GENERIC_TAG,
	socialGroup = "townsperson",
	faction = "",
	level = 100,
	chanceHit = 1,
	damageMin = 645,
	damageMax = 1000,
	baseXp = 9429,
	baseHAM = 24000,
	baseHAMmax = 30000,
	armor = 0,
	resists = {0,0,0,0,0,0,0,0,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = NONE,
	creatureBitmask = NONE,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_meatlump_hideout_food_supply_tech.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(dressed_meatlump_hideout_food_supply_tech, "dressed_meatlump_hideout_food_supply_tech")

