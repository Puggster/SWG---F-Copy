old_man = Creature:new {
	objectName = "@mob/creature_names:fs_intro_oldman",
	socialGroup = "fs_villager",
	faction = "fs_villager",
	level = 12,
	chanceHit = 0.29,
	damageMin = 130,
	damageMax = 140,
	baseXp = 430,
	baseHAM = 1170,
	baseHAMmax = 1430,
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
	pvpBitmask = ATTACKABLE,
	creatureBitmask = NONE,
	optionsBitmask = INVULNERABLE + CONVERSABLE + INTERESTING,
	diet = HERBIVORE,

	templates = {"object/mobile/som/obi_wan_ghost.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "oldManIntroConvoTemplate",
	attacks = brawlermid
}

CreatureTemplates:addCreatureTemplate(old_man, "old_man")
