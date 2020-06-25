urnsoris_assassin = Creature:new {
--	customName = "urnsoris_assassin",
  objectName = "@mob/creature_names:urnsoris_assassin",  
--	randomNameType = NAME_GENERIC,
--	randomNameTag = true,
	socialGroup = "townsperson",
--	faction = "townsperson",
	level = 67,
	chanceHit = 1.07,
	damageMin = 570,
	damageMax = 770,
	baseXp = 9097,
	baseHAM = 21700,
	baseHAMmax = 25400,
	armor = 1,
	resists = {60,60,60,15,60,60,60,60,-1},
	meatType = "meat_insect",
	meatAmount = 132,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/urnsoris_assassin.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
    {"strongpoison",""},
		{"blindattack",""},
		{"intimidationattack",""},
		{"stunattack",""},
		{"posturedownattack",""},
	}
}

CreatureTemplates:addCreatureTemplate(urnsoris_assassin, "urnsoris_assassin")
