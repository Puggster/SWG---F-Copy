glowingjedi = Creature:new {
	customName = "(Jedi Master)",
	faction = "",
	level = 99,
	chanceHit = 1,
	damageMin = 645,
	damageMax = 1000,
	baseXp = 9336,
	baseHAM = 24500,
	baseHAMmax = 30000,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = NONE,
	creatureBitmask = PACK,
	optionsBitmask = INVULNERABLE + CONVERSABLE,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_fs_trainer.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "jediTrainerConvoTemplate",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(glowingjedi, "glowingjedi")
